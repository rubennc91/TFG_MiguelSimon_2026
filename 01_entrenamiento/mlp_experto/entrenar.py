#!/usr/bin/env python3
"""Entrena la MLP 576-32-256-2 (27.136 parámetros, la arquitectura desplegada) con el dataset del experto.

    ~/.venvs/entrenamiento/bin/python -m mlp_experto.entrenar --salida ~/datasets/experto_f1/modelos/float_base
"""
import argparse
import json
import time
from pathlib import Path

import numpy as np
import torch
import torch.nn as nn

from mlp_experto.datos import cargar, dividir_por_carpeta
from mlp_experto.metricas import metricas, pesos_de_curva
from mlp_experto.preproceso import desnormalizar, normalizar

RAIZ = Path.home() / "datasets" / "experto_f1"


def construir_modelo(capas=(576, 32, 256, 2)) -> nn.Module:
    """MLP con ReLU entre capas lineales. Por defecto, la arquitectura desplegada (27.136 parámetros)."""
    bloques = []
    for i, (a, b) in enumerate(zip(capas[:-1], capas[1:])):
        bloques.append(nn.Linear(a, b))
        if i < len(capas) - 2:
            bloques.append(nn.ReLU())
    return nn.Sequential(*bloques)


def predecir(modelo: nn.Module, x_u8: torch.Tensor, lote: int = 8192) -> np.ndarray:
    modelo.eval()
    with torch.no_grad():
        out = torch.cat([modelo(x_u8[i:i + lote].float() / 255) for i in range(0, len(x_u8), lote)])
    vn, wn = out[:, 0].clamp(0, 1).cpu().numpy(), out[:, 1].clamp(0, 1).cpu().numpy()   # el servidor satura a [0, 1]
    v, w = desnormalizar(vn, wn)
    return np.stack([v, w], 1).astype(np.float32)


