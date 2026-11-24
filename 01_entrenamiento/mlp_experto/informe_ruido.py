#!/usr/bin/env python3
"""Repetibilidad del simulador: mismas pruebas (modelo cuantizado w4a4, escenario) repetidas. Compara la prueba original con _repA y _repB.

    python -m mlp_experto.informe_ruido [carpeta lazo_cerrado]
"""
import json
import sys
from itertools import combinations
from pathlib import Path

import numpy as np

ESC = [("montmelo", "+1"), ("montmelo", "-1"), ("nurburgring", "+1"), ("nurburgring", "-1")]


def main():
    d = Path(sys.argv[1] if len(sys.argv) > 1 else Path.home() / "datasets/experto_f1_v2/lazo_cerrado")
    ternas = []
    for s in range(10):
        for c, sg in ESC:
            rs = []
            for suf in ("", "_repA", "_repB"):
                f = d / f"q4_s{s}{suf}_{c}_s{sg}.json"
                if f.exists():
                    r = json.loads(f.read_text())
                    if not r.get("error"):
                        rs.append(r)
            if len(rs) == 3:
                ternas.append(((s, c, sg), rs))
    print(f"{len(ternas)} combinaciones (modelo, escenario) con las 3 ejecuciones válidas")
    if not ternas:
        return
    ok = np.array([[not r["atascado"] for r in rs] for _, rs in ternas])
    fr = np.array([[min(r["vueltas_completadas"], 2) / 2 for r in rs] for _, rs in ternas])
    iguales = np.mean([len(set(x)) == 1 for x in ok])
    pares = np.mean([a == b for x in ok for a, b in combinations(x, 2)])
    print(f"mismo resultado éxito/fallo en las 3 ejecuciones: {100 * iguales:.0f} % de las combinaciones; acuerdo por pares: {100 * pares:.0f} %")
    print(f"tasa de éxito por ejecución: original {ok[:, 0].mean():.2f} | repA {ok[:, 1].mean():.2f} | repB {ok[:, 2].mean():.2f}")
    print(f"fracción de vuelta: desviación típica entre repeticiones de la misma prueba = {fr.std(axis=1).mean():.3f} "
          f"(media {fr.mean():.2f}); entre combinaciones distintas = {fr.mean(axis=1).std():.3f}")
    dudosas = [(k, [round(float(v), 2) for v in f]) for (k, _), f in zip(ternas, fr) if len(set(np.round(f, 1))) > 1]
    print(f"{len(dudosas)} combinaciones con resultados distintos entre repeticiones; ejemplos:", dudosas[:6])


if __name__ == "__main__":
    main()
