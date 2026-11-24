"""Inferencia de la MLP solo con NumPy (el contenedor de ROS no tiene PyTorch) y su preprocesado."""
from pathlib import Path

import numpy as np

from mlp_experto.preproceso import desnormalizar, imagen_a_vector


def exportar_pesos(modelo, ruta: Path) -> None:
    """Guarda los pesos de las capas lineales de un nn.Sequential como w0,b0,w1,b1,..."""
    import torch.nn as nn
    capas = [m for m in modelo if isinstance(m, nn.Linear)]
    np.savez(ruta, **{f"{k}{i}": getattr(c, "weight" if k == "w" else "bias").detach().cpu().numpy()
                      for i, c in enumerate(capas) for k in ("w", "b")})


class MLPNumpy:
    def __init__(self, ruta: Path):
        z = np.load(ruta)
        self.capas = [(z[f"w{i}"], z[f"b{i}"]) for i in range(len(z.files) // 2)]

    def __call__(self, x: np.ndarray) -> np.ndarray:
        for i, (w, b) in enumerate(self.capas):
            x = x @ w.T + b
            if i < len(self.capas) - 1:
                x = np.maximum(x, 0)
        return x


def cargar_red(ruta: Path, tam: tuple = (16, 12)):
    """MLP (w0,b0,...) o CNN mínima (k0w,k0b,...,w0,...), según las claves del .npz."""
    if any(f.startswith("k0w") for f in np.load(ruta).files):
        from mlp_experto.cnn_numpy import CNNNumpy
        return CNNNumpy(ruta, tam)
    return MLPNumpy(ruta)


def vector_desde_bgr(bgr: np.ndarray, tam: tuple = (16, 12)) -> np.ndarray:
    """Imagen BGR 640x480 -> 3*ancho*alto valores, con la misma reducción y orden que el controlador desplegado."""
    import cv2
    return imagen_a_vector(cv2.resize(bgr, tam, interpolation=cv2.INTER_LINEAR)[..., ::-1], tam=tam)


def decodificar(salida: np.ndarray) -> tuple:
    """Salida normalizada (v, w) de la red -> m/s y rad/s, saturando a [0, 1] como el servidor."""
    s = np.clip(salida, 0.0, 1.0)
    v, w = desnormalizar(s[0], s[1])
    return float(v), float(w)


def limitar_velocidad(v: float, v_max: float) -> float:
    """Tope de velocidad lineal (v_max = 0: sin tope). No afecta a la marcha atrás."""
    return min(v, v_max) if v_max > 0 else v


class Conjunto:
    """Promedia las salidas normalizadas de varias MLP (mismas entradas y salidas)."""
    def __init__(self, rutas):
        self.redes = [MLPNumpy(r) for r in rutas]

    def __call__(self, x: np.ndarray) -> np.ndarray:
        return np.mean([r(x) for r in self.redes], axis=0)


class FiltroEMA:
    """Suavizado exponencial de las órdenes (v, w): y = alfa·y_anterior + (1-alfa)·nueva. alfa=0: sin suavizado."""
    def __init__(self, alfa: float):
        if not 0.0 <= alfa < 1.0:
            raise ValueError("alfa debe estar en [0, 1)")
        self.alfa, self.estado = alfa, None

    def paso(self, v: float, w: float) -> tuple:
        if self.estado is None:
            self.estado = (v, w)
        else:
            a = self.alfa
            self.estado = (a * self.estado[0] + (1 - a) * v, a * self.estado[1] + (1 - a) * w)
        return self.estado
