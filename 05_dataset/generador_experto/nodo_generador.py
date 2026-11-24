#!/usr/bin/env python3
"""Nodo de ROS 2 que conduce con el experto y graba el dataset (corre en el contenedor).

    PYTHONPATH=/ds python3 -m generador_experto.nodo_generador --circuito montmelo --sentido 1 \
        --modo {limpio,ruido,reinicio} [--vueltas N] [--duracion S] [--semilla K] [--destino /datos]

Etiqueta = orden limpia del experto en la pose del sello de tiempo de la imagen. El ruido y los
reinicios se aplican solo al coche, nunca a la etiqueta.
"""
import argparse
import math
import subprocess
import sys
import time
from pathlib import Path

import numpy as np
import rclpy
from cv_bridge import CvBridge
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from rclpy.node import Node
from rclpy.qos import QoSProfile, ReliabilityPolicy
from sensor_msgs.msg import Image

from generador_experto.circuito import Circuito
from generador_experto.experto import Experto
from generador_experto.grabador import Grabador
from generador_experto.perturbaciones import RuidoOU, aplicar_ruido, muestrear_reinicio
from generador_experto.politica import elegir_pesos
from generador_experto.sincronizacion import BufferOdom, DetectorAtasco

DATOS_CIRCUITOS = Path(__file__).resolve().parent / "datos" / "circuitos"
TRAMO_S = (10.0, 20.0)     # s de simulación entre reinicios
Z_COCHE = 0.0015
MARCHA_ATRAS_V, MARCHA_ATRAS_S = 1.5, 1.5   # recuperación tras un atasco (limpio/ruido)


def segundos(stamp) -> float:
    return stamp.sec + stamp.nanosec * 1e-9


def yaw_de(q) -> float:
    return math.atan2(2 * (q.w * q.z + q.x * q.y), 1 - 2 * (q.y * q.y + q.z * q.z))


