import math
from pathlib import Path

import numpy as np
import pytest

from generador_experto.circuito import Circuito
from generador_experto.experto import Experto
from generador_experto.perturbaciones import Reinicio, RuidoOU, muestrear_reinicio
from generador_experto.tests.test_experto import anillo

DATOS = Path(__file__).resolve().parent.parent / "datos" / "circuitos"


def test_ou_media_y_desviacion():
    r = RuidoOU(sigma_w=0.6, seed=1)
    w = np.array([r.paso()[0] for _ in range(20000)])
    assert abs(w.mean()) < 0.1
    assert abs(w.std() - 0.6) / 0.6 < 0.15


def test_ou_correlacion_temporal():
    r = RuidoOU(seed=2)
    w = np.array([r.paso()[0] for _ in range(20000)])
    assert np.corrcoef(w[:-1], w[1:])[0, 1] > 0.9


def test_ou_semilla():
    a = [RuidoOU(seed=3).paso() for _ in range(1)]
    b = [RuidoOU(seed=3).paso() for _ in range(1)]
    r1, r2 = RuidoOU(seed=7), RuidoOU(seed=7)
    assert [r1.paso() for _ in range(50)] == [r2.paso() for _ in range(50)]
    assert a == b


def test_reinicio_en_rango():
    c = Circuito.cargar(DATOS / "montmelo.npz")
    e = Experto(c)
    rng = np.random.default_rng(0)
    for _ in range(500):
        r = muestrear_reinicio(e, rng, en_curva=True)
        assert isinstance(r, Reinicio)
        i = int(np.argmin(np.hypot(e.puntos[:, 0] - r.x, e.puntos[:, 1] - r.y)))
        t = e.puntos[(i + 1) % e.n] - e.puntos[i]
        normal = np.array([-t[1], t[0]]) / np.hypot(*t)
        lateral = float(np.dot([r.x, r.y] - e.puntos[i], normal))
        assert abs(lateral) <= min(1.2, c.holgura[i] - 0.8) + 0.1       # +0,1: el punto más cercano puede no ser el de partida
        err = math.atan2(math.sin(r.yaw - math.atan2(t[1], t[0])), math.cos(r.yaw - math.atan2(t[1], t[0])))
        assert abs(err) <= math.radians(40) + 0.05
        assert 0.0 < r.v0 <= min(1.3 * e.v_ref[i], 13.0) + 1e-6      # nunca por encima del límite de la orden
        adelante = ((r.indice_curva - i) % e.n) * 0.5
        assert 14.0 <= adelante <= 31.0                                 # curva entre 15 y 30 m por delante
        assert abs(e.kappa[r.indice_curva]) > 0.15


def test_reinicio_misma_semilla():
    e = Experto(Circuito.cargar(DATOS / "montmelo.npz"))
    a = muestrear_reinicio(e, np.random.default_rng(5))
    b = muestrear_reinicio(e, np.random.default_rng(5))
    assert a == b


def test_reinicio_sin_curva_falla():
    e = Experto(anillo(100.0))                      # |k| = 0,01: ninguna curva > 0,15
    with pytest.raises(ValueError, match="curva"):
        muestrear_reinicio(e, np.random.default_rng(0), en_curva=True)


def test_reinicio_libre_funciona_sin_curvas():
    e = Experto(anillo(100.0))
    r = muestrear_reinicio(e, np.random.default_rng(0), en_curva=False)
    assert 0.0 < r.v0 <= 1.3 * e.v_ref.max() + 1e-6


def test_aplicar_ruido_perturba_el_comando():
    from generador_experto.perturbaciones import aplicar_ruido
    r = RuidoOU(sigma_w=0.6, seed=4)
    v, w = aplicar_ruido(8.0, 0.3, cte=0.2, ruido=r)
    assert (v, w) != (8.0, 0.3)


def test_aplicar_ruido_no_perturba_si_el_desvio_es_grande():
    from generador_experto.perturbaciones import aplicar_ruido
    r = RuidoOU(seed=4)
    assert aplicar_ruido(8.0, 0.3, cte=1.1, ruido=r) == (8.0, 0.3)
    assert aplicar_ruido(8.0, 0.3, cte=-1.1, ruido=r) == (8.0, 0.3)


def test_aplicar_ruido_respeta_limites():
    from generador_experto.perturbaciones import aplicar_ruido
    r = RuidoOU(sigma_w=50.0, sigma_v=50.0, seed=1)
    for _ in range(500):
        v, w = aplicar_ruido(12.9, 3.1, cte=0.0, ruido=r)
        assert 0.5 <= v <= 13.0 and abs(w) <= 3.14


def test_entradas_de_curva():
    from generador_experto.perturbaciones import entradas_de_curva
    k = np.zeros(100)
    k[10:15] = 0.3
    k[50:52] = -0.2                       # el signo no importa
    k[99] = 0.3; k[0] = 0.3               # curva que cruza el final del lazo: una sola entrada, en 99
    assert list(entradas_de_curva(k)) == [10, 50, 99]


def test_entradas_de_curva_fusiona_las_cercanas():
    from generador_experto.perturbaciones import entradas_de_curva
    k = np.zeros(400)
    k[10:14] = 0.3; k[20:24] = 0.3        # a 10 puntos (5 m): la misma curva
    k[200:204] = 0.3                      # otra curva, lejos
    assert list(entradas_de_curva(k, separacion=60)) == [10, 200]
    assert list(entradas_de_curva(k)) == [10, 20, 200]          # sin fusionar, como antes


def test_entradas_de_curva_fusiona_a_traves_del_final_del_lazo():
    from generador_experto.perturbaciones import entradas_de_curva
    k = np.zeros(400)
    k[3:6] = 0.3; k[385:388] = 0.3        # distan 18 puntos pasando por el final del lazo
    assert list(entradas_de_curva(k, separacion=60)) == [385]


def test_reinicio_elige_entre_curvas_fusionadas():
    c = anillo(40.0)
    k = np.zeros(len(c.kappa)); k[100:104] = 0.3; k[110:114] = 0.3; k[200:204] = 0.3
    e = Experto(Circuito(c.nombre, c.puntos, k, c.holgura, c.salida))
    rng = np.random.default_rng(0)
    elegidas = [muestrear_reinicio(e, rng).indice_curva for _ in range(400)]
    frac_200 = elegidas.count(200) / 400
    assert 0.4 < frac_200 < 0.6           # dos curvas distintas, no tres: la doble no pesa el doble


def test_reinicio_solo_en_las_curvas_pedidas():
    c = anillo(40.0)
    k = np.zeros(len(c.kappa)); k[100:104] = 0.3; k[200:204] = 0.3; k[300:304] = 0.3
    e = Experto(Circuito(c.nombre, c.puntos, k, c.holgura, c.salida))
    rng = np.random.default_rng(0)
    elegidas = {muestrear_reinicio(e, rng, curvas=[100, 300]).indice_curva for _ in range(200)}
    assert elegidas == {100, 300}


def test_reinicio_con_curva_inexistente_falla():
    c = anillo(40.0)
    k = np.zeros(len(c.kappa)); k[100:104] = 0.3
    e = Experto(Circuito(c.nombre, c.puntos, k, c.holgura, c.salida))
    with pytest.raises(ValueError, match="curva"):
        muestrear_reinicio(e, np.random.default_rng(0), curvas=[999])
