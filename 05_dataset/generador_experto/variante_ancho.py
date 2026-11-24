"""Variante de un circuito de pista_desde_mapa con otra anchura (misma línea central).

CLI:  python -m generador_experto.variante_ancho <base> <nombre> <semiancho_m> [<semiancho_min_m> <longitud_m> [<s_m>]]
  Con 3 argumentos: anchura constante. Con los otros: estrechamiento puntual (anchura mínima semiancho_min_m
  en una longitud longitud_m centrada en el punto s_m de la línea, con transición coseno de 10 m a cada lado).
Escribe datos/circuitos/<nombre>.npz, 04_ros2_gazebo/mundos_extra/<nombre>/meshes y el .world y el _circuit.launch.py (copiados de <base>).
"""
import re
import sys
from pathlib import Path

import numpy as np

from .circuito import PASO, Circuito
from .pista_desde_mapa import ALTO_PARED, ANCHO_LINEA, GROSOR_PARED, _cinta, _obj

TRANSICION = 10.0   # m


def perfil(n, semi, semi_min=None, longitud=0.0, s_centro=0.0):
    """Semiancho (n,) por punto de la línea (lazo cerrado, paso PASO)."""
    w = np.full(n, float(semi))
    if semi_min is not None:
        s = np.arange(n) * PASO
        L = n * PASO
        d = np.abs((s - s_centro + L / 2) % L - L / 2)           # distancia a lo largo del lazo al centro del estrechamiento
        t = np.clip((d - longitud / 2) / TRANSICION, 0, 1)
        w = semi_min + (semi - semi_min) * 0.5 * (1 - np.cos(np.pi * t))
    return w


def main(argv=None):
    a = list(sys.argv[1:] if argv is None else argv)
    if len(a) not in (3, 5, 6):
        sys.exit(__doc__)
    base, nombre, semi = a[0], a[1], float(a[2])
    semi_min = float(a[3]) if len(a) > 3 else None
    long_ = float(a[4]) if len(a) > 4 else 0.0
    raiz = Path(__file__).resolve().parent
    mundos = raiz.parent.parent / "04_ros2_gazebo" / "mundos_extra"
    c = Circuito.cargar(raiz / "datos" / "circuitos" / f"{base}.npz")
    s_c = float(a[5]) if len(a) > 5 else len(c.puntos) * PASO * 0.25
    w = perfil(len(c.puntos), semi, semi_min, long_, s_c)[:, None]
    Circuito(nombre, c.puntos, c.kappa, w[:, 0].copy(), c.salida).guardar(raiz / "datos" / "circuitos" / f"{nombre}.npz")
    m = mundos / nombre / "meshes"; m.mkdir(parents=True, exist_ok=True)
    _obj(m / "asfalto.obj", *_cinta(c.puntos, -w, w, 0.0, 0.0))
    _obj(m / "linea.obj", *_cinta(c.puntos, -ANCHO_LINEA / 2, ANCHO_LINEA / 2, 0.005, 0.005))
    for lado, nom in ((1, "pared_izq"), (-1, "pared_der")):
        _obj(m / f"{nom}.obj", *_cinta(c.puntos, lado * w, lado * (w + GROSOR_PARED), 0.0, ALTO_PARED))
    for suf in (".world", "_circuit.launch.py"):
        t = (mundos / f"{base}{suf}").read_text()
        t = re.sub(rf"\b{base}\b", nombre, t)                     # nombre del modelo, rutas de mallas y del .world
        (mundos / f"{nombre}{suf}").write_text(t)
    print(f"{nombre}: semiancho {w.min():.2f}..{w.max():.2f} m, {len(c.puntos) * PASO:.0f} m")


if __name__ == "__main__":
    main()
