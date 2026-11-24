"""Estadísticas del dataset y comprobación de los criterios de éxito (2 y 3 del diseño)."""
import csv
from pathlib import Path

import numpy as np

K_CERRADA = 0.2
K_CURVA_CUOTA = 0.15      # misma definición de curva que perturbaciones.K_CURVA
MIN_REPETICIONES, MAX_FRAC_CURVA = 30, 0.5
MIN_FRAC_V_BAJA, MIN_FRAC_W_ALTA, MIN_SD_W, MAX_CORR, MAX_V_CERRADAS = 0.15, 0.10, 0.6, -0.3, 5.0


def _carpetas(raices) -> list:
    out = []
    for r in map(Path, raices):
        out += [p.parent for p in sorted(r.rglob("data.csv"))]
    if not out:
        raise ValueError("no hay ningún data.csv en las rutas dadas")
    return out


def calcular(raices: list) -> dict:
    v, w, kappa, tipos = [], [], [], []
    segmentos = {}      # "circuito|sentido|curva" -> conjunto de (carpeta, segmento)
    for c in _carpetas(raices):
        datos = list(csv.DictReader(open(c / "data.csv")))
        meta = list(csv.DictReader(open(c / "meta.csv")))
        if len(datos) != len(meta):
            raise ValueError(f"{c}: data.csv y meta.csv tienen distinto nº de filas")
        v += [float(d["v"]) for d in datos]
        w += [float(d["w"]) for d in datos]
        kappa += [abs(float(m["kappa"])) for m in meta]
        tipos += [m["tipo"] for m in meta]
        for m in meta:
            if int(m.get("curva", -1)) >= 0:
                segmentos.setdefault(f'{m["circuito"]}|{m["sentido"]}|{m["curva"]}', set()).add((str(c), m["segmento"]))
    v, w, kappa = np.array(v), np.array(w), np.array(kappa)
    if len(v) == 0:
        raise ValueError("el dataset está vacío")
    cerradas = kappa > K_CERRADA
    return dict(
        n=len(v),
        frac_v_menor_6=float((v < 6).mean()),
        frac_w_mayor_1=float((np.abs(w) > 1).mean()),
        sd_w=float(w.std()),
        corr_v_kappa=float(np.corrcoef(v, kappa)[0, 1]) if v.std() > 0 and kappa.std() > 0 else 0.0,
        v_medio_curvas_cerradas=float(v[cerradas].mean()) if cerradas.any() else float("nan"),
        por_tipo={t: tipos.count(t) for t in sorted(set(tipos))},
        frac_curva=float((kappa > K_CURVA_CUOTA).mean()),
        repeticiones_por_curva={k: len(v) for k, v in sorted(segmentos.items())},
    )


def comprobar_criterios(est: dict) -> list:
    fallos = []
    if not est["frac_v_menor_6"] >= MIN_FRAC_V_BAJA:
        fallos.append(f"frac_v_menor_6 = {est['frac_v_menor_6']:.2f} (mínimo {MIN_FRAC_V_BAJA})")
    if not est["corr_v_kappa"] <= MAX_CORR:
        fallos.append(f"corr_v_kappa = {est['corr_v_kappa']:.2f} (máximo {MAX_CORR}: a más curvatura, menos velocidad)")
    if not est["v_medio_curvas_cerradas"] < MAX_V_CERRADAS:     # NaN (sin curvas cerradas) también falla
        fallos.append(f"v_medio_curvas_cerradas = {est['v_medio_curvas_cerradas']:.2f} (debe ser < {MAX_V_CERRADAS})")
    if not est["frac_w_mayor_1"] >= MIN_FRAC_W_ALTA:
        fallos.append(f"frac_w_mayor_1 = {est['frac_w_mayor_1']:.2f} (mínimo {MIN_FRAC_W_ALTA})")
    if not est["sd_w"] >= MIN_SD_W:
        fallos.append(f"sd_w = {est['sd_w']:.2f} (mínimo {MIN_SD_W})")
    return fallos


def comprobar_cuotas(est: dict, esperadas: dict, min_rep: int = MIN_REPETICIONES, max_frac: float = MAX_FRAC_CURVA) -> list:
    """Cuotas de curvas. `esperadas`: {(circuito, sentido): [índices de entrada de curva]} de los circuitos usados."""
    fallos = []
    if est["frac_curva"] > max_frac:
        fallos.append(f"frac_curva = {est['frac_curva']:.2f} (máximo {max_frac}): demasiadas filas en curva")
    for (circuito, sentido), curvas in sorted(esperadas.items()):
        for i in curvas:
            clave = f"{circuito}|{sentido}|{i}"
            n = est["repeticiones_por_curva"].get(clave, 0)
            if n < min_rep:
                fallos.append(f"{clave}: {n} repeticiones (mínimo {min_rep})")
    return fallos
