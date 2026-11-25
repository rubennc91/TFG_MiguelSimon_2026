#!/usr/bin/env python3
"""Puente suelto: toma la cámara de Gazebo (640x480) y publica la trama 1280x720 RGB del HIL (amplía por 1,5 y centra; bordes negros, ver mlp_experto/trama_hil.py).
El lazo con `--hil-ros` ya lo hace por sí mismo; este nodo sirve para alimentar la placa sin el lazo (p. ej. con el coche conducido por otro controlador).
  PYTHONPATH=/ent python3 puente_imagen_hil.py [--entrada /cam_f1_left/image_raw] [--salida /f1_camera/image] [--hz-max 10]
"""
import argparse

import numpy as np
import rclpy
from rclpy.node import Node
from rclpy.qos import qos_profile_sensor_data
from sensor_msgs.msg import Image
from std_msgs.msg import UInt8MultiArray

from mlp_experto.trama_hil import a_trama_hil


class Puente(Node):
    def __init__(self, a):
        super().__init__('puente_imagen_hil')
        self.a, self.t = a, 0.0
        self.pub = self.create_publisher(UInt8MultiArray, a.salida, qos_profile_sensor_data)
        self.create_subscription(Image, a.entrada, self.on_img, qos_profile_sensor_data)
        self.get_logger().info('%s (640x480) -> %s (1280x720x3 bytes RGB), hasta %.1f Hz' % (a.entrada, a.salida, a.hz_max))

    def on_img(self, m):
        t = self.get_clock().now().nanoseconds * 1e-9
        if t - self.t < 1.0 / self.a.hz_max: return
        self.t = t
        bgr = np.frombuffer(m.data, np.uint8).reshape(m.height, m.width, 3)
        if m.encoding == 'rgb8': bgr = bgr[:, :, ::-1]
        try: trama = a_trama_hil(np.ascontiguousarray(bgr))
        except ValueError as e:
            self.get_logger().error(str(e), throttle_duration_sec=5); return
        o = UInt8MultiArray(); o.data = trama.tobytes()
        self.pub.publish(o)


if __name__ == '__main__':
    p = argparse.ArgumentParser()
    p.add_argument('--entrada', default='/cam_f1_left/image_raw'); p.add_argument('--salida', default='/f1_camera/frame')
    p.add_argument('--hz-max', type=float, default=10.0, help='tope de tramas por segundo (cada trama son 2,8 MB)')
    rclpy.init()
    try: rclpy.spin(Puente(p.parse_args()))
    except KeyboardInterrupt: pass
