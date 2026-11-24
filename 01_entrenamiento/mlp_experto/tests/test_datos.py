import csv

import numpy as np
import pytest
from PIL import Image

from mlp_experto.datos import cargar, dividir_por_carpeta


def carpeta(raiz, nombre, n, base, extra=None):
    d = raiz / nombre
    (d / "imagenes").mkdir(parents=True)
    if extra:
        (d / f"imagenes_{extra[0]}x{extra[1]}").mkdir()
    with open(d / "data.csv", "w", newline="") as f, open(d / "meta.csv", "w", newline="") as g:
        a, b = csv.writer(f), csv.writer(g)
        a.writerow(["image_name", "v", "w"]); b.writerow(["image_name", "circuito", "sentido", "tipo", "x", "y", "cte", "v_real", "kappa", "curva", "segmento"])
        for i in range(n):
            img = np.zeros((12, 16, 3), np.uint8); img[:, :, 0] = base + i; img[:, :, 1] = 10; img[:, :, 2] = 20
            Image.fromarray(img).save(d / "imagenes" / f"{i:06d}.png")
            if extra:
                Image.fromarray(np.full((extra[1], extra[0], 3), base + i, np.uint8)).save(d / f"imagenes_{extra[0]}x{extra[1]}" / f"{i:06d}.png")
            a.writerow([f"{i:06d}.png", 5.0 + i, 0.1 * i]); b.writerow([f"{i:06d}.png", "c", 1, "limpio", 0, 0, 0, 0, 0.01 * i, -1, 0])
    return d


def test_cargar(tmp_path):
    carpeta(tmp_path, "c_s+1_limpio_0", 3, 50)
    carpeta(tmp_path, "c_s+1_reinicio_0", 2, 100)
    d = cargar([tmp_path])
    assert d.x.shape == (5, 576) and d.x.dtype == np.uint8 and d.y.shape == (5, 2)
    assert d.x[0, :192].tolist() == [50] * 192 and d.x[0, 192:384].tolist() == [10] * 192 and d.x[0, 384:].tolist() == [20] * 192   # planar RGB
    assert d.y[1].tolist() == pytest.approx([6.0, 0.1])
    assert d.kappa[2] == pytest.approx(0.02)
    assert sorted(set(d.carpeta.tolist())) == [0, 1] and (d.carpeta == 0).sum() in (2, 3)


def test_cache_igual_al_original(tmp_path):
    carpeta(tmp_path / "datos", "c_s+1_limpio_0", 4, 30)
    a = cargar([tmp_path / "datos"], cache=tmp_path / "cache.npz")
    assert (tmp_path / "cache.npz").exists()
    b = cargar([tmp_path / "datos"], cache=tmp_path / "cache.npz")
    assert np.array_equal(a.x, b.x) and np.array_equal(a.y, b.y) and np.array_equal(a.carpeta, b.carpeta)


def test_sin_datos_falla(tmp_path):
    with pytest.raises(ValueError):
        cargar([tmp_path])


def test_division_por_carpeta_sin_solapes():
    carpetas = np.repeat(np.arange(20), 50)                      # 20 carpetas de 50 filas
    entr, dev = dividir_por_carpeta(carpetas, frac_dev=0.2, semilla=0)
    assert not set(carpetas[entr]) & set(carpetas[dev])
    assert len(set(carpetas[dev])) == 4 and len(entr) + len(dev) == len(carpetas)
    e2, d2 = dividir_por_carpeta(carpetas, frac_dev=0.2, semilla=0)
    assert np.array_equal(dev, d2)                                # reproducible


def test_cargar_otra_resolucion(tmp_path):
    carpeta(tmp_path, "c_s+1_limpio_0", 3, 50, extra=(32, 24))
    d = cargar([tmp_path], resolucion=(32, 24))
    assert d.x.shape == (3, 3 * 32 * 24) and d.x[0, 0] == 50 and d.x[2, 0] == 52


def test_cache_distinto_por_resolucion(tmp_path):
    carpeta(tmp_path / "datos", "c_s+1_limpio_0", 2, 50, extra=(32, 24))
    a = cargar([tmp_path / "datos"], cache=tmp_path / "c.npz", resolucion=(16, 12))
    b = cargar([tmp_path / "datos"], cache=tmp_path / "c.npz", resolucion=(32, 24))
    assert a.x.shape[1] == 576 and b.x.shape[1] == 2304                   # el caché no mezcla resoluciones


def test_division_sin_desarrollo():
    carpetas = np.repeat(np.arange(20), 50)
    entr, dev = dividir_por_carpeta(carpetas, frac_dev=0.0, semilla=3)
    assert len(dev) == 0 and np.array_equal(entr, np.arange(len(carpetas)))      # todo para entrenar
