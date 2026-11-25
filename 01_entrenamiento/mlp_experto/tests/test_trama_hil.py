import numpy as np
import pytest
from mlp_experto.trama_hil import a_trama_hil


def test_tamano_y_orden_de_canales():
    bgr = np.zeros((480, 640, 3), np.uint8); bgr[..., 2] = 200          # rojo puro en BGR
    t = a_trama_hil(bgr)
    assert t.shape == (720, 1280, 3) and t.dtype == np.uint8
    assert tuple(t[360, 640]) == (200, 0, 0)                            # RGB: rojo primero


def test_los_bordes_laterales_son_negros():
    t = a_trama_hil(np.full((480, 640, 3), 255, np.uint8))
    assert (t[:, :160] == 0).all() and (t[:, 1120:] == 0).all()
    assert (t[:, 160:1120] == 255).all()


def test_el_recorte_central_es_la_imagen_ampliada():
    bgr = np.zeros((480, 640, 3), np.uint8); bgr[:, :320] = 255
    centro = a_trama_hil(bgr)[:, 160:1120]
    assert centro[:, :470].min() == 255 and centro[:, 490:].max() == 0


def test_rechaza_otro_tamano():
    with pytest.raises(ValueError):
        a_trama_hil(np.zeros((100, 100, 3), np.uint8))


def test_cliente_tcp_envia_la_trama_y_devuelve_v_w():
    import socket, struct, threading
    from mlp_experto.trama_hil import ClienteHilTcp, NB_TRAMA
    srv = socket.socket(); srv.bind(("127.0.0.1", 0)); srv.listen(1)
    recibido = {}

    def servidor():
        c, _ = srv.accept()
        buf = bytearray()
        while len(buf) < NB_TRAMA:
            buf += c.recv(1 << 20)
        recibido["n"] = len(buf); recibido["centro"] = bytes(buf[360 * 3840 + 640 * 3: 360 * 3840 + 640 * 3 + 3])
        c.sendall(struct.pack("<2f", 6.5, -0.25)); c.close()
    threading.Thread(target=servidor, daemon=True).start()
    bgr = np.zeros((480, 640, 3), np.uint8); bgr[..., 2] = 200
    r = ClienteHilTcp("127.0.0.1", srv.getsockname()[1], timeout=5.0).consultar(bgr)
    assert r == (6.5, -0.25) and recibido["n"] == 720 * 1280 * 3 and recibido["centro"] == bytes((200, 0, 0))


def test_cliente_tcp_sin_servidor_devuelve_none():
    from mlp_experto.trama_hil import ClienteHilTcp
    c = ClienteHilTcp("127.0.0.1", 9, timeout=0.3)
    assert c.consultar(np.zeros((480, 640, 3), np.uint8)) is None and c.sin_respuesta == 1
