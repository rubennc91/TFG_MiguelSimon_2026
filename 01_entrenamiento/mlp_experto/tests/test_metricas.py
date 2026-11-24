import numpy as np
import pytest

from mlp_experto.metricas import metricas


def test_metricas_conocidas():
    y = np.array([[5.0, 0.0], [10.0, 1.0], [4.0, -1.0], [6.0, 0.5]], np.float32)
    p = y + np.array([[1.0, 0.1], [-1.0, -0.1], [1.0, 0.1], [-1.0, -0.1]], np.float32)
    kappa = np.array([0.0, 0.0, 0.3, 0.3])
    m = metricas(y, p, kappa)
    assert m["rmse_v"] == pytest.approx(1.0) and m["mae_v"] == pytest.approx(1.0)
    assert m["rmse_w"] == pytest.approx(0.1) and m["mae_w"] == pytest.approx(0.1)
    assert m["v_real_curvas_cerradas"] == pytest.approx(5.0) and m["v_pred_curvas_cerradas"] == pytest.approx(5.0)
    assert m["corr_v"] > 0.9 and m["n"] == 4


def test_linea_base_constante():
    y = np.array([[5.0, 0.0], [7.0, 1.0], [9.0, -1.0]], np.float32)
    m = metricas(y, y, np.zeros(3))
    assert m["rmse_v"] == 0 and m["base_rmse_v"] == pytest.approx(np.std([5, 7, 9]))      # predecir la media
    assert m["base_rmse_w"] == pytest.approx(np.std([0, 1, -1]))


def test_sin_curvas_cerradas_da_nan():
    y = np.array([[5.0, 0.0], [7.0, 1.0]], np.float32)
    m = metricas(y, y, np.zeros(2))
    assert np.isnan(m["v_real_curvas_cerradas"]) and np.isnan(m["v_pred_curvas_cerradas"])


def test_pesos_de_curva():
    from mlp_experto.metricas import pesos_de_curva
    w = pesos_de_curva(np.array([0.0, 0.1, 0.2, -0.3]), factor=4.0)
    assert w.tolist() == [1.0, 1.0, 4.0, 4.0]                      # |k| >= 0,15 pesa `factor` veces (el signo no importa)
    assert pesos_de_curva(np.array([0.5]), factor=1.0).tolist() == [1.0]
