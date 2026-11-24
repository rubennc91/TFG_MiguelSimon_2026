"""Aplana un circuito con relieve (.dae): el asfalto queda en z = 0 y el resto conserva su altura sobre el asfalto más cercano.

El simulador usa un suelo plano de colisión; un circuito con pendientes (o con un desplazamiento de z en el nodo) dejaría el
asfalto enterrado o flotando. La métrica, el experto y la línea central son 2D, así que el relieve no afecta a la comparación.

CLI:  python -m generador_experto.aplanar_malla <entrada.dae> <salida.dae> <escala> [prefijo_asfalto ...]   (por defecto: asfalto-material)
"""
import re
import sys
from pathlib import Path

import numpy as np


def aplanar(entrada: Path, salida: Path, prefijos=("asfalto-material",), escala: float = 1.0) -> dict:
    from scipy.spatial import cKDTree
    s = Path(entrada).read_text(errors="ignore")
    g = re.search(r'<geometry id="([^"]+)".*?</geometry>', s, re.S)
    geo = g.group(0)
    fa = re.search(r'(<float_array [^>]*>)([^<]*)(</float_array>)', geo)
    v = np.array(fa.group(2).split(), float).reshape(-1, 3)
    offsets = {}
    for t in re.finditer(r'<triangles material="([^"]+)"[^>]*>(.*?)</triangles>', geo, re.S):
        sem = [(m.group(1), int(m.group(2))) for m in re.finditer(r'<input [^>]*?semantic="([^"]+)"[^>]*?offset="(\d+)"', t.group(2))]
        zanc = max(o for _, o in sem) + 1; voff = next((o for k, o in sem if k == "VERTEX"), 0)
        p = np.array(re.search(r'<p>([^<]*)</p>', t.group(2)).group(1).split(), int).reshape(-1, zanc)[:, voff]
        offsets[t.group(1)] = np.unique(p)
    idx = np.unique(np.concatenate([i for m, i in offsets.items() if any(m.startswith(p) for p in prefijos)]))
    dz_nodo = float(re.search(r'<matrix[^>]*>\s*(?:\S+\s+){11}(\S+)', s).group(1))   # traslación z del nodo
    suelo = cKDTree(v[idx, :2]).query(v[:, :2])[1]
    nuevo = v.copy(); nuevo[:, 2] = v[:, 2] - v[idx[suelo], 2]
    nuevo *= escala
    texto = " ".join(f"{a:.5f}" for a in nuevo.ravel())
    geo2 = geo.replace(fa.group(0), fa.group(1) + texto + fa.group(3), 1)
    s = s.replace(geo, geo2, 1)
    s = re.sub(r'(<matrix[^>]*>\s*(?:\S+\s+){11})\S+', lambda m: m.group(1) + "0", s, count=1)
    mt = re.search(r'(<matrix[^>]*>)([^<]*)(</matrix>)', s)
    t = mt.group(2).split(); t[3], t[7] = f"{float(t[3]) * escala:.5f}", f"{float(t[7]) * escala:.5f}"     # la traslación x,y escala con la malla
    s = s.replace(mt.group(0), mt.group(1) + " ".join(t) + mt.group(3), 1)
    Path(salida).write_text(s)
    return dict(vertices=len(v), asfalto=len(idx), z_asfalto_antes=(float(v[idx, 2].min()), float(v[idx, 2].max())),
                z_nodo_antes=dz_nodo, z_max_despues=float(nuevo[:, 2].max()), z_asfalto_despues=(float(nuevo[idx, 2].min()), float(nuevo[idx, 2].max())))


if __name__ == "__main__":
    a = sys.argv[1:]
    if len(a) < 3:
        sys.exit(__doc__)
    print(aplanar(Path(a[0]), Path(a[1]), tuple(a[3:]) or ("asfalto-material",), float(a[2])))
