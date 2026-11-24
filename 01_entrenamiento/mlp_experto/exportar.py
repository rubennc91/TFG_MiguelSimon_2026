#!/usr/bin/env python3
"""Exporta los pesos de un modelo entrenado (modelo.pt) a pesos.npz para el nodo de lazo cerrado.

    python -m mlp_experto.exportar --modelo ~/datasets/experto_f1_v2/modelos/r32_s1_peso10 --capas 2304,32,256,2
"""
import argparse
from pathlib import Path

import torch

from mlp_experto.entrenar import construir_modelo
from mlp_experto.inferencia import exportar_pesos


def main(argv=None):
    p = argparse.ArgumentParser()
    p.add_argument("--modelo", required=True)
    p.add_argument("--capas", default=None)
    p.add_argument("--cnn", default=None, help="ancho x alto: exporta la CNN mínima en vez del MLP")
    a = p.parse_args(argv)
    d = Path(a.modelo).expanduser()
    if a.cnn:
        from mlp_experto.cnn import construir_cnn, exportar_cnn
        m = construir_cnn(tuple(int(c) for c in a.cnn.split("x")))
        m.load_state_dict(torch.load(d / "modelo.pt", map_location="cpu"))
        exportar_cnn(m, d / "pesos.npz")
    else:
        m = construir_modelo(tuple(int(c) for c in a.capas.split(",")))
        m.load_state_dict(torch.load(d / "modelo.pt", map_location="cpu"))
        exportar_pesos(m, d / "pesos.npz")
    print("exportado", d / "pesos.npz")


if __name__ == "__main__":
    main()
