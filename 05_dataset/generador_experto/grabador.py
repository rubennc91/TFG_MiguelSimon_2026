"""Grabación del dataset: formato de imagen de la red, filtros y reanudación segura."""
import csv
import os
from pathlib import Path
from typing import Optional

import cv2
import numpy as np

COMPLETA_CADA = 50
V_PARADO, V_ORDEN_AVANCE = 0.3, 2.0
CTE_MAX, T_REINICIO, DESFASE_MAX, PIXEL_MIN = 1.4, 2.0, 0.1, 2.0
META_COLUMNAS = ["image_name", "circuito", "sentido", "tipo", "x", "y", "cte", "v_real", "kappa", "curva", "segmento"]


def imagen_red(bgr: np.ndarray, tam: tuple = (16, 12)) -> np.ndarray:
    """Misma operación que el controlador en simulación: 640x480 BGR -> `tam` (ancho, alto) con INTER_LINEAR; devuelve RGB."""
    return cv2.resize(bgr, tam, interpolation=cv2.INTER_LINEAR)[..., ::-1].copy()


def carpeta_imagenes(tam: tuple) -> str:
    """16x12 conserva el nombre de siempre ('imagenes'); el resto, 'imagenes_<ancho>x<alto>'."""
    return "imagenes" if tuple(tam) == (16, 12) else f"imagenes_{tam[0]}x{tam[1]}"


def motivo_descarte(meta: dict) -> Optional[str]:
    if meta["media_pixel"] < PIXEL_MIN:
        return "imagen_negra"
    if abs(meta["desfase_odom"]) > DESFASE_MAX:
        return "desfase"
    if meta["t_desde_reinicio"] < T_REINICIO:
        return "reinicio"
    if meta["v_real"] < V_PARADO and meta["v_ord"] > V_ORDEN_AVANCE:
        return "parado"
    if abs(meta["cte"]) > CTE_MAX:
        return "cte"
    return None


class Grabador:
    def __init__(self, raiz: Path, circuito: str, sentido: int, modo: str, resoluciones: tuple = ((16, 12),)):
        self.circuito, self.sentido, self.modo = circuito, sentido, modo
        self.resoluciones = tuple(tuple(r) for r in resoluciones)
        raiz = Path(raiz)
        raiz.mkdir(parents=True, exist_ok=True)
        n = 0
        while True:                              # primer sufijo libre: nunca se sobrescribe nada
            self.carpeta = raiz / f"{circuito}_s{sentido:+d}_{modo}_{n}"
            try:
                self.carpeta.mkdir()
                break
            except FileExistsError:
                n += 1
        carpetas = [self.carpeta / carpeta_imagenes(r) for r in self.resoluciones] + [self.carpeta / "completas"]
        for d in carpetas:
            d.mkdir()
        for d in [self.carpeta] + carpetas:
            os.chmod(d, 0o777)               # el contenedor es root: que el anfitrión pueda borrar
        self._f_data = open(self.carpeta / "data.csv", "w", newline="")
        self._f_meta = open(self.carpeta / "meta.csv", "w", newline="")
        self._data, self._meta = csv.writer(self._f_data), csv.writer(self._f_meta)
        self._data.writerow(["image_name", "v", "w"])
        self._meta.writerow(META_COLUMNAS)
        self.n = 0
        self.descartes = {}

    def escribir(self, bgr: np.ndarray, v: float, w: float, meta: dict) -> bool:
        meta = dict(meta)
        meta.setdefault("media_pixel", float(bgr.mean()))
        motivo = motivo_descarte(meta)
        if motivo:
            self.descartes[motivo] = self.descartes.get(motivo, 0) + 1
            return False
        nombre = f"{self.n:06d}.png"
        for r in self.resoluciones:
            cv2.imwrite(str(self.carpeta / carpeta_imagenes(r) / nombre), imagen_red(bgr, r)[..., ::-1])   # imwrite espera BGR
        self._data.writerow([nombre, f"{v:.4f}", f"{w:.4f}"])
        self._meta.writerow([nombre, self.circuito, self.sentido, self.modo, f"{meta['x']:.3f}", f"{meta['y']:.3f}",
                             f"{meta['cte']:.3f}", f"{meta['v_real']:.3f}", f"{meta['kappa']:.4f}",
                           meta.get("curva", -1), meta.get("segmento", 0)])
        self.n += 1
        self._f_data.flush()             # cada fila a disco: si el nodo muere, lo grabado se conserva
        self._f_meta.flush()
        if self.n % COMPLETA_CADA == 0:
            cv2.imwrite(str(self.carpeta / "completas" / nombre), bgr)
        return True

    def cerrar(self) -> None:
        self._f_data.close()
        self._f_meta.close()
