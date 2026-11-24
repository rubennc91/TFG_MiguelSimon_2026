"""Experto geométrico: sigue la línea central y frena en las curvas.

Lógica pura (solo numpy), sin ROS: se prueba sin Gazebo.
  - dirección: persecución de puntos sobre la línea central;
  - velocidad: v(s) = min(vmax, sqrt(alat/|k|)) con límites de aceleración y de
    frenada aplicados hacia delante y hacia atrás sobre el lazo cerrado.
"""
import math
from dataclasses import dataclass

import numpy as np

from generador_experto.circuito import PASO, Circuito

V_MIN_ORDEN, V_MAX_ORDEN = -1.0, 13.0


def perfil_velocidad(kappa: np.ndarray, ds: float, vmax: float, vmin: float, alat: float,
                     aacc: float, afren: float) -> np.ndarray:
    v = np.clip(np.sqrt(alat / np.maximum(np.abs(kappa), 1e-6)), vmin, vmax)
    n = len(v)
    for _ in range(3):                       # varias pasadas para cerrar el lazo
        for i in range(2 * n):               # hacia atrás: frenar antes de la curva
            a, b = (-i - 1) % n, (-i) % n
            v[a] = min(v[a], math.sqrt(v[b] ** 2 + 2 * afren * ds))
        for i in range(2 * n):               # hacia delante: acelerar al salir
            a, b = i % n, (i + 1) % n
            v[b] = min(v[b], math.sqrt(v[a] ** 2 + 2 * aacc * ds))
    return v


@dataclass
class Orden:
    v: float
    w: float
    idx: int
    cte: float      # error lateral con signo respecto a la línea central (m)
    v_ref: float
    kappa: float


class Experto:
    def __init__(self, circuito: Circuito, sentido: int = 1, vmax: float = 12.0, vmin: float = 2.0,
                 alat: float = 5.0, aacc: float = 3.0, afren: float = 4.0, ld0: float = 1.2,
                 ld1: float = 0.25, wmax: float = 3.14):
        if sentido not in (1, -1):
            raise ValueError("sentido debe ser 1 o -1")
        if sentido == 1:
            self.puntos, self.kappa = circuito.puntos.copy(), circuito.kappa.copy()
            self.holgura = circuito.holgura.copy()
        else:                                # se recorre al revés: la curvatura cambia de signo y el perfil se recalcula
            self.puntos, self.kappa = circuito.puntos[::-1].copy(), -circuito.kappa[::-1]
            self.holgura = circuito.holgura[::-1].copy()
        self.ds, self.ld0, self.ld1, self.wmax = PASO, ld0, ld1, wmax
        self.v_ref = perfil_velocidad(self.kappa, self.ds, vmax, vmin, alat, aacc, afren)
        self.n = len(self.puntos)
        self.idx = None

    def reiniciar(self) -> None:
        """Vuelve a la búsqueda global del punto más cercano (tras un cambio brusco de pose)."""
        self.idx = None

    def _vecino(self, x: float, y: float) -> int:
        if self.idx is None:
            return int(np.argmin(np.hypot(self.puntos[:, 0] - x, self.puntos[:, 1] - y)))
        w = np.arange(self.idx - 10, self.idx + 60) % self.n
        return int(w[np.argmin(np.hypot(self.puntos[w, 0] - x, self.puntos[w, 1] - y))])

    def orden(self, x: float, y: float, yaw: float) -> Orden:
        self.idx = self._vecino(x, y)
        i = self.idx
        v = float(np.clip(self.v_ref[i], V_MIN_ORDEN, V_MAX_ORDEN))
        ld = self.ld0 + self.ld1 * v
        j = (i + int(ld / self.ds)) % self.n
        dx, dy = self.puntos[j, 0] - x, self.puntos[j, 1] - y
        alfa = math.atan2(dy, dx) - yaw
        alfa = math.atan2(math.sin(alfa), math.cos(alfa))
        curv = 2 * math.sin(alfa) / max(math.hypot(dx, dy), 0.5)
        w = max(-self.wmax, min(self.wmax, v * curv))
        tx, ty = self.puntos[(i + 1) % self.n] - self.puntos[i]
        cte = (-(x - self.puntos[i, 0]) * ty + (y - self.puntos[i, 1]) * tx) / math.hypot(tx, ty)
        return Orden(v, w, i, float(cte), float(self.v_ref[i]), float(self.kappa[i]))
