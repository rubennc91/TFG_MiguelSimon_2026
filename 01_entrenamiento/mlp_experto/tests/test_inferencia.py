import cv2
import numpy as np
import pytest
import torch

from mlp_experto.entrenar import construir_modelo
from mlp_experto.inferencia import MLPNumpy, decodificar, exportar_pesos, vector_desde_bgr
from mlp_experto.preproceso import imagen_a_vector


def test_numpy_igual_que_torch(tmp_path):
    torch.manual_seed(0)
    m = construir_modelo().eval()
    exportar_pesos(m, tmp_path / "p.npz")
    x = np.random.default_rng(0).random((7, 576)).astype(np.float32)
    ref = m(torch.from_numpy(x)).detach().numpy()
    got = MLPNumpy(tmp_path / "p.npz")(x)
    assert np.allclose(ref, got, atol=1e-5)
    assert np.allclose(ref[0], MLPNumpy(tmp_path / "p.npz")(x[0]), atol=1e-5)          # también un solo vector


def test_vector_desde_bgr_como_el_controlador():
    bgr = np.random.default_rng(1).integers(0, 255, (480, 640, 3), dtype=np.uint8)
    esperado = imagen_a_vector(cv2.resize(bgr, (16, 12), interpolation=cv2.INTER_LINEAR)[..., ::-1])
    assert np.array_equal(vector_desde_bgr(bgr), esperado)


def test_decodificar_satura_y_desnormaliza():
    v, w = decodificar(np.array([0.41279, 0.5]))
    assert v == pytest.approx(5.01, abs=0.01) and w == pytest.approx(0.0, abs=1e-6)
    v, w = decodificar(np.array([1.7, -0.3]))
    assert v == pytest.approx(13.0) and w == pytest.approx(-np.pi)        # el servidor satura a [0, 1]


def test_vector_desde_bgr_32x24():
    bgr = np.random.default_rng(2).integers(0, 255, (480, 640, 3), dtype=np.uint8)
    esperado = imagen_a_vector(cv2.resize(bgr, (32, 24), interpolation=cv2.INTER_LINEAR)[..., ::-1], tam=(32, 24))
    assert np.array_equal(vector_desde_bgr(bgr, tam=(32, 24)), esperado) and esperado.shape == (2304,)


def test_limitar_velocidad():
    from mlp_experto.inferencia import limitar_velocidad
    assert limitar_velocidad(9.0, 6.0) == 6.0
    assert limitar_velocidad(4.0, 6.0) == 4.0
    assert limitar_velocidad(9.0, 0.0) == 9.0           # 0 = sin tope
    assert limitar_velocidad(-0.5, 6.0) == -0.5          # la marcha atrás no se toca


def test_conjunto_promedia_las_salidas(tmp_path):
    import torch
    from mlp_experto.inferencia import Conjunto
    torch.manual_seed(1)
    ms = [construir_modelo().eval() for _ in range(3)]
    rutas = []
    for i, m in enumerate(ms):
        exportar_pesos(m, tmp_path / f"{i}.npz"); rutas.append(tmp_path / f"{i}.npz")
    x = np.random.default_rng(3).random(576).astype(np.float32)
    esperado = np.mean([m(torch.from_numpy(x)).detach().numpy() for m in ms], axis=0)
    assert np.allclose(Conjunto(rutas)(x), esperado, atol=1e-5)


def test_filtro_ema():
    from mlp_experto.inferencia import FiltroEMA
    f = FiltroEMA(0.5)
    assert f.paso(4.0, 2.0) == (4.0, 2.0)                           # la primera orden pasa tal cual
    assert f.paso(8.0, 0.0) == pytest.approx((6.0, 1.0))             # 0,5·anterior + 0,5·nueva
    assert FiltroEMA(0.0).paso(1.0, 1.0) == (1.0, 1.0)
    f0 = FiltroEMA(0.0); f0.paso(1.0, 1.0)
    assert f0.paso(9.0, 3.0) == (9.0, 3.0)                           # alfa 0 = sin suavizado
    with pytest.raises(ValueError):
        FiltroEMA(1.0)


def test_cnn_numpy_igual_que_torch(tmp_path):
    from mlp_experto.cnn import construir_cnn, exportar_cnn
    from mlp_experto.inferencia import cargar_red
    torch.manual_seed(0)
    m = construir_cnn((32, 24)).eval()
    exportar_cnn(m, tmp_path / "p.npz")
    x = np.random.default_rng(0).random((5, 3 * 32 * 24)).astype(np.float32)
    ref = m(torch.from_numpy(x)).detach().numpy()
    red = cargar_red(tmp_path / "p.npz", (32, 24))
    assert np.allclose(ref, red(x), atol=1e-4)
    assert np.allclose(ref[0], red(x[0]), atol=1e-4)          # también un solo vector


def test_cargar_red_distingue_mlp(tmp_path):
    from mlp_experto.inferencia import cargar_red
    exportar_pesos(construir_modelo(), tmp_path / "m.npz")
    assert isinstance(cargar_red(tmp_path / "m.npz", (16, 12)), MLPNumpy)