def main(argv=None):
    p = argparse.ArgumentParser()
    p.add_argument("--entrenamiento", default=str(RAIZ / "entrenamiento"), help="una o varias carpetas separadas por comas (p. ej. v2 y DAgger)")
    p.add_argument("--validacion", default=str(RAIZ / "validacion"))
    p.add_argument("--salida", required=True)
    p.add_argument("--epocas", type=int, default=40)
    p.add_argument("--lote", type=int, default=1024)
    p.add_argument("--lr", type=float, default=2e-3)
    p.add_argument("--semilla", type=int, default=0)
    p.add_argument("--sin-desarrollo", action="store_true", help="entrena con TODOS los datos (partición fija e idéntica en todas las semillas) y se queda con la última época")
    p.add_argument("--peso-curvas", type=float, default=1.0, help="peso de las filas de curva (|k|>=0,15) en la pérdida")
    p.add_argument("--resolucion", default="16x12", help="ancho x alto de la imagen de entrada (carpeta imagenes_<WxH>)")
    p.add_argument("--arquitectura", choices=("mlp", "cnn"), default="mlp", help="mlp (por defecto) o cnn mínima (2 convoluciones 3x3 stride 2 + cabeza densa)")
    p.add_argument("--capas", default=None, help="tamaños de las capas, separados por comas (por defecto: 3*ancho*alto,32,256,2)")
    a = p.parse_args(argv)
    torch.manual_seed(a.semilla); np.random.seed(a.semilla)
    salida = Path(a.salida); salida.mkdir(parents=True, exist_ok=True)
    dev_t = torch.device("cuda" if torch.cuda.is_available() else "cpu")

    ancho, alto = (int(v) for v in a.resolucion.split("x")); res = (ancho, alto)
    capas = tuple(int(c) for c in a.capas.split(",")) if a.capas else (3 * ancho * alto, 32, 256, 2)
    cache = RAIZ / "cache"; cache.mkdir(exist_ok=True)
    t0 = time.time()
    raices = [Path(x) for x in a.entrenamiento.split(",")]
    d = cargar(raices, cache=cache / f"{'+'.join(r.parent.name for r in raices)}_entrenamiento_{ancho}x{alto}.npz", resolucion=res)
    dv = cargar([Path(a.validacion)], cache=cache / f"{Path(a.validacion).parent.name}_validacion_{ancho}x{alto}.npz", resolucion=res) if a.validacion else None
    print(f"datos: entrenamiento {len(d.x)} filas, validación {len(dv.x) if dv else 0} filas ({time.time() - t0:.0f} s)", flush=True)
    i_ent, i_dev = dividir_por_carpeta(d.carpeta, 0.0 if a.sin_desarrollo else 0.1, a.semilla)
    if a.sin_desarrollo:                               # solo para vigilar la pérdida: 20.000 filas del propio entrenamiento
        i_dev = np.random.default_rng(12345).choice(i_ent, 20000, replace=False)

    x = torch.from_numpy(d.x).to(dev_t)
    vn, wn = normalizar(d.y[:, 0], d.y[:, 1])
    y = torch.from_numpy(np.stack([vn, wn], 1).astype(np.float32)).to(dev_t)
    ie, idv = torch.from_numpy(i_ent).to(dev_t), torch.from_numpy(i_dev).to(dev_t)
    pes = torch.from_numpy(pesos_de_curva(d.kappa, a.peso_curvas)).to(dev_t)

    if a.arquitectura == "cnn":
        from mlp_experto.cnn import construir_cnn
        modelo = construir_cnn(res).to(dev_t)
    else:
        modelo = construir_modelo(capas).to(dev_t)
    print("parámetros:", sum(p.numel() for p in modelo.parameters()), flush=True)
    opt = torch.optim.AdamW(modelo.parameters(), lr=a.lr, weight_decay=1e-4)
    pasos = a.epocas * ((len(ie) + a.lote - 1) // a.lote)
    sched = torch.optim.lr_scheduler.OneCycleLR(opt, max_lr=a.lr, total_steps=pasos)
    mejor, mejor_estado, hist = 1e9, None, []
    for ep in range(a.epocas):
        modelo.train()
        perm = ie[torch.randperm(len(ie), device=dev_t)]
        for i in range(0, len(perm), a.lote):
            b = perm[i:i + a.lote]
            loss = (((modelo(x[b].float() / 255) - y[b]) ** 2).mean(1) * pes[b]).sum() / pes[b].sum()
            opt.zero_grad(); loss.backward(); opt.step(); sched.step()
        modelo.eval()
        with torch.no_grad():
            l_dev = float(nn.functional.mse_loss(modelo(x[idv].float() / 255), y[idv]))
        hist.append(dict(epoca=ep + 1, loss_dev=l_dev))
        if l_dev < mejor or a.sin_desarrollo:             # sin desarrollo no se elige la mejor época: se usa la última
            mejor, mejor_estado = l_dev, {k: v.clone() for k, v in modelo.state_dict().items()}
        if (ep + 1) % 5 == 0 or ep == 0:
            print(f"época {ep + 1:3d}  loss desarrollo {l_dev:.5f}  (mejor {mejor:.5f})", flush=True)
    modelo.load_state_dict(mejor_estado)

    res = {}
    conjuntos = {"desarrollo": (x[idv], d.y[i_dev], d.kappa[i_dev])}
    if dv is not None:
        conjuntos["nurburgring"] = (torch.from_numpy(dv.x).to(dev_t), dv.y, dv.kappa)
    for nombre, (xx, yy, kk) in conjuntos.items():
        res[nombre] = metricas(yy, predecir(modelo, xx), kk)
    torch.save(modelo.state_dict(), salida / "modelo.pt")
    (salida / "metricas.json").write_text(json.dumps(dict(args=vars(a), mejor_loss_dev=mejor, metricas=res, historial=hist), indent=2))
    for nombre, m in res.items():
        print(f"\n== {nombre} ({m['n']} filas)")
        print(f"  v: RMSE {m['rmse_v']:.2f} m/s (predecir la media: {m['base_rmse_v']:.2f}) | corr {m['corr_v']:.2f}")
        print(f"  w: RMSE {m['rmse_w']:.2f} rad/s (predecir la media: {m['base_rmse_w']:.2f}) | corr {m['corr_w']:.2f}")
        print(f"  v en curvas cerradas: real {m['v_real_curvas_cerradas']:.2f} / predicha {m['v_pred_curvas_cerradas']:.2f} m/s")


if __name__ == "__main__":
    main()
