"""Búfer de odometría para emparejar cada imagen con la pose más cercana a su sello de tiempo."""
from bisect import bisect_left
from collections import namedtuple
from typing import Optional

Registro = namedtuple("Registro", "t x y yaw v")


class BufferOdom:
    def __init__(self, ventana: float = 2.0):
        self.ventana = ventana
        self._r: list = []

    def anadir(self, t: float, x: float, y: float, yaw: float, v: float) -> None:
        self._r.append(Registro(t, x, y, yaw, v))
        while self._r and self._r[0].t < t - self.ventana:
            self._r.pop(0)

    def cercana(self, t: float) -> Optional[tuple]:
        """(Registro, desfase en s) del registro más cercano a t, o None si no hay ninguno."""
        if not self._r:
            return None
        ts = [r.t for r in self._r]
        i = bisect_left(ts, t)
        candidatos = self._r[max(i - 1, 0):i + 1]
        mejor = min(candidatos, key=lambda r: abs(r.t - t))
        return mejor, abs(mejor.t - t)


class DetectorAtasco:
    """El coche está atascado si lleva `t_max` s parado (v real < 0,3) mientras se le ordena avanzar (v > 2)."""

    def __init__(self, t_max: float = 1.0):
        self.t_max = t_max
        self._desde: Optional[float] = None

    def actualizar(self, t: float, v_real: float, v_ord: float) -> bool:
        if v_real < 0.3 and v_ord > 2.0:
            if self._desde is None:
                self._desde = t
            return t - self._desde >= self.t_max
        self._desde = None
        return False

    def olvidar(self) -> None:
        self._desde = None
