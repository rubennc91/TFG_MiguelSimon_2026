#!/usr/bin/env python3
"""QAT (fine-tuning cuantizado) de la MLP w4aX partiendo de una MLP flotante. Se ejecuta DENTRO de la imagen de FINN (CPU).

    qat.py --pesos .../r32_s0_peso10/pesos.npz --datos .../cache/experto_f1_v2_entrenamiento_32x24.npz \
           --salida .../modelos/q8_s0 --a-bits 8 --semilla 0
"""
import argparse
import json
import time
from pathlib import Path

import numpy as np
import torch
import torch.nn.functional as F

from modelo_qat import CNNq, MLPq, decodificar, desnormalizar, V_MAX, V_MIN, W_MAX, W_MIN


def dividir_por_carpeta(carpeta, frac_dev, semilla):      # misma lógica que mlp_experto.datos
    ids = np.unique(carpeta); rng = np.random.default_rng(semilla)
    dev_ids = rng.choice(ids, max(1, int(round(len(ids) * frac_dev))), replace=False)
    es_dev = np.isin(carpeta, dev_ids)
    return np.flatnonzero(~es_dev), np.flatnonzero(es_dev)


def evaluar(modelo, x, y, kappa):
    modelo.eval(); preds = []
    with torch.no_grad():
        for i in range(0, len(x), 4096):
            v, w = decodificar(modelo(torch.from_numpy(x[i:i + 4096]).float() / 255))
            preds.append(torch.stack([v, w], 1).numpy())
    p = np.concatenate(preds); e = p - y; cerr = np.abs(kappa) > 0.2
    return dict(rmse_v=float(np.sqrt((e[:, 0] ** 2).mean())), rmse_w=float(np.sqrt((e[:, 1] ** 2).mean())),
                v_pred_curvas_cerradas=float(p[cerr, 0].mean()), v_real_curvas_cerradas=float(y[cerr, 0].mean()))


def main():
    a = argparse.ArgumentParser()
    a.add_argument("--pesos", required=True); a.add_argument("--datos", required=True); a.add_argument("--salida", required=True)
    a.add_argument("--arquitectura", choices=("mlp", "cnn"), default="mlp"); a.add_argument("--tam", default="32x24")
    a.add_argument("--w-bits", type=int, default=4); a.add_argument("--a-bits", type=int, default=8)
    a.add_argument("--epocas", type=int, default=20); a.add_argument("--lote", type=int, default=512)
    a.add_argument("--lr", type=float, default=3e-4); a.add_argument("--semilla", type=int, default=0)
    a.add_argument("--peso-curvas", type=float, default=10.0); a.add_argument("--hilos", type=int, default=8)
    a = a.parse_args()
    torch.set_num_threads(a.hilos); torch.manual_seed(a.semilla); np.random.seed(a.semilla)
    out = Path(a.salida); out.mkdir(parents=True, exist_ok=True)
    z = np.load(a.datos); X, Y, K, C = z["x"], z["y"], z["kappa"], z["carpeta"]
    ie, idv = dividir_por_carpeta(C, 0.1, a.semilla)
    modelo = (CNNq(tuple(int(v) for v in a.tam.split('x')), w_bits=a.w_bits, a_bits=a.a_bits) if a.arquitectura == 'cnn' else MLPq(X.shape[1], w_bits=a.w_bits, a_bits=a.a_bits)); modelo.cargar_flotante(a.pesos)
    vn = (Y[:, 0] - V_MIN) / (V_MAX - V_MIN); wn = (Y[:, 1] - W_MIN) / (W_MAX - W_MIN)
    T = torch.from_numpy(np.stack([vn, wn], 1).astype(np.float32)); P = torch.from_numpy(np.where(np.abs(K) >= 0.15, a.peso_curvas, 1.0).astype(np.float32))
    modelo.train()                                           # calibración de las escalas de las activaciones
    with torch.no_grad():
        for i in range(8): modelo(torch.from_numpy(X[ie[i * 2048:(i + 1) * 2048]]).float() / 255)
    base = evaluar(modelo, X[idv], Y[idv], K[idv]); print("tras calibrar (sin entrenar):", base, flush=True)
    opt = torch.optim.Adam(modelo.parameters(), lr=a.lr); pasos = a.epocas * ((len(ie) + a.lote - 1) // a.lote)
    sched = torch.optim.lr_scheduler.OneCycleLR(opt, max_lr=a.lr, total_steps=pasos)
    mejor, estado, t0 = 1e9, None, time.time()
    for ep in range(a.epocas):
        modelo.train(); perm = torch.from_numpy(np.random.permutation(ie))
        for i in range(0, len(perm), a.lote):
            b = perm[i:i + a.lote]; xb = torch.from_numpy(X[b.numpy()]).float() / 255
            loss = (((modelo(xb) - T[b]) ** 2).mean(1) * P[b]).sum() / P[b].sum()
            opt.zero_grad(); loss.backward(); opt.step(); sched.step()
        modelo.eval()
        with torch.no_grad():
            ld = float(F.mse_loss(modelo(torch.from_numpy(X[idv[:20000]]).float() / 255), T[idv[:20000]]))
        if ld < mejor: mejor, estado = ld, {k: v.clone() for k, v in modelo.state_dict().items()}
        print(f"época {ep + 1:3d} loss dev {ld:.5f} (mejor {mejor:.5f})  {time.time() - t0:.0f} s", flush=True)
    modelo.load_state_dict(estado)
    res = evaluar(modelo, X[idv], Y[idv], K[idv]); print("final:", res, flush=True)
    torch.save(modelo.state_dict(), out / "modelo_q.pt")
    (out / "meta.json").write_text(json.dumps(dict(arquitectura=a.arquitectura, entrada=int(X.shape[1]), w_bits=a.w_bits, a_bits=a.a_bits, semilla=a.semilla, metricas_dev=res, base=base), indent=1))


if __name__ == "__main__":
    main()
