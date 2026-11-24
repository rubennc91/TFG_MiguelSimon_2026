#!/usr/bin/env python3
"""Repite en el IP de FINN (rtlsim/Verilator) las imágenes que vio el modelo cuantizado dentro de Gazebo y compara con la salida del servidor (Brevitas).
DENTRO de la imagen de FINN.  Entrada: npz del servidor (--volcar): x (N, 2304) uint8 planar, y (N, 2) float (v, w).
    SCRIPT=verificar_volcado.py ./lanzar_estimacion.sh --build /tmp/finn_est/hwq_cnn_cq4s6_z720 --tabla /tmp/finn_est/entrada_cnn/tabla_entrada.json \
        --volcado ~/datasets/experto_f1_v2/volcado/cq4_s6_silverstone.npz --paso 15 --salida /tmp/finn_est/volcado_cnn.json
Lo que hace el reductor (byte -> q con la tabla) se hace aquí antes de entrar en el IP; el Mul/Add final y la decodificación (v, w) los hace la CPU."""
import argparse, json, os
from pathlib import Path

import numpy as np
from qonnx.core.datatype import DataType
from qonnx.core.modelwrapper import ModelWrapper
from finn.util.test import execute_parent

V_MIN, V_MAX, W_MIN, W_MAX = -0.6, 13.0, -np.pi, np.pi


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--build", required=True); p.add_argument("--tabla", required=True); p.add_argument("--volcado", required=True)
    p.add_argument("--paso", type=int, default=15); p.add_argument("--salida", required=True); a = p.parse_args()
    mod = Path(a.build) / "salida" / "intermediate_models"
    tabla = np.array(json.loads(Path(a.tabla).read_text())["tabla"], np.float32)
    d = np.load(a.volcado); x, y = d["x"][:: a.paso], d["y"][:: a.paso]
    padre = ModelWrapper(str(mod / "dataflow_parent.onnx"))
    for n in padre.graph.node:
        for i in n.input:
            if padre.get_initializer(i) is not None:
                padre.set_tensor_datatype(i, DataType["FLOAT32"])
    forma = tuple(padre.get_tensor_shape(padre.graph.input[0].name)); print("entrada del padre:", forma, flush=True)
    padre.save(str(mod / "padre_relajado.onnx"))
    hijo = ModelWrapper(str(mod / "step_create_stitched_ip.onnx")); hijo.set_metadata_prop("exec_mode", "rtlsim")
    hijo.save(str(mod / "hijo_rtlsim.onnx")); os.environ["LIVENESS_THRESHOLD"] = "400000"
    sal = []
    for k, xi in enumerate(x):
        q = tabla[xi].reshape(forma).astype(np.float32)          # planar (3, 24, 32): el padre traspone a entrelazado
        sal.append(execute_parent(str(mod / "padre_relajado.onnx"), str(mod / "hijo_rtlsim.onnx"), q).reshape(-1))
        if k % 10 == 0: print(k, "/", len(x), flush=True)
    sal = np.array(sal)                                           # ya reescalado por el padre (Mul + Add), sin saturar
    s = np.clip(sal, 0.0, 1.0)
    v, w = s[:, 0] * (V_MAX - V_MIN) + V_MIN, s[:, 1] * (W_MAX - W_MIN) + W_MIN
    dv, dw = np.abs(v - y[:, 0]), np.abs(w - y[:, 1])
    res = {"imagenes": int(len(x)), "paso": a.paso, "dif_v_max": float(dv.max()), "dif_v_media": float(dv.mean()), "dif_w_max": float(dw.max()),
           "dif_w_media": float(dw.mean()), "iguales_v_1e-3": int((dv < 1e-3).sum()), "iguales_w_1e-3": int((dw < 1e-3).sum()),
           "v_rango_servidor": [float(y[:, 0].min()), float(y[:, 0].max())], "w_rango_servidor": [float(y[:, 1].min()), float(y[:, 1].max())]}
    Path(a.salida).write_text(json.dumps(res, indent=1)); print(json.dumps(res, indent=1))


if __name__ == "__main__":
    main()
