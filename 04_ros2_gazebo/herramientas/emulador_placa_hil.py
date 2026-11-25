#!/usr/bin/env python3
"""Emula la placa del HIL para probar la parte de ROS sin hardware: recibe la trama 1280x720 en /f1_camera/image, la reduce con el modelo en numpy del
reductor (reductor_ref.py, igual que el PL), pregunta al IP de FINN simulado en Verilator (servidor UDP nativo) y publica v, w en /hil/cmd_vel.
  python3 emulador_placa_hil.py --servidor 127.0.0.1:5020 [--ref /ruta/a/reductor_ref.py]
"""
import argparse
import importlib.util
import socket
import struct

import numpy as np
import rclpy
from geometry_msgs.msg import Twist
from rclpy.node import Node
from rclpy.qos import QoSProfile, ReliabilityPolicy
from std_msgs.msg import UInt8MultiArray


class Emulador(Node):
    def __init__(self, a):
        super().__init__('emulador_placa_hil')
        sp = importlib.util.spec_from_file_location('reductor_ref', a.ref); self.ref = importlib.util.module_from_spec(sp); sp.loader.exec_module(self.ref)
        self.lineal = a.lineal
        host, port = a.servidor.split(':'); self.dest = (host, int(port))
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); self.sock.settimeout(a.timeout)
        self.pub = self.create_publisher(Twist, a.cmd, 10)
        self.create_subscription(UInt8MultiArray, a.imagen, self.on_img, QoSProfile(reliability=ReliabilityPolicy.RELIABLE, depth=1))
        self.get_logger().info('emulador listo: %s -> reductor (numpy) -> %s -> %s' % (a.imagen, a.servidor, a.cmd))

    def on_img(self, m):
        if len(m.data) != 1280 * 720 * 3: return
        t = np.frombuffer(bytes(m.data), np.uint8).reshape(720, 1280, 3)
        red = (self.ref.reducir_lineal if self.lineal else self.ref.reducir)(t)                                     # (24, 32, 3) HWC; el servidor espera RGB planar y aplica él la tabla
        try:
            self.sock.sendto(np.ascontiguousarray(red.transpose(2, 0, 1)).tobytes(), self.dest)
            v, w = struct.unpack('<2f', self.sock.recvfrom(64)[0])
        except (socket.timeout, OSError, struct.error):
            self.get_logger().warning('el servidor no responde', throttle_duration_sec=2); return
        c = Twist(); c.linear.x, c.angular.z = float(v), float(w); self.pub.publish(c)


if __name__ == '__main__':
    p = argparse.ArgumentParser()
    p.add_argument('--servidor', default='127.0.0.1:5020'); p.add_argument('--ref', default='/tmp/hil/reductor_ref.py')
    p.add_argument('--lineal', action='store_true', help='reducción bilineal (como el entrenamiento) en lugar de la media por bloques del PL')
    p.add_argument('--imagen', default='/f1_camera/frame'); p.add_argument('--cmd', default='/hil/cmd_vel'); p.add_argument('--timeout', type=float, default=1.0)
    rclpy.init()
    try: rclpy.spin(Emulador(p.parse_args()))
    except KeyboardInterrupt: pass
