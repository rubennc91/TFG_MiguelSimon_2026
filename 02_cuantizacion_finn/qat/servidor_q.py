#!/usr/bin/env python3
"""Servidor UDP de la MLP cuantizada (mismo protocolo que el servidor Verilator): N bytes uint8 -> 2 float32 (v, w).
Se ejecuta en la imagen de FINN (lanzar_servidor_q.sh). Con --directo escribe además las salidas directas de unos vectores (autoprueba).
"""
import argparse
import json
import socket
import struct
from pathlib import Path

import numpy as np
import torch

from modelo_qat import CNNq, MLPq, decodificar


def cargar(dir_modelo: Path):
    meta = json.loads((dir_modelo / "meta.json").read_text())
    if meta.get("arquitectura") == "cnn":
        tam = {2304: (32, 24), 576: (16, 12)}[meta["entrada"]]
        m = CNNq(tam, w_bits=meta["w_bits"], a_bits=meta["a_bits"])
    else:
        m = MLPq(meta["entrada"], w_bits=meta["w_bits"], a_bits=meta["a_bits"])
    m.load_state_dict(torch.load(dir_modelo / "modelo_q.pt", map_location="cpu")); m.eval()
    return m, meta["entrada"]


def inferir(m, datos: bytes):
    x = torch.from_numpy(np.frombuffer(datos, np.uint8).astype(np.float32) / 255.0)[None, :]
    with torch.no_grad():
        v, w = decodificar(m(x))
    return float(v[0]), float(w[0])


def main():
    a = argparse.ArgumentParser(); a.add_argument("--modelo", required=True); a.add_argument("--puerto", type=int, default=5006)
    a.add_argument("--volcar", default="", help="npz donde guardar las imágenes recibidas (x, uint8) y las salidas (y, float32) para repetirlas después en el IP de FINN")
    a.add_argument("--directo", default="", help="npz con 'x' (uint8): guarda las salidas directas en <modelo>/directo.npy y sale")
    a = a.parse_args(); torch.set_num_threads(2)
    m, entrada = cargar(Path(a.modelo))
    if a.directo:
        x = np.load(a.directo)["x"][:40]; np.save(Path(a.modelo) / "directo.npy", np.array([inferir(m, r.tobytes()) for r in x], np.float32)); return
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.bind(("0.0.0.0", a.puerto))
    print(f"servidor cuantizado en UDP {a.puerto}, entrada {entrada} bytes", flush=True)
    xs, ys = [], []
    while True:
        datos, dire = s.recvfrom(65535)
        if len(datos) != entrada:
            continue
        sal = inferir(m, datos)
        s.sendto(struct.pack("<2f", *sal), dire)
        if a.volcar:
            xs.append(np.frombuffer(datos, np.uint8).copy()); ys.append(sal)
            if len(xs) % 50 == 0:
                np.savez(a.volcar, x=np.array(xs), y=np.array(ys, np.float32))


if __name__ == "__main__":
    main()
