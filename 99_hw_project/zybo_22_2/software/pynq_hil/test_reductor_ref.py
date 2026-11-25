import numpy as np
from reductor_ref import reducir

def test_constante():
    t = np.full((720, 1280, 3), 77, np.uint8)
    assert (reducir(t) == 77).all()

def test_solo_cuenta_el_recorte():
    t = np.zeros((720, 1280, 3), np.uint8); t[:, :160] = 255; t[:, 1120:] = 255
    assert reducir(t).max() == 0

def test_media_de_bloque_y_orden():
    t = np.zeros((720, 1280, 3), np.uint8)
    t[:30, 160:190, 1] = 200            # primer bloque, canal G
    r = reducir(t)
    assert r.shape == (24, 32, 3) and r[0, 0, 1] == 200 and r.sum() == 200

def test_tabla():
    t = np.full((720, 1280, 3), 10, np.uint8)
    assert (reducir(t, list(range(255, -1, -1))) == 245).all()

def test_lineal_usa_solo_el_centro_del_bloque():
    from reductor_ref import reducir_lineal
    t = np.zeros((720, 1280, 3), np.uint8)
    t[0:30, 160:190] = 255; t[14:16, 174:176] = 100        # bloque (0,0): marco blanco salvo el centro 2x2 a 100
    t[14:16, 174:176] = 100
    assert reducir_lineal(t)[0, 0, 0] == 100 and reducir(t)[0, 0, 0] > 200
