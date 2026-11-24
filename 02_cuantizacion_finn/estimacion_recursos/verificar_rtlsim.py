#!/usr/bin/env python3
"""Simula con rtlsim (Verilator) el IP generado por `estimar_cnn.py --verificar N` y lo compara con Brevitas. DENTRO de la imagen de FINN.
    SCRIPT=verificar_rtlsim.py FINN_LINEAS=40 ./lanzar_estimacion.sh --salida /tmp/finn_est/cnn_q4_rtl
La parte del padre (Mul y Add finales que reescalan la salida entera) queda en el anfitrión; su Add lleva una anotación INT8 con un valor
decimal que hace fallar la comprobación de FINN, así que se anota como FLOAT32 en una copia (solo cambia la anotación, no el cálculo).
"""
import argparse
import os
from pathlib import Path

import numpy as np
from qonnx.core.datatype import DataType
from qonnx.core.modelwrapper import ModelWrapper

from finn.util.test import execute_parent


def main():
    p = argparse.ArgumentParser(); p.add_argument("--salida", required=True); a = p.parse_args()
    o = Path(a.salida); mod = o / "salida" / "intermediate_models"
    x = np.load(o / "input.npy"); ref = np.load(o / "expected_output.npy")
    padre = ModelWrapper(str(mod / "dataflow_parent.onnx"))
    for n in padre.graph.node:
        for i in n.input:
            if padre.get_initializer(i) is not None:
                padre.set_tensor_datatype(i, DataType["FLOAT32"])
    padre.save(str(mod / "padre_relajado.onnx"))
    hijo = ModelWrapper(str(mod / "step_create_stitched_ip.onnx")); hijo.set_metadata_prop("exec_mode", "rtlsim")
    hijo.save(str(mod / "hijo_rtlsim.onnx"))
    os.environ["LIVENESS_THRESHOLD"] = "400000"
    sal = np.concatenate([execute_parent(str(mod / "padre_relajado.onnx"), str(mod / "hijo_rtlsim.onnx"), xi[None]).reshape(1, -1) for xi in x])
    dif = np.abs(sal - ref)
    print("FINN rtlsim:\n", sal, "\nBrevitas:\n", ref)
    print(f"RESULTADO {len(x)} imágenes: |dif| máx {dif.max():.3g}, media {dif.mean():.3g}")


if __name__ == "__main__":
    main()
