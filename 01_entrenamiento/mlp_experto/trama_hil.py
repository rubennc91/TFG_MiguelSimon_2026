"""HIL con ROS: la trama de 1280x720 RGB que espera el reductor de la placa, y el cliente que la envía y espera v, w.

El reductor recorta el centro 4:3 (columnas 160..1119) de una trama 1280x720. La imagen 4:3 de Gazebo (640x480) se amplía por 1,5 a 960x720 con
cv2.resize (bilineal) y se pone en el centro; las 160 columnas de cada lado quedan en negro (el reductor las descarta, y así ninguna franja de la
escena puede colarse en ellas). Es una ampliación: valida el hardware desde el reductor, no una cámara de 720p real.
"""
import time

import numpy as np

ENTRADA = (480, 640)     # alto, ancho de la cámara de Gazebo
SALIDA = (720, 1280)
NB_TRAMA = 720 * 1280 * 3  # bytes de una trama RGB
CENTRO_W = 960           # ancho que recorta el reductor


def a_trama_hil(bgr: np.ndarray) -> np.ndarray:
    """(480, 640, 3) uint8 BGR -> (720, 1280, 3) uint8 RGB."""
    import cv2
    if bgr.shape != (*ENTRADA, 3):
        raise ValueError("se espera una imagen %dx%d, llega %s" % (ENTRADA[1], ENTRADA[0], bgr.shape[:2][::-1]))
    centro = cv2.resize(bgr, (CENTRO_W, SALIDA[0]), interpolation=cv2.INTER_LINEAR)
    trama = np.zeros((*SALIDA, 3), np.uint8)
    lado = (SALIDA[1] - CENTRO_W) // 2
    trama[:, lado:lado + CENTRO_W] = centro[:, :, ::-1]
    return trama


class ClienteHilRos:
    """Publica la trama en `tema_imagen` y espera el `Twist` de la placa en `tema_cmd` (una sola petición en vuelo, como el cliente UDP).
    Usa su propio nodo y ejecutor, para poder esperar la respuesta dentro de la llamada de la cámara del lazo."""

    def __init__(self, tema_imagen="/f1_camera/frame", tema_cmd="/hil/cmd_vel", timeout=1.0, intentos=3):
        import rclpy
        from geometry_msgs.msg import Twist
        from rclpy.executors import SingleThreadedExecutor
        from rclpy.node import Node
        from std_msgs.msg import UInt8MultiArray
        self._Msg = UInt8MultiArray
        self.timeout, self.intentos, self.sin_respuesta, self.ultima = timeout, intentos, 0, None
        self.nodo = Node("cliente_hil")
        self.pub = self.nodo.create_publisher(UInt8MultiArray, tema_imagen, 1)
        self.nodo.create_subscription(Twist, tema_cmd, self._on_cmd, 10)
        self.ex = SingleThreadedExecutor(); self.ex.add_node(self.nodo)

    def _on_cmd(self, m):
        self.ultima = (m.linear.x, m.angular.z)

    def consultar(self, bgr: np.ndarray):
        """(v, w) o None si la placa no responde a tiempo."""
        t = time.time()
        while self.pub.get_subscription_count() == 0 and time.time() - t < self.timeout:    # la placa aún no está (no se pierde la primera trama)
            self.ex.spin_once(timeout_sec=0.05)
        self.ex.spin_once(timeout_sec=0)                       # descarta respuestas atrasadas
        self.ultima = None
        o = self._Msg(); o.data = a_trama_hil(bgr).tobytes()      # 1280x720x3 bytes RGB (la ROS mínima de la placa no trae sensor_msgs)
        for _ in range(self.intentos):                         # una trama perdida o atascada en DDS se reenvía
            self.pub.publish(o)
            t = time.time()
            while self.ultima is None and time.time() - t < self.timeout:
                self.ex.spin_once(timeout_sec=0.02)
            if self.ultima is not None:
                break
        if self.ultima is None:
            self.sin_respuesta += 1
            return None
        self.sin_respuesta = 0
        return self.ultima


class ClienteHilTcp:
    """Envía la trama por TCP a la pasarela (`pasarela_hil.py`), que habla con la placa por ROS 2 con Cyclone DDS, y recibe (v, w).
    Sirve para no mezclar RMW en el proceso del lazo: Gazebo usa el RMW por defecto y la placa, Cyclone DDS (los dos no se descubren entre sí)."""

    def __init__(self, host="127.0.0.1", puerto=5030, timeout=3.0):
        self.destino, self.timeout, self.sin_respuesta, self.sock = (host, puerto), timeout, 0, None

    def _conectar(self):
        import socket
        limite = time.time() + self.timeout
        while True:                                            # la pasarela puede arrancar después del lazo
            try:
                s = socket.create_connection(self.destino, timeout=self.timeout); break
            except OSError:
                if time.time() > limite: raise
                time.sleep(0.2)
        s.settimeout(self.timeout); s.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)
        self.sock = s

    def consultar(self, bgr: np.ndarray):
        """(v, w) o None si la pasarela o la placa no responden a tiempo."""
        import socket
        import struct
        try:
            if self.sock is None:
                self._conectar()
            self.sock.sendall(a_trama_hil(bgr).tobytes())
            datos = b""
            while len(datos) < 8:
                parte = self.sock.recv(8 - len(datos))
                if not parte:
                    raise OSError("conexión cerrada")
                datos += parte
            v, w = struct.unpack("<2f", datos)
            if v != v:                                          # NaN: la pasarela no obtuvo respuesta de la placa
                raise OSError("sin respuesta de la placa")
            self.sin_respuesta = 0
            return v, w
        except (OSError, socket.timeout):
            if self.sock is not None:
                self.sock.close(); self.sock = None
            self.sin_respuesta += 1
            return None