class Generador(Node):
    def __init__(self, a):
        super().__init__("generador_dataset")
        self.a = a
        pesos = elegir_pesos(a.pesos, a.semilla)               # DAgger: si hay pesos, conduce la red
        if pesos:
            from mlp_experto.inferencia import MLPNumpy
            self.red = MLPNumpy(pesos)
            self.tam_red = tuple(int(v) for v in a.resolucion_red.split("x"))
        else:
            self.red = None
        self.curvas = [int(c) for c in a.curvas.split(",") if c] or None     # reinicios dirigidos a esas curvas
        self.circuito = Circuito.cargar(DATOS_CIRCUITOS / f"{a.circuito}.npz")
        self.experto = Experto(self.circuito, sentido=a.sentido)
        self.rng = np.random.default_rng(a.semilla)
        self.ruido = RuidoOU(seed=a.semilla) if a.modo == "ruido" else None
        resoluciones = tuple(tuple(int(v) for v in r.split("x")) for r in a.resoluciones.split(","))
        self.grab = Grabador(Path(a.destino), a.circuito, a.sentido, a.modo, resoluciones=resoluciones)
        self.buf = BufferOdom()
        self.atasco = DetectorAtasco(t_max=1.0)
        self.atascos = 0
        self.hasta_atras = None    # sello hasta el que se da marcha atrás tras un atasco (limpio/ruido)
        self.puente = CvBridge()
        self.t0 = None
        self.t_reset = -1e9
        self.proximo_reset = None
        self.recorrido, self.idx_prev = 0.0, None
        self.fin = False
        self.pendiente = None      # comprobación del último reinicio
        self.curva_actual, self.segmento = -1, 0
        self.reinicios, self.reinicios_mal = 0, 0
        self.vistos, self.huecos, self.t_prev_img, self.cb_max = 0, 0, None, 0.0   # diagnóstico
        self.pub = self.create_publisher(Twist, "/cmd_vel", 10)
        self.create_subscription(Odometry, "/odom", self.on_odom, 10)
        self.create_subscription(Image, "/cam_f1_left/image_raw", self.on_imagen,
                                 QoSProfile(reliability=ReliabilityPolicy.BEST_EFFORT, depth=60))
        self.get_logger().info(f"{a.circuito} sentido {a.sentido} modo {a.modo}" + (" · conduce la RED" if self.red is not None else "") + f" -> {self.grab.carpeta}")

    def on_odom(self, m):
        p = m.pose.pose
        self.buf.anadir(segundos(m.header.stamp), p.position.x, p.position.y, yaw_de(p.orientation), m.twist.twist.linear.x)

    def publicar(self, v: float, w: float) -> None:
        c = Twist()
        c.linear.x, c.angular.z = float(v), float(w)
        self.pub.publish(c)

    def reiniciar(self, t: float) -> None:
        r = muestrear_reinicio(self.experto, self.rng, en_curva=True, curvas=self.curvas)
        req = (f'name: "f1" position: {{x: {r.x:.4f}, y: {r.y:.4f}, z: {Z_COCHE}}} '
               f'orientation: {{x: 0, y: 0, z: {math.sin(r.yaw / 2):.6f}, w: {math.cos(r.yaw / 2):.6f}}}')
        out = subprocess.run(["gz", "service", "-s", "/world/default/set_pose", "--reqtype", "gz.msgs.Pose",
                              "--reptype", "gz.msgs.Boolean", "--timeout", "2000", "--req", req],
                             capture_output=True, text=True, timeout=10)
        if "true" not in out.stdout:
            self.get_logger().warning(f"set_pose falló: {out.stdout.strip()} {out.stderr.strip()}")
        self.publicar(r.v0, 0.0)                 # fija la velocidad: el reinicio no deja velocidad residual
        self.experto.reiniciar()
        self.idx_prev = None
        self.atasco.olvidar()
        self.t_reset = t
        self.pendiente = (r.x, r.y, r.v0)
        self.curva_actual, self.segmento = r.indice_curva, self.segmento + 1
        self.reinicios += 1
        self.proximo_reset = t + self.rng.uniform(*TRAMO_S)

    def on_imagen(self, msg):
        if self.fin:
            return
        inicio = time.perf_counter()
        try:
            self._procesar(msg)
        finally:
            self.cb_max = max(self.cb_max, time.perf_counter() - inicio)

    def _procesar(self, msg):
        t = segundos(msg.header.stamp)
        self.vistos += 1
        if self.t_prev_img is not None and t - self.t_prev_img > 0.11:
            self.huecos += 1
        self.t_prev_img = t
        enc = self.buf.cercana(t)
        if enc is None:
            return
        reg, desfase = enc
        if self.t0 is None:
            self.t0 = t
            self.proximo_reset = t + self.rng.uniform(*TRAMO_S)
        if self.hasta_atras is not None:             # recuperación: marcha atrás sin grabar
            if t < self.hasta_atras:
                self.publicar(-MARCHA_ATRAS_V, 0.0)
                return
            self.hasta_atras = None
            self.atasco.olvidar()
            self.experto.reiniciar()
            self.idx_prev = None
        if self.a.modo == "reinicio" and t >= self.proximo_reset:
            self.reiniciar(t)
            return
        if self.pendiente is not None and t - self.t_reset >= 0.5:
            px, py, v0 = self.pendiente
            dist = math.hypot(reg.x - px, reg.y - py)
            if dist > 3.0 + 2.0 * v0 * 0.5:                    # margen: 0,5 s de avance a v0
                self.reinicios_mal += 1
                self.get_logger().warning(f"reinicio: la odometría está a {dist:.1f} m de la pose pedida")
            self.get_logger().info(f"reinicio {self.reinicios}: v0={v0:.1f} v_real(0,5 s)={reg.v:.1f} dist a la pose pedida={dist:.1f} m")
            self.pendiente = None
        o = self.experto.orden(reg.x, reg.y, reg.yaw)
        if self.idx_prev is not None:
            d = (o.idx - self.idx_prev) % self.experto.n
            self.recorrido += d if d < self.experto.n // 2 else 0
        self.idx_prev = o.idx
        if self.atasco.actualizar(t, reg.v, o.v):
            self.atascos += 1
            self.atasco.olvidar()
            self.get_logger().warning(f"atasco en ({reg.x:.1f}, {reg.y:.1f}) t={t - self.t0:.0f}s")
            if self.a.modo == "reinicio":
                self.reiniciar(t)           # el segmento se da por terminado
                return
            self.hasta_atras = t + MARCHA_ATRAS_S
            return
        if (self.a.modo != "reinicio" and self.a.vueltas and self.recorrido / self.experto.n >= self.a.vueltas) or \
           (self.a.duracion and t - self.t0 >= self.a.duracion):
            self.terminar()
            return
        v_cmd, w_cmd = o.v, o.w
        if self.ruido is not None:
            v_cmd, w_cmd = aplicar_ruido(o.v, o.w, o.cte, self.ruido)
        bgr = self.puente.imgmsg_to_cv2(msg, "bgr8")
        if self.red is not None:                               # DAgger: la orden que se ejecuta es la de la red
            from mlp_experto.inferencia import decodificar, vector_desde_bgr
            v_cmd, w_cmd = decodificar(self.red(vector_desde_bgr(bgr, self.tam_red)))
        self.publicar(v_cmd, w_cmd)
        self.grab.escribir(bgr, o.v, o.w, dict(
            v_real=reg.v, v_ord=o.v, cte=o.cte, t_desde_reinicio=t - self.t_reset, desfase_odom=desfase,
            media_pixel=float(bgr.mean()), x=reg.x, y=reg.y, kappa=o.kappa,
            curva=self.curva_actual, segmento=self.segmento))
        if self.grab.n and self.grab.n % 500 == 0:
            self.get_logger().info(f"{self.grab.n} filas  vuelta={self.recorrido / self.experto.n:.2f}  descartes={self.grab.descartes}")

    def terminar(self) -> None:
        self.fin = True
        self.publicar(0.0, 0.0)
        self.grab.cerrar()
        self.get_logger().info(f"RESUMEN: {self.grab.n} filas, descartes {self.grab.descartes}, imágenes vistas {self.vistos}, "
                               f"atascos {self.atascos}, reinicios {self.reinicios} (mal {self.reinicios_mal}), huecos>0,11s {self.huecos}, callback máx {self.cb_max * 1000:.0f} ms, carpeta {self.grab.carpeta}")


