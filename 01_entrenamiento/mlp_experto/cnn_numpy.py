"""Inferencia de la CNN mínima solo con NumPy (el contenedor de ROS no tiene PyTorch)."""
from pathlib import Path

import numpy as np


def _conv2d(x: np.ndarray, w: np.ndarray, b: np.ndarray, stride: int = 2, pad: int = 1) -> np.ndarray:
    """x (N, C, H, W); w (O, C, k, k). Convolución con padding de ceros mediante ventanas deslizantes."""
    n, c, h, ww = x.shape
    o, _, k, _ = w.shape
    xp = np.pad(x, ((0, 0), (0, 0), (pad, pad), (pad, pad)))
    v = np.lib.stride_tricks.sliding_window_view(xp, (k, k), axis=(2, 3))[:, :, ::stride, ::stride]   # (N, C, Ho, Wo, k, k)
    return np.einsum("nchwij,ocij->nohw", v, w, optimize=True) + b[None, :, None, None]


class CNNNumpy:
    def __init__(self, ruta: Path, tam=(32, 24)):
        z = np.load(ruta)
        self.tam = tam
        self.convs = [(z[f"k{i}w"], z[f"k{i}b"]) for i in range(sum(1 for f in z.files if f.startswith("k") and f.endswith("w")))]
        self.lineales = [(z[f"w{i}"], z[f"b{i}"]) for i in range(sum(1 for f in z.files if f.startswith("w")))]

    def __call__(self, x: np.ndarray) -> np.ndarray:
        un_vector = x.ndim == 1
        x = np.atleast_2d(x).reshape(-1, 3, self.tam[1], self.tam[0]).astype(np.float32)
        for w, b in self.convs:
            x = np.maximum(_conv2d(x, w, b), 0)
        x = x.reshape(len(x), -1)
        for i, (w, b) in enumerate(self.lineales):
            x = x @ w.T + b
            if i < len(self.lineales) - 1:
                x = np.maximum(x, 0)
        return x[0] if un_vector else x
