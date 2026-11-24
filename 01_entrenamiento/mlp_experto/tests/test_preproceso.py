import math

import numpy as np
import pytest

from mlp_experto.preproceso import (W_MAX, W_MIN, V_MAX, V_MIN, desnormalizar, imagen_a_vector, normalizar)


def test_orden_planar_como_el_controlador():
    """f1_controller.cpp: bytes[y*16+x] = R, bytes[192+...] = G, bytes[384+...] = B (planar, por filas)."""
    img = np.zeros((12, 16, 3), np.uint8)
    for y in range(12):
        for x in range(16):
            img[y, x] = (y * 16 + x, 100 + y, 200 + x)      # R, G, B distintos en cada píxel
    v = imagen_a_vector(img)
    assert v.shape == (576,) and v.dtype == np.float32
    for y, x in ((0, 0), (0, 15), (11, 0), (5, 7), (11, 15)):
        i = y * 16 + x
        assert v[i] == pytest.approx((y * 16 + x) / 255)
        assert v[192 + i] == pytest.approx((100 + y) / 255)
        assert v[384 + i] == pytest.approx((200 + x) / 255)


def test_rango_de_la_entrada():
    v = imagen_a_vector(np.full((12, 16, 3), 255, np.uint8))
    assert v.min() == 1.0 and v.max() == 1.0
    assert imagen_a_vector(np.zeros((12, 16, 3), np.uint8)).max() == 0.0


def test_forma_incorrecta_falla():
    with pytest.raises(ValueError):
        imagen_a_vector(np.zeros((16, 12, 3), np.uint8))


def test_normalizacion_desplegada():
    """El servidor Verilator decodifica v en [-0,6, 13] y w en [-pi, pi]: v_norm 0,41279 -> 5,01 m/s."""
    assert (V_MIN, V_MAX) == (-0.6, 13.0) and (W_MIN, W_MAX) == (-math.pi, math.pi)
    v, w = desnormalizar(np.array([0.41279]), np.array([0.5]))
    assert v[0] == pytest.approx(5.01, abs=0.01) and w[0] == pytest.approx(0.0, abs=1e-6)


def test_ida_y_vuelta_y_extremos():
    v = np.array([-0.6, 0.0, 5.0, 12.0, 13.0]); w = np.array([-math.pi, -1.0, 0.0, 1.0, math.pi])
    vn, wn = normalizar(v, w)
    assert vn.min() == pytest.approx(0.0) and vn.max() == pytest.approx(1.0)
    assert wn.min() == pytest.approx(0.0) and wn.max() == pytest.approx(1.0)
    v2, w2 = desnormalizar(vn, wn)
    assert np.allclose(v, v2) and np.allclose(w, w2)


def test_otras_resoluciones_mantienen_el_orden_planar():
    img = np.zeros((24, 32, 3), np.uint8)
    for y in range(24):
        for x in range(32):
            img[y, x] = (y, x, 7)
    v = imagen_a_vector(img, tam=(32, 24))
    assert v.shape == (3 * 32 * 24,)
    assert v[5 * 32 + 9] == pytest.approx(5 / 255)                       # R en (y=5, x=9)
    assert v[32 * 24 + 5 * 32 + 9] == pytest.approx(9 / 255)             # G
    assert v[2 * 32 * 24 + 5 * 32 + 9] == pytest.approx(7 / 255)         # B
    with pytest.raises(ValueError):
        imagen_a_vector(img)                                              # por defecto espera 16x12
