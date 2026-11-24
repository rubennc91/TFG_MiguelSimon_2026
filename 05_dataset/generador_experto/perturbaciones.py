"""Perturbaciones del coche y poses de reinicio (lógica pura, solo numpy)."""
import math
from dataclasses import dataclass

import numpy as np

from generador_experto.circuito import PASO
from generador_experto.experto import Experto

K_CURVA = 0.15            # |k| a partir del cual se considera curva (1/m)
ADELANTE_MIN, ADELANTE_MAX = 15.0, 30.0   # m antes de la curva
LATERAL_MAX, RUMBO_MAX = 1.2, math.radians(40)
V0_MIN, V0_MAX = 0.6, 1.3  # fracción de la velocidad del experto en esa pose
V0_TOPE = 13.0             # límite de la orden
MARGEN_PARED = 0.8         # m: el desplazamiento lateral deja al menos esto de holgura


class RuidoOU:
    """Ruido de Ornstein-Uhlenbeck: suave y correlacionado en el tiempo (std estacionaria = sigma)."""

    def __init__(self, sigma_w: float = 0.6, sigma_v: float = 0.8, tau: float = 1.5, dt: float = 0.05, seed: int = 0):
        self.sigma_w, self.sigma_v, self.tau, self.dt = sigma_w, sigma_v, tau, dt
        self.rng = np.random.default_rng(seed)
        self.w = 0.0
        self.v = 0.0

    def paso(self) -> tuple:
        k = math.sqrt(2 * self.dt / self.tau)
        self.w += -self.w * self.dt / self.tau + self.sigma_w * k * self.rng.standard_normal()
        self.v += -self.v * self.dt / self.tau + self.sigma_v * k * self.rng.standard_normal()
        return float(self.w), float(self.v)


@dataclass
class Reinicio:
    x: float
    y: float
    yaw: float
    v0: float
    indice_curva: int   # índice de entrada de la curva buscada (-1 si no se pidió curva)


SEPARACION_CURVAS = 60   # puntos (30 m): entradas más cercanas se consideran la misma curva


def entradas_de_curva(kappa: np.ndarray, separacion: int = 0) -> np.ndarray:
    """Índices donde empieza cada curva (|k| > K_CURVA tras un tramo recto), con el lazo cerrado.
    Con `separacion` > 0 se fusionan las entradas más cercanas que esa distancia (en puntos)."""
    k = np.abs(kappa)
    ent = np.flatnonzero((k > K_CURVA) & (np.roll(k, 1) <= K_CURVA))
    if separacion <= 0 or len(ent) < 2:
        return ent
    out = [int(ent[0])]
    for i in ent[1:]:
        if i - out[-1] >= separacion:
            out.append(int(i))
    if len(out) > 1 and out[0] + len(k) - out[-1] < separacion:     # misma curva a través del final del lazo
        out.pop(0)
    return np.array(out)


def muestrear_reinicio(experto: Experto, rng: np.random.Generator, en_curva: bool = True, curvas=None) -> Reinicio:
    """`curvas`: restringe la elección a esas entradas de curva (índices de `entradas_de_curva`)."""
    n = experto.n
    entradas = entradas_de_curva(experto.kappa, SEPARACION_CURVAS)
    if curvas is not None:
        desconocidas = sorted(set(map(int, curvas)) - set(map(int, entradas)))
        if desconocidas:
            raise ValueError(f"curva(s) {desconocidas} no son entradas de curva del circuito")
        entradas = np.array(sorted(set(map(int, curvas))))
    if en_curva:
        if len(entradas) == 0:
            raise ValueError(f"el circuito no tiene ninguna curva con |k| > {K_CURVA}")
        j = int(rng.choice(entradas))
        i = (j - int(round(rng.uniform(ADELANTE_MIN, ADELANTE_MAX) / PASO))) % n
    else:
        i, j = int(rng.integers(n)), -1
    t = experto.puntos[(i + 1) % n] - experto.puntos[i]
    t = t / math.hypot(*t)
    normal = np.array([-t[1], t[0]])
    limite = min(LATERAL_MAX, max(float(experto.holgura[i]) - MARGEN_PARED, 0.0))
    lateral = rng.uniform(-limite, limite)
    p = experto.puntos[i] + normal * lateral
    yaw = math.atan2(t[1], t[0]) + rng.uniform(-RUMBO_MAX, RUMBO_MAX)
    v0 = float(min(rng.uniform(V0_MIN, V0_MAX) * experto.v_ref[i], V0_TOPE))
    return Reinicio(float(p[0]), float(p[1]), float(yaw), v0, j)


CTE_RUIDO_MAX = 1.0   # m: con más desvío se deja de perturbar (la pared está a ~1,5 m)


def aplicar_ruido(v: float, w: float, cte: float, ruido: RuidoOU) -> tuple:
    """Orden que se manda al coche: la del experto más ruido, salvo si ya está muy desviado.
    La etiqueta que se graba es siempre (v, w) sin ruido."""
    dw, dv = ruido.paso()                   # el ruido avanza siempre, se aplique o no
    if abs(cte) >= CTE_RUIDO_MAX:
        return v, w
    return float(np.clip(v + dv, 0.5, 13.0)), float(np.clip(w + dw, -3.14, 3.14))
