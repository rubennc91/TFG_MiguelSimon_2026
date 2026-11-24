import math

import numpy as np

from generador_experto.circuito import Circuito
from generador_experto.experto import Experto, Orden, perfil_velocidad

PARAMS = dict(ds=0.5, vmax=12.0, vmin=2.0, alat=5.0, aacc=3.0, afren=4.0)


def anillo(R: float, kappa_const=None) -> Circuito:
    n = round(2 * math.pi * R / 0.5)
    a = 2 * math.pi * np.arange(n) / n
    puntos = np.c_[R * np.cos(a), R * np.sin(a)]
    k = np.full(n, 1 / R if kappa_const is None else kappa_const)
    t = puntos[1] - puntos[0]
    return Circuito("anillo", puntos, k, np.full(n, 1.5), (R, 0.0, math.atan2(t[1], t[0])))


def test_recta_va_a_vmax():
    v = perfil_velocidad(np.zeros(100), **PARAMS)
    assert np.allclose(v, 12.0)


def test_curva_constante():
    v = perfil_velocidad(np.full(200, 0.2), **PARAMS)
    assert np.allclose(v, math.sqrt(5.0 / 0.2), atol=1e-6)


def test_frenada_respetada():
    k = np.zeros(300)
    k[150:160] = 0.33
    v = perfil_velocidad(k, **PARAMS)
    nxt = np.roll(v, -1)
    assert np.all(v ** 2 <= nxt ** 2 + 2 * 4.0 * 0.5 + 1e-6)      # frenada máxima
    assert np.all(nxt ** 2 <= v ** 2 + 2 * 3.0 * 0.5 + 1e-6)      # aceleración máxima
    assert v[155] < 5.0 and v[0] > 11.0                            # frena en la curva y recupera


def circuito_con_curva() -> Circuito:
    c = anillo(40.0)
    k = np.zeros(len(c.kappa))
    k[100:110] = 0.33
    return Circuito(c.nombre, c.puntos, k, c.holgura, c.salida)


def test_sentido_inverso():
    c = circuito_con_curva()
    d, r = Experto(c, sentido=1), Experto(c, sentido=-1)
    assert np.allclose(r.puntos, d.puntos[::-1])
    # la frenada y la aceleración se intercambian: no es la inversión del perfil directo
    assert not np.allclose(r.v_ref, d.v_ref[::-1], atol=1e-3)
    # recalculado sobre la curvatura invertida
    assert np.allclose(r.v_ref, perfil_velocidad(np.abs(c.kappa[::-1]), **PARAMS))


def test_w_segun_el_sentido():
    c = anillo(30.0)
    k = 40
    p = c.puntos[k]
    t = c.puntos[k + 1] - c.puntos[k]
    fuera = p / np.hypot(*p) * 0.5                                   # 0,5 m hacia fuera
    ccw = math.atan2(t[1], t[0])
    o1 = Experto(c, sentido=1).orden(p[0] + fuera[0], p[1] + fuera[1], ccw)
    o2 = Experto(c, sentido=-1).orden(p[0] + fuera[0], p[1] + fuera[1], ccw + math.pi)
    assert o1.w > 0 and o2.w < 0          # antihorario gira a la izquierda; horario, a la derecha


def test_orden_sobre_la_linea():
    c = anillo(200.0)
    k = 300
    t = c.puntos[k + 1] - c.puntos[k]
    o = Experto(c).orden(c.puntos[k][0], c.puntos[k][1], math.atan2(t[1], t[0]))
    assert isinstance(o, Orden)
    assert abs(o.cte) < 0.05 and abs(o.w) < 0.1 and o.idx == k


def test_limites():
    c = anillo(30.0)
    e = Experto(c)
    o = e.orden(c.puntos[10][0] + 1.4, c.puntos[10][1], math.pi)     # mal orientado y descentrado
    assert -1.0 <= o.v <= 13.0 and abs(o.w) <= 3.14 + 1e-9
    assert abs(o.w) == 3.14                  # coche de cara a la pared: gira al máximo
