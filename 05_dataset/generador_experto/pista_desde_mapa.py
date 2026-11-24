"""Circuito para Gazebo a partir de un mapa de ocupación (PNG con las dos paredes dibujadas, como los de audubon_gazebo).

La pista es la banda blanca entre las dos paredes. Se extrae su línea central (misma cadena que `circuito.py`) y se construyen, a
lo largo de ella, el asfalto (cinta plana), la línea central roja y las paredes (cintas extruidas), de anchura constante = 2 x la holgura mediana.
Escribe `datos/circuitos/<nombre>.npz` y `04_ros2_gazebo/mundos_extra/<nombre>/meshes/{asfalto,linea,pared_*}.obj`.

CLI:  python -m generador_experto.pista_desde_mapa <mapa.png> <metros_por_pixel> <nombre>
"""
import sys
from pathlib import Path

import numpy as np

from .circuito import PASO, _linea_central

ALTO_PARED = 0.5
GROSOR_PARED = 0.08
ANCHO_LINEA = 0.13        # los circuitos de entrenamiento llevan una línea central roja (~0,13 m: 91 m2 en 734 m de Montmeló); las redes se guían por ella


def banda_de_pista(png: Path):
    """Máscara (y hacia arriba) de la banda entre las paredes: la región blanca de tamaño intermedio (exterior > interior > banda no siempre; se elige la que tiene forma de cinta)."""
    from PIL import Image
    from scipy import ndimage as ndi
    im = np.array(Image.open(png).convert("L"))
    lab, n = ndi.label(im > 200)
    mejor, puntuacion = None, -1
    for k in range(1, n + 1):
        g = lab == k
        if g.sum() < 2000:
            continue
        esbeltez = g.sum() / max(ndi.distance_transform_edt(g).max() ** 2, 1)    # área / (holgura máx)^2: grande = cinta fina
        if esbeltez > puntuacion:
            mejor, puntuacion = g, esbeltez
    return mejor[::-1]


def _cinta(pts, ancho_int, ancho_ext, z0, z1):
    """Cinta cerrada entre los desplazamientos laterales ancho_int y ancho_ext (con signo), de altura z0 a z1. Devuelve vértices y caras (0-based)."""
    t = np.roll(pts, -1, axis=0) - np.roll(pts, 1, axis=0)
    t /= np.linalg.norm(t, axis=1)[:, None]
    n = np.c_[-t[:, 1], t[:, 0]]
    a, b = pts + n * ancho_int, pts + n * ancho_ext
    N = len(pts)
    V = np.r_[np.c_[a, np.full(N, z0)], np.c_[b, np.full(N, z0)], np.c_[a, np.full(N, z1)], np.c_[b, np.full(N, z1)]]
    F = []
    for i in range(N):
        j = (i + 1) % N
        if z1 == z0:                                                    # cinta plana: una cara
            F += [(i, j, N + j), (i, N + j, N + i)]
        else:                                                           # pared: 4 caras laterales
            F += [(i, j, 2 * N + j), (i, 2 * N + j, 2 * N + i), (N + i, 3 * N + i, 3 * N + j), (N + i, 3 * N + j, N + j),
                  (2 * N + i, 2 * N + j, 3 * N + j), (2 * N + i, 3 * N + j, 3 * N + i)]
    return V, np.array(F)


def _obj(ruta: Path, V, F):
    """OBJ con normales por cara y los triángulos repetidos al revés (doble cara). Sin normales, el detector de colisiones de Gazebo (ODE) se cae."""
    lineas = []
    for sentido in (1, -1):
        for a_, b_, c_ in F:
            tri = [V[a_], V[b_], V[c_]] if sentido == 1 else [V[a_], V[c_], V[b_]]
            n = np.cross(tri[1] - tri[0], tri[2] - tri[0]); n = n / max(np.linalg.norm(n), 1e-12)
            lineas.append((tri, n))
    with open(ruta, "w") as f:
        for tri, n in lineas:
            f.write("".join(f"v {x:.4f} {y:.4f} {z:.4f}\n" for x, y, z in tri) + f"vn {n[0]:.4f} {n[1]:.4f} {n[2]:.4f}\n")
        for i in range(len(lineas)):
            f.write(f"f {3 * i + 1}//{i + 1} {3 * i + 2}//{i + 1} {3 * i + 3}//{i + 1}\n")


def main(argv=None):
    a = list(sys.argv[1:] if argv is None else argv)
    if len(a) != 3:
        sys.exit(__doc__)
    png, res, nombre = Path(a[0]), float(a[1]), a[2]
    from scipy import ndimage as ndi
    g = banda_de_pista(png)
    D = ndi.distance_transform_edt(g) * res
    x0 = y0 = -g.shape[0] * res / 2
    c = _linea_central(g, D, res, x0, y0, nombre)
    semi = float(np.median(c.holgura))
    c.holgura = np.full(len(c.puntos), semi)                              # la pista que se construye es de anchura constante
    raiz = Path(__file__).resolve().parent
    c.guardar(raiz / "datos" / "circuitos" / f"{nombre}.npz")
    m = raiz.parent.parent / "04_ros2_gazebo" / "mundos_extra" / nombre / "meshes"; m.mkdir(parents=True, exist_ok=True)
    _obj(m / "asfalto.obj", *_cinta(c.puntos, -semi, semi, 0.0, 0.0))
    _obj(m / "linea.obj", *_cinta(c.puntos, -ANCHO_LINEA / 2, ANCHO_LINEA / 2, 0.005, 0.005))
    for lado, nom in ((1, "pared_izq"), (-1, "pared_der")):
        V, F = _cinta(c.puntos, lado * semi, lado * (semi + GROSOR_PARED), 0.0, ALTO_PARED); _obj(m / f"{nom}.obj", V, F)
    print(f"{nombre}: {len(c.puntos) * PASO:.0f} m, semiancho {semi:.2f} m, |k| máx {np.abs(c.kappa).max():.3f} 1/m, salida {tuple(round(v, 2) for v in c.salida)}")


if __name__ == "__main__":
    main()
