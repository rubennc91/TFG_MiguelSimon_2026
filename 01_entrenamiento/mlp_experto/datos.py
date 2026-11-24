"""Carga del dataset generado (carpetas con data.csv + meta.csv + imagenes/) como arrays, con caché."""
import csv
from concurrent.futures import ThreadPoolExecutor
from dataclasses import dataclass
from pathlib import Path

import numpy as np
from PIL import Image


@dataclass
class Datos:
    x: np.ndarray        # (N, 576) uint8, planar RGB por filas (orden de la inferencia desplegada)
    y: np.ndarray        # (N, 2) float32: v, w sin normalizar
    kappa: np.ndarray    # (N,) curvatura de la línea central en ese punto
    carpeta: np.ndarray  # (N,) int: de qué carpeta (tarea de generación) sale cada fila


def carpeta_imagenes(tam: tuple) -> str:
    """16x12 conserva el nombre de siempre ('imagenes'); el resto, 'imagenes_<ancho>x<alto>' (como el Grabador)."""
    return "imagenes" if tuple(tam) == (16, 12) else f"imagenes_{tam[0]}x{tam[1]}"


def _leer_carpeta(c: Path, tam: tuple = (16, 12)):
    filas = list(csv.DictReader(open(c / "data.csv")))
    meta = list(csv.DictReader(open(c / "meta.csv")))
    def img(f):
        return np.asarray(Image.open(c / carpeta_imagenes(tam) / f["image_name"]).convert("RGB")).transpose(2, 0, 1).reshape(-1)
    with ThreadPoolExecutor(8) as ex:
        x = list(ex.map(img, filas))
    y = [[float(f["v"]), float(f["w"])] for f in filas]
    k = [float(m["kappa"]) for m in meta]
    return x, y, k


def cargar(raices: list, cache: Path = None, resolucion: tuple = (16, 12)) -> Datos:
    if cache is not None and Path(cache).exists():
        z = np.load(cache)
        if z["x"].shape[1] == 3 * resolucion[0] * resolucion[1]:        # un caché de otra resolución no se reutiliza
            return Datos(z["x"], z["y"], z["kappa"], z["carpeta"])
    carpetas = sorted(p.parent for r in map(Path, raices) for p in r.rglob("data.csv"))
    if not carpetas:
        raise ValueError("no hay ningún data.csv en las rutas dadas")
    xs, ys, ks, ids = [], [], [], []
    for i, c in enumerate(carpetas):
        x, y, k = _leer_carpeta(c, resolucion)
        if len(x) != len(k):
            raise ValueError(f"{c}: data.csv y meta.csv no coinciden")
        xs += x; ys += y; ks += k; ids += [i] * len(x)
    d = Datos(np.array(xs, np.uint8), np.array(ys, np.float32), np.array(ks, np.float32), np.array(ids, np.int32))
    if cache is not None:
        np.savez_compressed(cache, x=d.x, y=d.y, kappa=d.kappa, carpeta=d.carpeta)
    return d


def dividir_por_carpeta(carpeta: np.ndarray, frac_dev: float = 0.1, semilla: int = 0):
    """Índices (entrenamiento, desarrollo) separando por carpeta: fotogramas contiguos son casi idénticos."""
    if frac_dev <= 0:                                  # sin conjunto de desarrollo: todo para entrenar
        return np.arange(len(carpeta)), np.array([], dtype=int)
    ids = np.unique(carpeta)
    rng = np.random.default_rng(semilla)
    n_dev = max(1, int(round(len(ids) * frac_dev)))
    dev_ids = rng.choice(ids, n_dev, replace=False)
    es_dev = np.isin(carpeta, dev_ids)
    return np.flatnonzero(~es_dev), np.flatnonzero(es_dev)
