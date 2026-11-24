#!/usr/bin/env python3
"""Conversión a FINN de la CNN mínima cuantizada (modelo_q.pt de qat.py --arquitectura cnn). DENTRO de la imagen de FINN.

Brevitas -> export_finn_onnx (entrada 3x24x32) -> tidy -> ToTensor/UINT8 -> build_dataflow (solo informes de estimación).
Sirve para comprobar que la cadena convierte la CNN a capas HLS y para ver recursos y latencia estimados.

    SCRIPT=estimar_cnn.py ./lanzar_estimacion.sh --modelo ~/datasets/experto_f1_v2/modelos/cq4_s0 --salida /tmp/finn_est/cnn_q4
"""
import argparse
import json
import os
import shutil
import sys
from pathlib import Path

import torch

sys.path.insert(0, str(Path(__file__).resolve().parent.parent / "qat"))
sys.path.insert(0, str(Path(__file__).resolve().parent))
import brevitas.onnx as bo
import finn.builder.build_dataflow as build
import finn.builder.build_dataflow_config as build_cfg
from finn.util.pytorch import ToTensor
from qonnx.core.datatype import DataType
from qonnx.core.modelwrapper import ModelWrapper
from qonnx.transformation.merge_onnx_models import MergeONNXModels

from estimar import MemModeCompat, tidy
from modelo_qat import CNNq


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--modelo", required=True, help="carpeta con modelo_q.pt y meta.json")
    p.add_argument("--salida", required=True)
    p.add_argument("--tam", default="32x24")
    p.add_argument("--parte", default="xc7z020clg400-1")
    p.add_argument("--hls-conv", action="store_true", help="generador de ventanas HLS (solo imágenes cuadradas) en vez del RTL")
    p.add_argument("--folding", default=None, help="JSON de folding (por defecto PE=SIMD=1)")
    p.add_argument("--onnx-q", default=None, help="modelo_uint8_q.onnx de verificar_entrada_reductor.py: la cuantización de entrada la hace el reductor y el IP recibe q (UINT7)")
    p.add_argument("--ooc", action="store_true", help="genera el IP unido (stitched) y sintetiza en Vivado fuera de contexto: recursos y tiempos reales tras síntesis")
    p.add_argument("--verificar", type=int, default=0, help="N imágenes reales: genera el IP y compara la simulación rtlsim con Brevitas (lento: HLS + Verilator)")
    p.add_argument("--datos", default=str(Path.home() / "datasets/experto_f1/cache/experto_f1_v2+experto_f1_v3_entrenamiento_32x24.npz"))
    a = p.parse_args()
    out = Path(a.salida); shutil.rmtree(out, ignore_errors=True); out.mkdir(parents=True)
    meta = json.loads((Path(a.modelo) / "meta.json").read_text())
    ancho, alto = (int(v) for v in a.tam.split("x"))
    m = CNNq((ancho, alto), w_bits=meta["w_bits"], a_bits=meta["a_bits"])
    m.load_state_dict(torch.load(Path(a.modelo) / "modelo_q.pt", map_location="cpu"))
    m.eval()
    forma = (1, 3, alto, ancho)
    bo.export_finn_onnx(m, forma, str(out / "modelo.onnx"))
    print("EXPORTADO modelo.onnx", flush=True)
    g = tidy(ModelWrapper(str(out / "modelo.onnx")))
    ishape = g.get_tensor_shape(g.graph.input[0].name)
    bo.export_finn_onnx(ToTensor(), ishape, str(out / "preproc.onnx"))
    g = g.transform(MergeONNXModels(tidy(ModelWrapper(str(out / "preproc.onnx")))))
    g.set_tensor_datatype(g.graph.input[0].name, DataType["UINT8"])
    g.save(str(out / "modelo_uint8.onnx"))
    print("OPS ONNX:", sorted({n.op_type for n in g.graph.node}), flush=True)
    salidas, verif, extra = [build_cfg.DataflowOutputType.ESTIMATE_REPORTS], [], {}
    if a.verificar:
        import numpy as np
        d = np.load(a.datos); x = d["x"] if "x" in d else d[d.files[0]]
        x = x[np.random.RandomState(0).choice(len(x), a.verificar, replace=False)].astype(np.uint8)
        with torch.no_grad():
            ref = m(torch.from_numpy(x.astype(np.float32) / 255.0)).numpy()
        np.save(out / "input.npy", x.astype(np.float32).reshape(-1, 3, alto, ancho)); np.save(out / "expected_output.npy", ref)
        salidas.append(build_cfg.DataflowOutputType.STITCHED_IP)   # la comparación la hace verificar_rtlsim.py (la de FINN falla por una anotación INT8 del Add final)
        extra = dict(verify_input_npy=str(out / "input.npy"), verify_expected_output_npy=str(out / "expected_output.npy"), auto_fifo_depths=False, verify_save_full_context=False)
    if a.ooc:
        for o in (build_cfg.DataflowOutputType.STITCHED_IP, build_cfg.DataflowOutputType.OOC_SYNTH):
            if o not in salidas: salidas.append(o)
    os.environ["FINN_BUILD_DIR"] = str(out / "build")
    cfg = build_cfg.DataflowBuildConfig(
        output_dir=str(out / "salida"), folding_config_file=a.folding, mvau_wwidth_max=36, synth_clk_period_ns=10.0,
        board=None, fpga_part=a.parte, default_mem_mode=MemModeCompat("const"), force_rtl_conv_inp_gen=not a.hls_conv, enable_build_pdb_debug=False,
        generate_outputs=salidas, verify_steps=verif, save_intermediate_models=True, **extra)
    build.build_dataflow_cfg(a.onnx_q or str(out / "modelo_uint8.onnx"), cfg)
    est = json.loads((out / "salida" / "report" / "estimate_layer_resources.json").read_text())
    rend = json.loads((out / "salida" / "report" / "estimate_network_performance.json").read_text())
    print("RESUMEN", json.dumps(dict(analitico=est["total"], ciclos_criticos=rend["critical_path_cycles"], latencia_ns=rend["estimated_latency_ns"])))
    print("CAPAS", sorted(est.keys()))


if __name__ == "__main__":
    main()
