import socket
import struct
import threading

import numpy as np
import pytest

from mlp_experto.cliente_udp import ClienteUDP, a_bytes, decodificar_respuesta


def test_a_bytes_recupera_los_bytes_originales():
    b = np.random.default_rng(0).integers(0, 256, 2304, dtype=np.uint8)
    vec = (b / 255.0).astype(np.float32)                      # lo que produce vector_desde_bgr
    assert a_bytes(vec) == b.tobytes()


def test_decodificar_respuesta():
    assert decodificar_respuesta(struct.pack("<2f", 5.0, -0.25)) == pytest.approx((5.0, -0.25))
    with pytest.raises(ValueError):
        decodificar_respuesta(b"abc")


def servidor(puerto, respuesta, parar):
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.bind(("127.0.0.1", puerto)); s.settimeout(0.2)
    recibidos = []
    while not parar.is_set():
        try:
            datos, dire = s.recvfrom(65535); recibidos.append(len(datos)); s.sendto(respuesta, dire)
        except socket.timeout:
            pass
    s.close(); return recibidos


def test_cliente_consulta_un_servidor_local():
    parar = threading.Event(); t = threading.Thread(target=servidor, args=(45871, struct.pack("<2f", 7.5, 0.5), parar), daemon=True); t.start()
    try:
        assert ClienteUDP("127.0.0.1", 45871, timeout=1.0).consultar(bytes(2304)) == pytest.approx((7.5, 0.5))
    finally:
        parar.set(); t.join(1)


def test_sin_servidor_devuelve_none():
    assert ClienteUDP("127.0.0.1", 45899, timeout=0.2).consultar(bytes(576)) is None


def test_cuenta_las_respuestas_perdidas_seguidas():
    c = ClienteUDP("127.0.0.1", 45898, timeout=0.05)
    assert c.sin_respuesta == 0
    c.consultar(bytes(10)); c.consultar(bytes(10))
    assert c.sin_respuesta == 2                                     # dos fallos seguidos
    parar = threading.Event(); t = threading.Thread(target=servidor, args=(45898, struct.pack("<2f", 1.0, 2.0), parar), daemon=True); t.start()
    try:
        c.sock.settimeout(1.0)
        assert c.consultar(bytes(10)) == pytest.approx((1.0, 2.0)) and c.sin_respuesta == 0     # una respuesta lo reinicia
    finally:
        parar.set(); t.join(1)
