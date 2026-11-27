#!/usr/bin/env python3
"""Nodo de ROS 2 (en el contenedor): conduce con la MLP (NumPy) y mide si completa el circuito.

    PYTHONPATH=/ds:/ent python3 -m mlp_experto.lazo_cerrado --pesos /datos/modelos/X/pesos.npz \
        --circuito nurburgring --sentido 1 --salida /datos/lazo_cerrado/X_nurburgring_s+1
Escribe <salida>.json (métricas) y <salida>.csv (trayectoria).
"""
import argparse
import csv
import json
import math
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
from mlp_experto.inferencia import Conjunto, FiltroEMA, MLPNumpy, cargar_red, decodificar, limitar_velocidad, vector_desde_bgr

DATOS_CIRCUITOS = Path("/ds/generador_experto/datos/circuitos")
MAX_SIN_RESPUESTA = 60   # respuestas perdidas seguidas (~3 s) antes de abortar la prueba
HZ_CAMARA = 20.0     # Hz de la cámara simulada
CTE_FUERA = 1.4      # m: más desviado que esto, el coche está prácticamente contra la pared


def segundos(s):
    return s.sec + s.nanosec * 1e-9


class Lazo(Node):
    def __init__(self, a):
        super().__init__("lazo_cerrado_mlp")
        self.a = a
        rutas = [r for r in a.pesos.split(",") if r]
        self.red = (Conjunto(rutas) if len(rutas) > 1 else cargar_red(rutas[0], tuple(int(v) for v in a.resolucion.split('x')))) if rutas else None
        self.ema = FiltroEMA(a.suavizado)
        self.cliente = None
        if a.servidor:
            from mlp_experto.cliente_udp import ClienteUDP
            host, puerto = a.servidor.split(":"); self.cliente = ClienteUDP(host, int(puerto), timeout=a.timeout_servidor)
        if a.hil_tcp:                                          # HIL con la placa: pasarela TCP -> ROS 2 (Cyclone DDS) -> placa
            from mlp_experto.trama_hil import ClienteHilTcp
            host, puerto = a.hil_tcp.split(":"); self.cliente = ClienteHilTcp(host, int(puerto), timeout=a.timeout_servidor)
        elif a.hil_ros:                                          # la placa (o su emulador) recibe la trama 1280x720 por ROS y devuelve v, w por ROS
            from mlp_experto.trama_hil import ClienteHilRos
            self.cliente = ClienteHilRos(timeout=a.timeout_servidor)
        self.gz = None
        if a.pausa:                                            # lazo sincronizado: Gazebo se detiene mientras el servidor (IP simulado) responde
            from gz.transport13 import Node as GzNode
            self.gz = GzNode()
        self.tam = tuple(int(v) for v in a.resolucion.split("x"))
        circ = Circuito.cargar(DATOS_CIRCUITOS / f"{a.circuito}.npz")
        self.guia = Experto(circ, sentido=a.sentido)          # solo para medir progreso y error lateral
        self.puente = CvBridge()
        self.pose = None
        self.t0 = self.idx_prev = None
        self.recorrido = 0.0
        self.cte, self.vs, self.parado_desde, self.pos_atasco = [], [], None, None
        self.t_decs = []
        self.lat_srv = []                                      # s de pared que tarda el servidor en responder
        self.fin = False
        self.paso_hz = max(1, round(HZ_CAMARA / a.hz)) if a.hz > 0 else 1    # se usa 1 de cada N imágenes (la cámara va a 20 Hz)
        self.n_img = 0
        self.t_dec = -1e9                                      # (--pausa) instante de la última decisión
        self.t_odom = 0.0
        self.retraso_img = []                                  # (--pausa) s de simulación entre la imagen y el momento de decidir
        self.pendientes = []                                    # (instante de aplicación, orden): retardo de la cadena de visión/IP/ARM
        self.csv = open(f"{a.salida}.csv", "w", newline="")
        self.w = csv.writer(self.csv); self.w.writerow(["t", "x", "y", "cte", "v_cmd", "w_cmd", "v_real", "vuelta"])
        self.pub = self.create_publisher(Twist, "/cmd_vel", 10)
        self.create_subscription(Odometry, "/odom", self.on_odom, 10)
        self.create_subscription(Image, "/cam_f1_left/image_raw", self.on_imagen,
                                 QoSProfile(reliability=ReliabilityPolicy.BEST_EFFORT, depth=1 if a.pausa else 60))

    def pausar(self, pausa):
        from gz.msgs10.boolean_pb2 import Boolean
        from gz.msgs10.world_control_pb2 import WorldControl
        r = WorldControl(); r.pause = pausa
        self.gz.request("/world/default/control", r, WorldControl, Boolean, 2000)

    def on_odom(self, m):
        p = m.pose.pose
        yaw = math.atan2(2 * (p.orientation.w * p.orientation.z + p.orientation.x * p.orientation.y),
                         1 - 2 * (p.orientation.y ** 2 + p.orientation.z ** 2))
        self.pose = (p.position.x, p.position.y, yaw, m.twist.twist.linear.x); self.t_odom = segundos(m.header.stamp)

    def on_imagen(self, msg):
        if self.fin or self.pose is None:
            return
        t = segundos(msg.header.stamp)
        if self.t0 is None:
            self.t0 = t
        while self.pendientes and self.pendientes[0][0] <= t + 1e-6:          # órdenes cuyo retardo ya ha pasado
            self.pub.publish(self.pendientes.pop(0)[1])
        self.n_img += 1
        if self.gz is not None:                                 # con pausa se decide por tiempo de simulación (la cola de imágenes es de 1)
            if t - self.t_dec < 0.9 / self.a.hz:
                return
            self.t_dec = t
            self.retraso_img.append(self.t_odom - t)
        elif (self.n_img - 1) % self.paso_hz != 0:              # lazo más lento que la cámara: se descarta esta imagen
            return
        x, y, yaw, v_real = self.pose
        bgr = self.puente.imgmsg_to_cv2(msg, "bgr8")
        if self.cliente is not None:                           # red cuantizada en un servidor UDP, o la placa por ROS (HIL)
            from mlp_experto.cliente_udp import a_bytes
            if self.gz is not None:
                self.pausar(True)
            t_srv = time.time()
            r = self.cliente.consultar(bgr if (self.a.hil_ros or self.a.hil_tcp) else a_bytes(vector_desde_bgr(bgr, self.tam)))
            self.lat_srv.append(time.time() - t_srv)
            if self.gz is not None:
                self.pausar(False)
            if r is None:
                if self.cliente.sin_respuesta >= MAX_SIN_RESPUESTA:      # el servidor no contesta: se aborta y se registra
                    self.terminar(t - self.t0, atascado=True, vuelta=self.recorrido / self.guia.n, error="servidor_sin_respuesta")
                return                                         # sin respuesta: no se manda orden nueva
            v, w = r
        else:
            v, w = decodificar(self.red(vector_desde_bgr(bgr, self.tam)))
        v, w = self.ema.paso(v, w)
        c = Twist(); c.linear.x, c.angular.z = limitar_velocidad(v, self.a.v_max) * self.a.factor_lin, w * self.a.factor_ang
        self.pendientes.append((t + self.a.retardo, c))
        while self.pendientes and self.pendientes[0][0] <= t + 1e-6:          # sin retardo: se publica en el acto, como antes
            self.pub.publish(self.pendientes.pop(0)[1])
        o = self.guia.orden(x, y, yaw)
        if self.idx_prev is not None:
            d = (o.idx - self.idx_prev) % self.guia.n
            self.recorrido += d if d < self.guia.n // 2 else 0
        self.idx_prev = o.idx
        vuelta = self.recorrido / self.guia.n
        self.cte.append(abs(o.cte)); self.vs.append(v_real); self.t_decs.append(t)
        self.w.writerow([f"{t - self.t0:.2f}", f"{x:.2f}", f"{y:.2f}", f"{o.cte:.2f}", f"{c.linear.x:.2f}", f"{c.angular.z:.2f}", f"{v_real:.2f}", f"{vuelta:.3f}"])
        if v_real < 0.3 and t - self.t0 > 3.0:
            self.parado_desde = self.parado_desde if self.parado_desde is not None else t
            if t - self.parado_desde >= self.a.atasco:
                self.pos_atasco = (round(x, 1), round(y, 1)); return self.terminar(t, atascado=True, vuelta=vuelta)
        else:
            self.parado_desde = None
        if vuelta >= self.a.vueltas or t - self.t0 >= self.a.duracion:
            self.terminar(t, atascado=False, vuelta=vuelta)

    def terminar(self, t, atascado, vuelta, error=None):
        self.fin = True
        c = Twist(); self.pub.publish(c)
        self.csv.close()
        cte = np.array(self.cte)
        r = dict(circuito=self.a.circuito, sentido=self.a.sentido, pesos=str(self.a.pesos or self.a.servidor or ("hil-ros" if self.a.hil_ros else "hil-tcp" if self.a.hil_tcp else "")), vueltas_completadas=round(vuelta, 3),
                 tiempo_s=round(t - self.t0, 1), atascado=atascado, pos_atasco=self.pos_atasco, cte_max=round(float(cte.max()) if len(cte) else 0.0, 2), error=error,
                 frac_fuera_del_carril=round(float((cte > CTE_FUERA).mean()) if len(cte) else 0.0, 4), v_media_real=round(float(np.mean(self.vs)) if self.vs else 0.0, 2),
                 resolucion=self.a.resolucion, v_max=self.a.v_max, suavizado=self.a.suavizado, n_modelos=len([r for r in self.a.pesos.split(',') if r]), factor_lin=self.a.factor_lin, factor_ang=self.a.factor_ang, hz=self.a.hz, retardo=self.a.retardo, pausa=self.a.pausa,
                 hz_efectiva=round(float(1 / np.median(np.diff(self.t_decs))), 2) if len(self.t_decs) > 2 else None,
                 latencia_servidor_s=dict(media=round(float(np.mean(self.lat_srv)), 3), p95=round(float(np.percentile(self.lat_srv, 95)), 3), max=round(float(np.max(self.lat_srv)), 3)) if self.lat_srv else None,
                 latencias_altas_s=[[i, round(l, 2)] for i, l in enumerate(self.lat_srv) if l > 2.0],   # (n.º de consulta, s): dónde ocurren los picos
                 retraso_imagen_s=dict(media=round(float(np.mean(self.retraso_img)), 3), max=round(float(np.max(self.retraso_img)), 3)) if self.retraso_img else None)
        Path(f"{self.a.salida}.json").write_text(json.dumps(r, indent=2))
        self.get_logger().info("RESULTADO " + json.dumps(r))


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--pesos", default=""); p.add_argument("--servidor", default="", help="host:puerto de un servidor UDP de inferencia"); p.add_argument("--circuito", required=True)
    p.add_argument("--sentido", type=int, choices=(1, -1), default=1); p.add_argument("--salida", required=True)
    p.add_argument("--resolucion", default="16x12", help="ancho x alto de la entrada de la red")
    p.add_argument("--suavizado", type=float, default=0.0, help="alfa del filtro exponencial de las órdenes (0 = sin filtro)")
    p.add_argument("--vueltas", type=float, default=2.0); p.add_argument("--duracion", type=float, default=360.0)
    p.add_argument("--atasco", type=float, default=15.0, help="s parado antes de dar la prueba por fallida")
    p.add_argument("--v-max", type=float, default=0.0, help="tope de la velocidad lineal en m/s (0 = sin tope)")
    p.add_argument("--hz", type=float, default=20.0, help="frecuencia del lazo de control (la cámara va a 20 Hz: se usa 1 de cada N imágenes)")
    p.add_argument("--retardo", type=float, default=0.0, help="s entre ver la imagen y aplicar la orden (cadena de visión + IP + ARM + motores)")
    p.add_argument("--hil-ros", action="store_true", help="HIL: publica la trama 1280x720 en /f1_camera/image y espera v, w en /hil/cmd_vel (nodo de la placa)")
    p.add_argument("--hil-tcp", default="", help="HIL con la placa real: host:puerto de la pasarela TCP (04_ros2_gazebo/herramientas/pasarela_hil.py)")
    p.add_argument("--pausa", action="store_true", help="detiene Gazebo mientras el servidor responde (lazo con el IP simulado en Verilator, que es más lento que el tiempo real)")
    p.add_argument("--timeout-servidor", type=float, default=0.5, help="s de espera a la respuesta del servidor UDP")
    p.add_argument("--factor-lin", type=float, default=1.0); p.add_argument("--factor-ang", type=float, default=1.0)
    a = p.parse_args()
    Path(a.salida).parent.mkdir(parents=True, exist_ok=True)
    rclpy.init(); n = Lazo(a)
    try:
        while rclpy.ok() and not n.fin:
            rclpy.spin_once(n, timeout_sec=0.5)
    finally:
        try:
            n.pub.publish(Twist())
        except Exception:
            pass
        rclpy.shutdown()


if __name__ == "__main__":
    main()