def main(argv=None):
    p = argparse.ArgumentParser()
    p.add_argument("--circuito", required=True)
    p.add_argument("--sentido", type=int, choices=(1, -1), default=1)
    p.add_argument("--modo", choices=("limpio", "ruido", "reinicio"), default="limpio")
    p.add_argument("--vueltas", type=float, default=1.0, help="limpio/ruido; 0 = sin límite")
    p.add_argument("--duracion", type=float, default=0.0, help="s de simulación; 0 = sin límite (para el modo reinicio)")
    p.add_argument("--semilla", type=int, default=0)
    p.add_argument("--destino", default="/datos")
    p.add_argument("--resoluciones", default="16x12", help="resoluciones de imagen a guardar, p. ej. 16x12,32x24,64x48")
    p.add_argument("--pesos", default="", help="DAgger: rutas de pesos .npz (separadas por comas); conduce la red y el experto solo etiqueta")
    p.add_argument("--resolucion-red", default="16x12", help="DAgger: resolución de entrada de la red")
    p.add_argument("--curvas", default="", help="modo reinicio: índices de entrada de curva a visitar, separados por comas")
    a = p.parse_args(sys.argv[1:] if argv is None else argv)
    rclpy.init()
    n = Generador(a)
    try:
        while rclpy.ok() and not n.fin:
            rclpy.spin_once(n, timeout_sec=0.5)
    except KeyboardInterrupt:
        pass
    finally:
        try:
            n.publicar(0.0, 0.0)
            if not n.fin:
                n.grab.cerrar()
        except Exception:
            pass
        rclpy.shutdown()


if __name__ == "__main__":
    main()
