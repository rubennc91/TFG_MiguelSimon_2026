#!/usr/bin/env python3
"""HIL en la Zybo con PYNQ + ROS 2 (rclpy nativo, como pynq/pl_ros_node.py de madgwick-zybo-hls).

  Gazebo (PC) --sensor_msgs/Image 1280x720--> [Ethernet] --> este nodo --DDR--> axi_dma_2 -> reductor (PL) -> IP de FINN (PL) -> axi_dma_1 --> v, w
  --> geometry_msgs/Twist en /hil/cmd_vel --> [Ethernet] --> controlador de Gazebo (PC)

Usa el bitstream `z7-20_hil_*` (RED=cnn, HIL=1), con su .hwh al lado del .bit. Se ejecuta como root con `sudo -i` (ver start_hil.sh).
Modos:
  (por defecto)       nodo ROS: suscribe `image_topic` (std_msgs/UInt8MultiArray con 1280x720x3 bytes RGB), publica `cmd_topic` (Twist) y `lat_topic` (Float32MultiArray: [lat_total_ms, lat_pl_ms]).
  --ros-args -p solo_prueba:=true   sin ROS: inyecta una trama sintética, compara la imagen reducida del PL con reductor_ref.py y muestra v, w.
"""
import struct
import time

import numpy as np
from pynq import MMIO, Overlay, allocate

W, H, NB = 1280, 720, 1280 * 720 * 3
IMG_RED = 24 * 32 * 3
# registros del AXI DMA en modo simple (PG021)
MM2S_CR, MM2S_SR, MM2S_SA, MM2S_LEN = 0x00, 0x04, 0x18, 0x28
S2MM_CR, S2MM_SR, S2MM_DA, S2MM_LEN = 0x30, 0x34, 0x48, 0x58
CR_RUN, CR_RESET = 1, 4
SR_IDLE, SR_IOC, SR_ERR, SR_INTERR = 0x2, 0x1000, 0x70, 0x10
# AXI4-Stream Switch (PG085): MI_MUX[i] en 0x40+4i, bit 31 = salida deshabilitada; control bit 1 = actualizar
SW_CTRL, SW_MI0, SW_OFF, SW_UPD = 0x00, 0x40, 0x80000000, 0x2


def s16(v):
    v &= 0xFFFF
    return v - 0x10000 if v & 0x8000 else v


class PlHil:
    def __init__(self, bit, mul, add, vmin=-0.6, vmax=13.0, wmax=np.pi):
        self.ol = Overlay(bit)
        ip = self.ol.ip_dict
        mm = lambda n: MMIO(ip[n]['phys_addr'], 0x10000)
        self.d_in, self.d_out, self.d_dbg = mm('axi_dma_2'), mm('axi_dma_1'), mm('axi_dma_0')
        self.sw_cam, self.sw_red = mm('axis_switch_0'), mm('axis_switch_1')
        self.buf_in = allocate(shape=(NB,), dtype=np.uint8)
        self.buf_out = allocate(shape=(4,), dtype=np.int16)        # dos int16: v, w en forma entera
        self.buf_dbg = allocate(shape=(IMG_RED,), dtype=np.uint8)
        self.mul, self.add, self.vmin, self.vmax, self.wmax = mul, add, vmin, vmax, wmax
        self._ruta(self.sw_cam, 1)                                  # gamma/HIL -> reductor (M1; M0 es la captura del VDMA)

    @staticmethod
    def _ruta(sw, mi):                                              # entrada 0 -> salida `mi`, el resto desactivadas
        sw.write(SW_CTRL, sw.read(SW_CTRL) & ~SW_UPD)
        for i in range(2):
            sw.write(SW_MI0 + 4 * i, 0 if i == mi else SW_OFF)
        sw.write(SW_CTRL, sw.read(SW_CTRL) | SW_UPD)

    @staticmethod
    def _reset(d, cr):
        d.write(cr, CR_RESET)
        t = time.time()
        while d.read(cr) & CR_RESET:
            if time.time() - t > 1: raise RuntimeError('el DMA no sale del reset')

    def _esperar(self, d, sr, t_max):
        t = time.time()
        while True:
            s = d.read(sr)
            # El IP de FINN genera TLAST (TLastMarker del builder): el DMA cierra el paquete sin DMAIntErr. Cualquier bit de error es real.
            if s & SR_ERR: raise RuntimeError('error de DMA, SR=0x%x' % s)
            if s & SR_IOC: return
            if time.time() - t > t_max: raise TimeoutError('el DMA no termina (SR=0x%x)' % s)

    def inyectar(self, rgb, destino='finn', t_max=2.0):
        """rgb: (720, 1280, 3) uint8 con R,G,B en ese orden. destino 'finn' -> (v, w, ms_pl); 'dbg' -> imagen reducida (24,32,3) tras la tabla."""
        self.buf_in[:] = np.ascontiguousarray(rgb, np.uint8).reshape(-1)
        self.buf_in.flush()
        self._ruta(self.sw_red, 1 if destino == 'finn' else 0)
        d_dst, cr, sr, da, ln, buf, n = ((self.d_out, S2MM_CR, S2MM_SR, S2MM_DA, S2MM_LEN, self.buf_out, 4) if destino == 'finn'
                                         else (self.d_dbg, S2MM_CR, S2MM_SR, S2MM_DA, S2MM_LEN, self.buf_dbg, IMG_RED))
        self._reset(d_dst, cr); self._reset(self.d_in, MM2S_CR)
        d_dst.write(cr, CR_RUN); d_dst.write(da, buf.physical_address); d_dst.write(ln, n)         # el destino se arma primero
        t0 = time.time()
        self.d_in.write(MM2S_CR, CR_RUN); self.d_in.write(MM2S_SA, self.buf_in.physical_address); self.d_in.write(MM2S_LEN, NB)
        self._esperar(d_dst, sr, t_max)
        ms = (time.time() - t0) * 1e3
        buf.invalidate()
        if destino == 'dbg':
            return np.array(self.buf_dbg).reshape(24, 32, 3), ms
        v = (s16(int(self.buf_out[0])) * self.mul + self.add[0]); w = (s16(int(self.buf_out[1])) * self.mul + self.add[1])
        v, w = float(np.clip(v, 0, 1)), float(np.clip(w, 0, 1))
        return v * (self.vmax - self.vmin) + self.vmin, (2 * w - 1) * self.wmax, ms


