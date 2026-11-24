"""Preprocesado del entrenamiento: idéntico al de la inferencia desplegada (controlador + servidor Verilator)."""
import math

import numpy as np

V_MIN, V_MAX = -0.6, 13.0          # decodificación de v en el servidor
W_MIN, W_MAX = -math.pi, math.pi   # decodificación de w en el servidor


def imagen_a_vector(rgb: np.ndarray, tam: tuple = (16, 12)) -> np.ndarray:
    """Imagen (alto, ancho, 3) uint8 RGB -> 3*ancho*alto valores en [0, 1], planar (R, G, B) y por filas,
    como `image_to_rgb_planes`. `tam` = (ancho, alto); por defecto 16x12 (576 valores)."""
    if rgb.shape != (tam[1], tam[0], 3):
        raise ValueError(f"se esperaba {(tam[1], tam[0], 3)}, llegó {rgb.shape}")
    return (rgb.transpose(2, 0, 1).reshape(-1) / 255.0).astype(np.float32)


def normalizar(v, w):
    return (np.asarray(v) - V_MIN) / (V_MAX - V_MIN), (np.asarray(w) - W_MIN) / (W_MAX - W_MIN)


def desnormalizar(vn, wn):
    return np.asarray(vn) * (V_MAX - V_MIN) + V_MIN, np.asarray(wn) * (W_MAX - W_MIN) + W_MIN
