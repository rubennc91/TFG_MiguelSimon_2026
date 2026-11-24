import csv

import numpy as np
import pytest

from generador_experto.estadisticas import calcular, comprobar_criterios, comprobar_cuotas

BUENO = dict(n=1000, frac_v_menor_6=0.20, frac_w_mayor_1=0.12, sd_w=0.7, corr_v_kappa=-0.8, v_medio_curvas_cerradas=4.2)


def test_cumple():
    assert comprobar_criterios(BUENO) == []


@pytest.mark.parametrize("campo,valor", [
    ("frac_v_menor_6", 0.10), ("frac_w_mayor_1", 0.05), ("sd_w", 0.4),
    ("corr_v_kappa", 0.1), ("v_medio_curvas_cerradas", 6.0),
])
def test_un_fallo_por_criterio(campo, valor):
    fallos = comprobar_criterios({**BUENO, campo: valor})
    assert len(fallos) == 1 and campo in fallos[0]


def test_sin_curvas_cerradas_es_fallo():
    fallos = comprobar_criterios({**BUENO, "v_medio_curvas_cerradas": float("nan")})
    assert len(fallos) == 1 and "v_medio_curvas_cerradas" in fallos[0]


def escribir(carpeta, v, w, kappa, tipo="limpio", curva=None, segmento=None, circuito="c", sentido=1):
    carpeta.mkdir(parents=True)
    with open(carpeta / "data.csv", "w", newline="") as f:
        e = csv.writer(f); e.writerow(["image_name", "v", "w"])
        for i, (a, b) in enumerate(zip(v, w)):
            e.writerow([f"{i:06d}.png", a, b])
    with open(carpeta / "meta.csv", "w", newline="") as f:
        e = csv.writer(f); e.writerow(["image_name", "circuito", "sentido", "tipo", "x", "y", "cte", "v_real", "kappa", "curva", "segmento"])
        for i, k in enumerate(kappa):
            e.writerow([f"{i:06d}.png", circuito, sentido, tipo, 0, 0, 0, 0, k,
                        -1 if curva is None else curva[i], 0 if segmento is None else segmento[i]])


def test_calcular_valores(tmp_path):
    n = 1000
    kappa = np.r_[np.full(100, 0.25), np.zeros(900)]
    v = np.where(kappa > 0.2, 4.0, 9.0)
    w = np.r_[np.full(120, 1.5), np.zeros(880)]
    escribir(tmp_path / "a_s+1_limpio_0", v, w, kappa)
    escribir(tmp_path / "a_s+1_ruido_0", v, w, kappa, tipo="ruido")
    est = calcular([tmp_path])                       # busca data.csv de forma recursiva
    assert est["n"] == 2 * n
    assert est["frac_v_menor_6"] == pytest.approx(0.10)
    assert est["frac_w_mayor_1"] == pytest.approx(0.12)
    assert est["sd_w"] == pytest.approx(np.std(w), rel=1e-6)
    assert est["corr_v_kappa"] < -0.9
    assert est["v_medio_curvas_cerradas"] == pytest.approx(4.0)
    assert est["por_tipo"] == {"limpio": n, "ruido": n}


def test_sin_datos(tmp_path):
    with pytest.raises(ValueError):
        calcular([])
    with pytest.raises(ValueError):
        calcular([tmp_path])


def test_frac_curva_y_repeticiones(tmp_path):
    n = 600
    kappa = np.r_[np.full(300, 0.3), np.zeros(300)]                 # 50 % de filas en curva (|k| > 0,15)
    curva = np.r_[np.full(300, 40), np.full(300, -1)]
    segmento = np.r_[np.repeat([1, 2, 3], 100), np.zeros(300, int)]  # 3 segmentos distintos hacia la curva 40
    escribir(tmp_path / "x_s+1_reinicio_0", np.full(n, 5.0), np.zeros(n), kappa, tipo="reinicio", curva=curva, segmento=segmento, circuito="x")
    escribir(tmp_path / "x_s+1_reinicio_1", np.full(n, 5.0), np.zeros(n), kappa, tipo="reinicio", curva=curva, segmento=segmento, circuito="x")
    est = calcular([tmp_path])
    assert est["frac_curva"] == pytest.approx(0.5)
    assert est["repeticiones_por_curva"] == {"x|1|40": 6}           # 3 segmentos en cada una de las 2 carpetas


def test_cuotas_cumplidas_y_fallos():
    est = dict(frac_curva=0.4, repeticiones_por_curva={"x|1|40": 35, "x|1|90": 31})
    esperadas = {("x", 1): [40, 90]}
    assert comprobar_cuotas(est, esperadas) == []
    fallos = comprobar_cuotas({**est, "frac_curva": 0.6}, esperadas)
    assert len(fallos) == 1 and "frac_curva" in fallos[0]
    fallos = comprobar_cuotas({**est, "repeticiones_por_curva": {"x|1|40": 35, "x|1|90": 12}}, esperadas)
    assert len(fallos) == 1 and "x|1|90" in fallos[0] and "12" in fallos[0]
    fallos = comprobar_cuotas({**est, "repeticiones_por_curva": {"x|1|40": 35}}, esperadas)    # curva sin ninguna repetición
    assert len(fallos) == 1 and "x|1|90" in fallos[0] and "0" in fallos[0]
