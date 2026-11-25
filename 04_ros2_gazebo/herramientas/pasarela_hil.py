#!/usr/bin/env python3
"""Pasarela TCP <-> ROS 2 (Cyclone DDS) para el HIL con la placa.
El lazo de Gazebo (RMW por defecto) manda por TCP la trama 1280x720x3 RGB; esta pasarela, que corre con Cyclone DDS, la publica en /f1_camera/frame, espera
el Twist de la placa en /hil/cmd_vel y devuelve (v, w) como 2 float32 (NaN si no hay respuesta). Una conexión y una petición en vuelo.
  RMW_IMPLEMENTATION=rmw_cyclonedds_cpp CYCLONEDDS_URI=file:///tmp/cyclone_pc.xml python3 pasarela_hil.py [--puerto 5030]
"""
import argparse
import socket
import struct
import time

import rclpy
from geometry_msgs.msg import Twist
from rclpy.node import Node
from rclpy.qos import QoSProfile, ReliabilityPolicy
from std_msgs.msg import UInt8MultiArray

NB = 720 * 1280 * 3


class Pasarela(Node):
    def __init__(self, a):
        super().__init__('pasarela_hil')
        self.a, self.ultima = a, None
        q = QoSProfile(reliability=ReliabilityPolicy.RELIABLE, depth=1)
        self.pub = self.create_publisher(UInt8MultiArray, a.imagen, q)
        self.create_subscription(Twist, a.cmd, lambda m: setattr(self, 'ultima', (m.linear.x, m.angular.z)), 10)

    def consulta(self, trama: bytes):
        t = time.time()
        while self.pub.get_subscription_count() == 0 and time.time() - t < self.a.timeout:   # la placa aún no está
            rclpy.spin_once(self, timeout_sec=0.05)
        for _ in range(self.a.intentos):                                                       # una trama perdida se reenvía
            rclpy.spin_once(self, timeout_sec=0); self.ultima = None
            m = UInt8MultiArray(); m.data = trama; self.pub.publish(m)
            t = time.time()
            while self.ultima is None and time.time() - t < self.a.timeout:
                rclpy.spin_once(self, timeout_sec=0.02)
            if self.ultima is not None:
                return self.ultima
        return float('nan'), float('nan')


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--puerto', type=int, default=5030); p.add_argument('--imagen', default='/f1_camera/frame'); p.add_argument('--cmd', default='/hil/cmd_vel')
    p.add_argument('--timeout', type=float, default=2.0); p.add_argument('--intentos', type=int, default=2)
    a = p.parse_args()
    rclpy.init(); n = Pasarela(a)
    srv = socket.socket(); srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1); srv.bind(('0.0.0.0', a.puerto)); srv.listen(1)
    n.get_logger().info('pasarela lista: TCP %d <-> %s / %s' % (a.puerto, a.imagen, a.cmd))
    try:
        while True:
            c, _ = srv.accept(); c.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)
            try:
                while True:
                    buf = bytearray(NB); vista = memoryview(buf); n_ok = 0
                    while n_ok < NB:
                        k = c.recv_into(vista[n_ok:], NB - n_ok)
                        if k == 0: raise ConnectionError
                        n_ok += k
                    v, w = n.consulta(bytes(buf)); c.sendall(struct.pack('<2f', v, w))
            except (ConnectionError, OSError):
                c.close()
    except KeyboardInterrupt:
        pass


if __name__ == '__main__':
    main()
