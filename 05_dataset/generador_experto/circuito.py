"""Línea central de un circuito a partir de la malla de asfalto (.dae).

`extraer_circuito` solo se usa en el anfitrión (necesita scipy y scikit-image);
`Circuito.cargar` solo necesita numpy y es lo que usa el contenedor de ROS.

CLI:  python -m generador_experto.circuito <dae> <nombre> <prefijo_asfalto>...
"""
import re
import sys
from dataclasses import dataclass
from pathlib import Path

import numpy as np

PASO = 0.5  # m entre puntos de la línea central


@dataclass
class Circuito:
    nombre: str
    puntos: np.ndarray   # (N, 2) m, paso 0,5 m, lazo cerrado
    kappa: np.ndarray    # (N,) 1/m con signo (suavizado fuerte, para el perfil de velocidad)
    holgura: np.ndarray  # (N,) m a la pared más cercana
    salida: tuple        # (x, y, yaw) en el índice 0

    def guardar(self, ruta: Path) -> None:
        np.savez(ruta, nombre=self.nombre, puntos=self.puntos, kappa=self.kappa,
                 holgura=self.holgura, salida=np.array(self.salida, float))

    @staticmethod
    def cargar(ruta: Path) -> "Circuito":
        d = np.load(ruta, allow_pickle=False)
        return Circuito(str(d["nombre"]), d["puntos"], d["kappa"], d["holgura"], tuple(float(v) for v in d["salida"]))


def _triangulos_asfalto(dae: Path, prefijos: tuple) -> np.ndarray:
    """Triángulos (k, 3, 2) en metros, en el mundo, de los materiales que empiezan por algún prefijo."""
    s = Path(dae).read_text(errors="ignore")
    unidad = re.search(r'<unit [^>]*meter="([^"]+)"', s)
    geoms = {}
    for g in re.finditer(r'<geometry id="([^"]+)".*?</geometry>', s, re.S):
        gid, body = g.group(1), g.group(0)
        fa = re.search(r'<float_array [^>]*>([^<]*)</float_array>', body)
        if not fa:
            continue
        v = np.array(fa.group(1).split(), float).reshape(-1, 3)
        for t in re.finditer(r'<triangles material="([^"]+)"[^>]*>(.*?)</triangles>', body, re.S):
            offsets = [(m.group(1), int(m.group(2))) for m in
                       re.finditer(r'<input [^>]*?semantic="([^"]+)"[^>]*?offset="(\d+)"', t.group(2))]
            p = re.search(r'<p>([^<]*)</p>', t.group(2))
            if not p or not offsets:
                continue
            zancada = max(o for _, o in offsets) + 1          # varias entradas pueden compartir offset
            voff = next((o for sem, o in offsets if sem == "VERTEX"), 0)
            tri = np.array(p.group(1).split(), int).reshape(-1, zancada)[:, voff].reshape(-1, 3)
            geoms.setdefault(gid, []).append((t.group(1), v, tri))
    salida = []
    for n in re.finditer(r'<node [^>]*>.*?</node>', s, re.S):
        u = re.search(r'instance_geometry url="#([^"]+)"', n.group(0))
        m = re.search(r'<matrix[^>]*>([^<]*)', n.group(0))
        if not u or not m or u.group(1) not in geoms:
            continue
        mat = np.array(m.group(1).split(), float).reshape(4, 4)
        for material, v, tri in geoms[u.group(1)]:
            if any(material.startswith(pref) for pref in prefijos):
                w = (np.c_[v, np.ones(len(v))] @ mat.T)[:, :3]
                salida.append(w[tri][:, :, :2])
    if not salida:
        raise ValueError(f"sin triángulos de asfalto en {dae} (prefijos {prefijos})")
    return np.concatenate(salida)


def _ordenar_lazo(esqueleto: np.ndarray) -> list:
    """Poda ramas cortas y recorre el esqueleto como un lazo cerrado."""
    from scipy import ndimage as ndi
    sk = esqueleto.copy()
    for _ in range(15):
        vecinos = ndi.convolve(sk.astype(int), np.ones((3, 3)), mode="constant") - sk
        sk[sk & (vecinos <= 1)] = False
    pts = set(map(tuple, np.argwhere(sk)))
    if len(pts) < 8:
        raise ValueError("el esqueleto del asfalto es demasiado pequeño")
    vec = lambda p: [(p[0] + a, p[1] + b) for a in (-1, 0, 1) for b in (-1, 0, 1)
                     if (a or b) and (p[0] + a, p[1] + b) in pts]
    cur = min(pts)
    camino, visto = [cur], {cur}
    while True:
        sig = sorted((q for q in vec(cur) if q not in visto), key=lambda q: abs(q[0] - cur[0]) + abs(q[1] - cur[1]))
        if not sig:
            break
        cur = sig[0]
        visto.add(cur)
        camino.append(cur)
    return camino