# Reescalado de la CNN cq4_s6 (de finn_params_cnn.h)
FINN_MUL, FINN_ADD = 3.3589126542e-03, (1.0748521239e-01, 2.3512389511e-02)


def prueba(bit, tabla):
    """Sin ROS: tramas sintéticas -> imagen reducida del PL frente al modelo en numpy, y v, w del IP."""
    from reductor_ref import cargar_tabla, reducir_lineal as reducir
    pl = PlHil(bit, FINN_MUL, FINN_ADD)
    rng = np.random.default_rng(0)
    base = rng.integers(0, 256, (24, 32, 3), np.uint8)
    for nombre, t in (('degradado', np.tile(np.linspace(0, 255, W).astype(np.uint8)[None, :, None], (H, 1, 3))),
                      ('bloques aleatorios', np.kron(base, np.ones((30, 40, 1), np.uint8))[:, :W])):
        t = np.ascontiguousarray(np.broadcast_to(t, (H, W, 3)) if t.shape[:2] == (H, W) else np.pad(t, ((0, 0), (0, W - t.shape[1]), (0, 0))))
        ref = reducir(t, cargar_tabla(tabla))
        got, ms = pl.inyectar(t, 'dbg')
        print('%-18s reducida: |dif| max %d (0 = idéntica al modelo) | %.1f ms' % (nombre, int(np.abs(ref.astype(int) - got.astype(int)).max()), ms))
        v, w, ms = pl.inyectar(t, 'finn')
        print('%-18s IP FINN: v=%.3f m/s w=%+.3f rad/s | %.1f ms (trama + reductor + CNN)' % (nombre, v, w, ms))


def main():
    import sys
    par = dict(a.split(':=', 1) for a in sys.argv if ':=' in a)
    if par.get('solo_prueba') == 'true':                      # sin ROS (no hace falta tenerlo instalado)
        prueba(par.get('bit', '/home/xilinx/zybo_hil/system_v2_wrapper.bit'), par.get('tabla', '/home/xilinx/zybo_hil/tabla_entrada.json')); return
    import rclpy
    from geometry_msgs.msg import Twist
    from rclpy.node import Node
    from rclpy.qos import QoSProfile, ReliabilityPolicy
    from std_msgs.msg import Float32MultiArray, UInt8MultiArray       # la ROS 2 mínima de la placa no trae sensor_msgs

    class Nodo(Node):
        def __init__(self):
            super().__init__('pl_hil')
            for k, v in (('bit', '/home/xilinx/zybo_hil/system_v2_wrapper.bit'), ('tabla', '/home/xilinx/zybo_hil/tabla_entrada.json'),
                         ('image_topic', '/f1_camera/frame'), ('cmd_topic', '/hil/cmd_vel'), ('lat_topic', '/hil/latencia'), ('solo_prueba', False)):
                self.declare_parameter(k, v)
            g = lambda k: self.get_parameter(k).value
            if g('solo_prueba'):
                prueba(g('bit'), g('tabla')); raise SystemExit
            self.pl = PlHil(g('bit'), FINN_MUL, FINN_ADD)
            self.pub = self.create_publisher(Twist, g('cmd_topic'), 10)
            self.pub_lat = self.create_publisher(Float32MultiArray, g('lat_topic'), 10)
            self.sub = self.create_subscription(UInt8MultiArray, g('image_topic'), self.on_img, QoSProfile(reliability=ReliabilityPolicy.RELIABLE, depth=1))   # fiable: una trama son ~2000 fragmentos UDP
            self.n = 0
            self.get_logger().info('HIL listo: %s -> PL -> %s' % (g('image_topic'), g('cmd_topic')))

        def on_img(self, m):
            t0 = time.time()
            if self.n < 3: self.get_logger().info('trama recibida (%d bytes)' % len(m.data))
            if len(m.data) != NB:
                self.get_logger().error('trama de %d bytes: se esperan %d (1280x720 RGB)' % (len(m.data), NB), throttle_duration_sec=5)
                return
            a = np.frombuffer(bytes(m.data), np.uint8).reshape(H, W, 3)      # R, G, B, como espera el reductor
            try:
                v, w, ms = self.pl.inyectar(a)
            except (TimeoutError, RuntimeError) as e:
                self.get_logger().error(str(e)); return
            c = Twist(); c.linear.x = v; c.angular.z = w
            self.pub.publish(c)
            l = Float32MultiArray(); l.data = [float((time.time() - t0) * 1e3), float(ms)]; self.pub_lat.publish(l)
            self.n += 1
            if self.n % 20 == 0: self.get_logger().info('#%d v=%.2f w=%+.2f | total %.0f ms (PL %.0f ms)' % (self.n, v, w, l.data[0], ms))

    rclpy.init(); n = Nodo()
    try: rclpy.spin(n)
    except KeyboardInterrupt: pass


if __name__ == '__main__':
    main()
