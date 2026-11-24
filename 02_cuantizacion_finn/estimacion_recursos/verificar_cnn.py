#!/usr/bin/env python3
"""Compara la salida de la CNN cuantizada en Brevitas con la de los modelos intermedios de FINN (ejecución en Python).
DENTRO de la imagen de FINN, tras estimar_cnn.py:
    SCRIPT=verificar_cnn.py FINN_LINEAS=40 ./lanzar_estimacion.sh --modelo <dir_modelo> --salida /tmp/finn_est/cnn_q4 [--n 200]
Entradas: imágenes uint8 reales del dataset (npz de entrenamiento) o ruido si no hay.
"""
import argparse
import json
import sys
from pathlib import Path

import numpy as np
import torch

sys.path.insert(0, str(Path(__file__).resolve().parent.parent / "qat"))
import qonnx.core.onnx_exec as oxe
from qonnx.core.datatype import DataType
from qonnx.core.modelwrapper import ModelWrapper

from modelo_qat import CNNq

ETAPAS = ["step_tidy_up", "step_streamline", "step_convert_to_hls"]


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--modelo", required=True); p.add_argument("--salida", required=True)
    p.add_argument("--datos", default="/home/ruben/datasets/experto_f1/cache/experto_f1_v2+experto_f1_v3_entrenamiento_32x24.npz")
    p.add_argument("--n", type=int, default=200)
    a = p.parse_args()
    meta = json.loads((Path(a.modelo) / "meta.json").read_text())
    m = CNNq((32, 24), w_bits=meta["w_bits"], a_bits=meta["a_bits"])
    m.load_state_dict(torch.load(Path(a.modelo) / "modelo_q.pt", map_location="cpu")); m.eval()
    try:
        d = np.load(a.datos); k = "x" if "x" in d else d.files[0]
        x = d[k][np.random.RandomState(0).choice(len(d[k]), a.n, replace=False)].astype(np.uint8)
    except Exception as e:
        print("sin datos reales (", e, "): ruido", flush=True); x = np.random.RandomState(0).randint(0, 256, (a.n, 2304)).astype(np.uint8)
    with torch.no_grad():
        ref = m(torch.from_numpy(x.astype(np.float32) / 255.0)).numpy()
    print("referencia Brevitas:", ref.shape, "rango", ref.min(), ref.max(), flush=True)
    for e in ETAPAS:
        ruta = Path(a.salida) / "salida" / "intermediate_models" / f"{e}.onnx"
        g = ModelWrapper(str(ruta))
        for t in [v.name for v in list(g.graph.value_info) + list(g.graph.input) + list(g.graph.output)] + list(g.get_all_tensor_names()):
            g.set_tensor_datatype(t, DataType["FLOAT32"])     # solo numérico: las anotaciones de tipo entero estorban al ejecutar en Python
        nombre = g.graph.input[0].name; forma = tuple(g.get_tensor_shape(nombre))
        try:
            sal = np.stack([oxe.execute_onnx(g, {nombre: xi.astype(np.float32).reshape(forma)})[g.graph.output[0].name].reshape(-1) for xi in x])
        except Exception as ex:
            print(f"{e}: no ejecutable ({type(ex).__name__}: {str(ex)[:150]})", flush=True); continue
        dif = np.abs(sal - ref)
        print(f"{e}: entrada {forma}, |dif| máx {dif.max():.3g}, media {dif.mean():.3g}, coinciden (<1e-4) {np.mean(dif < 1e-4) * 100:.1f} %", flush=True)


if __name__ == "__main__":
    main()