def extraer_circuito(dae: Path, prefijos_asfalto: tuple, nombre: str, res: float = 0.25) -> Circuito:
    from scipy import ndimage as ndi
    from skimage.draw import polygon
    from skimage.morphology import skeletonize

    T = _triangulos_asfalto(dae, tuple(prefijos_asfalto))
    x0, y0 = T[..., 0].min() - 2, T[..., 1].min() - 2
    ancho = int((T[..., 0].max() + 2 - x0) / res) + 1
    alto = int((T[..., 1].max() + 2 - y0) / res) + 1
    img = np.zeros((alto, ancho), bool)
    for tr in T:
        rr, cc = polygon((tr[:, 1] - y0) / res, (tr[:, 0] - x0) / res, img.shape)
        img[rr, cc] = True
    img = ndi.binary_closing(img, iterations=2)
    D = ndi.distance_transform_edt(img) * res

    return _linea_central(img, D, res, x0, y0, nombre)


def _linea_central(img: np.ndarray, D: np.ndarray, res: float, x0: float, y0: float, nombre: str) -> Circuito:
    """Línea central de una máscara de asfalto (img[i, j] <-> x = x0 + j*res, y = y0 + i*res) y su mapa de distancias D (m)."""
    from scipy import ndimage as ndi
    from skimage.morphology import skeletonize

    camino = _ordenar_lazo(skeletonize(img))
    P = np.array([[x0 + c * res, y0 + r * res] for r, c in camino])
    # El esqueleto va en escalera: medir la longitud por píxeles la sobrestima (~5 %).
    P = np.c_[ndi.gaussian_filter1d(P[:, 0], 3, mode="wrap"), ndi.gaussian_filter1d(P[:, 1], 3, mode="wrap")]
    d = np.r_[0, np.cumsum(np.hypot(*np.diff(P, axis=0).T))]
    n = int((d[-1] + np.hypot(*(P[0] - P[-1]))) / PASO)
    s = np.linspace(0, d[-1], n)
    X = np.c_[np.interp(s, d, P[:, 0]), np.interp(s, d, P[:, 1])]

    def suave(A, sigma):
        return np.c_[ndi.gaussian_filter1d(A[:, 0], sigma, mode="wrap"), ndi.gaussian_filter1d(A[:, 1], sigma, mode="wrap")]

    def celdas(Q):
        i = np.clip(((Q[:, 1] - y0) / res).round().astype(int), 0, D.shape[0] - 1)
        j = np.clip(((Q[:, 0] - x0) / res).round().astype(int), 0, D.shape[1] - 1)
        return i, j

    gy, gx = np.gradient(ndi.gaussian_filter(D, 1.0))
    G = suave(X, 2)                      # geometría: suavizado ligero (~1 m)
    for _ in range(40):                  # empujar hacia la cresta de holgura máxima
        i, j = celdas(G)
        paso = np.c_[gx[i, j], gy[i, j]]
        norma = np.maximum(np.hypot(paso[:, 0], paso[:, 1]), 1e-6)[:, None]
        G = suave(G + 0.15 * paso / norma, 1.5)

    K = suave(X, 6)                      # curvatura: suavizado fuerte, aparte de la geometría
    dx, dy = np.gradient(K[:, 0], PASO), np.gradient(K[:, 1], PASO)
    ddx, ddy = np.gradient(dx, PASO), np.gradient(dy, PASO)
    kappa = (dx * ddy - dy * ddx) / (dx ** 2 + dy ** 2) ** 1.5
    i, j = celdas(G)
    t = G[1] - G[0]
    return Circuito(nombre, G, kappa, D[i, j], (float(G[0, 0]), float(G[0, 1]), float(np.arctan2(t[1], t[0]))))


def main(argv=None) -> None:
    a = list(sys.argv[1:] if argv is None else argv)
    if len(a) < 3:
        sys.exit("uso: python -m generador_experto.circuito <dae> <nombre> <prefijo_asfalto>...")
    dae, nombre, prefijos = Path(a[0]), a[1], tuple(a[2:])
    c = extraer_circuito(dae, prefijos, nombre)
    destino = Path(__file__).resolve().parent / "datos" / "circuitos" / f"{nombre}.npz"
    destino.parent.mkdir(parents=True, exist_ok=True)
    c.guardar(destino)
    print(f"{nombre}: {len(c.puntos) * PASO:.0f} m, holgura mín {c.holgura.min():.2f} m, "
          f"|k| máx {np.abs(c.kappa).max():.3f} 1/m, salida {tuple(round(v, 2) for v in c.salida)} -> {destino}")


if __name__ == "__main__":
    main()
