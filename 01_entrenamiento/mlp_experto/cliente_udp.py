"""Cliente UDP con el protocolo del servidor Verilator: N bytes uint8 (RGB planar) -> 2 float32 (v, w) ya decodificados."""
import socket
import struct
from typing import Optional

import numpy as np


def a_bytes(vector: np.ndarray) -> bytes:
    """Vector en [0, 1] (valor/255) -> bytes uint8 que espera el servidor."""
    return np.rint(np.asarray(vector) * 255.0).astype(np.uint8).tobytes()


def decodificar_respuesta(datos: bytes) -> tuple:
    if len(datos) != 8:
        raise ValueError(f"se esperaban 8 bytes (2 float32), llegaron {len(datos)}")
    return struct.unpack("<2f", datos)


class ClienteUDP:
    def __init__(self, host: str, puerto: int, timeout: float = 0.5):
        self.destino = (host, puerto)
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.sock.settimeout(timeout)
        self.sin_respuesta = 0            # respuestas perdidas seguidas

    def consultar(self, datos: bytes) -> Optional[tuple]:
        """(v, w) o None si el servidor no responde a tiempo."""
        try:
            self.sock.sendto(datos, self.destino)
            r = decodificar_respuesta(self.sock.recvfrom(64)[0])
            self.sin_respuesta = 0
            return r
        except (socket.timeout, ValueError, OSError):
            self.sin_respuesta += 1
            return None
