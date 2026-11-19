#!/usr/bin/env python3
"""Modelo de referencia ("golden") del acelerador FINN, en numpy puro.

Ejecuta el grafo `step_streamline.onnx` generado por FINN (MultiThreshold +
MatMul enteros) sin necesitar FINN, qonnx ni Docker. Sirve para comprobar
bit a bit la salida del RTL simulado con Verilator.

Uso:
    python3 03_simulacion_verilator/herramientas/golden_model.py <imagen.raw|imagen.png> [--onnx RUTA]

- imagen.raw: 576 bytes ya ordenados en RGB planar (R0..R191 G0..G191 B0..B191).
- imagen.png: se convierte a 16x12 RGB planar (requiere Pillow).

Salida: enteros INT24 que debería producir m_axis_0_tdata y v, w ya en
unidades físicas.
"""
import argparse
from pathlib import Path

import numpy as np
import onnx
from onnx import helper, numpy_helper

DEFAULT_ONNX = (
    Path(__file__).resolve().parent.parent
    / "salida_finn_mlp27k_w4a8/intermediate_models/step_streamline.onnx"
)
V_MIN, V_MAX = -0.6, 13.0


def load_input(path: Path) -> np.ndarray:
    if path.suffix.lower() == ".raw":
        data = np.fromfile(path, dtype=np.uint8)
        assert data.size == 576, f"se esperaban 576 bytes, hay {data.size}"
        return data.astype(np.float32)
    from PIL import Image

    img = Image.open(path).convert("RGB").resize((16, 12))  # (ancho, alto)
    arr = np.asarray(img).astype(np.float32)  # H=12, W=16, C=3
    return np.transpose(arr, (2, 0, 1)).reshape(-1)  # RRR GGG BBB


def run(onnx_path: Path, x: np.ndarray):
    m = onnx.load(str(onnx_path))
    inits = {i.name: numpy_helper.to_array(i) for i in m.graph.initializer}
    t = {m.graph.input[0].name: x.reshape(1, -1)}
    for n in m.graph.node:
        a = {at.name: helper.get_attribute_value(at) for at in n.attribute}
        ins = [t[i] if i in t else inits[i] for i in n.input]
        if n.op_type == "Reshape":
            out = ins[0].reshape(ins[1])
        elif n.op_type == "MultiThreshold":
            v, thr = ins  # (1, C), (C, T)
            out = (v[:, :, None] >= thr[None, :, :]).sum(axis=2).astype(np.float64)
            out = out * a.get("out_scale", 1.0) + a.get("out_bias", 0.0)
        elif n.op_type == "MatMul":
            out = ins[0].astype(np.float64) @ ins[1].astype(np.float64)
        elif n.op_type == "Mul":
            raw = t[n.input[0]].copy()  # salida entera del acelerador (INT24)
            out = ins[0] * ins[1]
        elif n.op_type == "Add":
            out = ins[0] + ins[1]
        else:
            raise NotImplementedError(n.op_type)
        t[n.output[0]] = out
    norm = t[m.graph.output[0].name].ravel()
    v = V_MIN + norm[0] * (V_MAX - V_MIN)
    w = -np.pi + norm[1] * 2 * np.pi
    return raw.ravel().astype(int), norm, v, w


def main():
    p = argparse.ArgumentParser()
    p.add_argument("input", type=Path)
    p.add_argument("--onnx", type=Path, default=DEFAULT_ONNX)
    args = p.parse_args()
    raw, norm, v, w = run(args.onnx, load_input(args.input))
    print(f"raw_v={raw[0]} raw_w={raw[1]} | v_norm={norm[0]:.5f} w_norm={norm[1]:.5f} | v={v:.4f} w={w:.4f}")


if __name__ == "__main__":
    main()
