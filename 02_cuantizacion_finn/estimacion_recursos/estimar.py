#!/usr/bin/env python3
"""Estimación de recursos de FINN para la MLP w4a8 (pesos aleatorios: los recursos no dependen de los pesos).

Se ejecuta DENTRO de la imagen de FINN (ver lanzar_estimacion.sh). Reproduce el flujo del notebook definitivo
(docs/tecnica/01_FINN.md §1.3): Brevitas -> export_finn_onnx -> tidy -> ToTensor/UINT8 -> build_dataflow (solo informes de estimación).

    python estimar.py --entrada 576  --salida /tmp/finn_est/r576  [--ram-style auto|block] [--umbrales distributed|block]
"""
import argparse
import json
import os
import shutil
import sys
from pathlib import Path

import torch
import torch.nn as nn

import brevitas.nn as qnn
import brevitas.onnx as bo
from brevitas.quant import Int8Bias
import finn.builder.build_dataflow as build
import finn.builder.build_dataflow_config as build_cfg
from finn.util.pytorch import ToTensor
from qonnx.core.datatype import DataType
from qonnx.core.modelwrapper import ModelWrapper
from qonnx.transformation.fold_constants import FoldConstants
from qonnx.transformation.general import GiveReadableTensorNames, GiveUniqueNodeNames, RemoveStaticGraphInputs
from qonnx.transformation.infer_datatypes import InferDataTypes
from qonnx.transformation.infer_shapes import InferShapes
from qonnx.transformation.merge_onnx_models import MergeONNXModels


class MLPw4a8(nn.Module):
    """Misma estructura que QuantMLP27K_W4A8 (docs §1.3.1) con tamaño de entrada configurable."""
    def __init__(self, entrada, ocultas=(32, 256), act_bits=8):
        super().__init__()
        self.quant_in = qnn.QuantIdentity(bit_width=8, min_val=0.0, max_val=1.0, return_quant_tensor=True)
        self.fc1 = qnn.QuantLinear(entrada, ocultas[0], bias=True, weight_bit_width=4, bias_quant=Int8Bias, return_quant_tensor=True)
        self.relu1 = qnn.QuantReLU(bit_width=act_bits, return_quant_tensor=True)
        self.fx = qnn.QuantLinear(ocultas[0], ocultas[1], bias=True, weight_bit_width=4, bias_quant=Int8Bias, return_quant_tensor=True)
        self.relu2 = qnn.QuantReLU(bit_width=act_bits, return_quant_tensor=True)
        self.predictor = qnn.QuantLinear(ocultas[1], 2, bias=True, weight_bit_width=4, bias_quant=Int8Bias, return_quant_tensor=False)

    def forward(self, x):
        return self.predictor(self.relu2(self.fx(self.relu1(self.fc1(self.quant_in(x))))))


def tidy(m):
    for t in (InferShapes(), FoldConstants(), GiveUniqueNodeNames(), GiveReadableTensorNames(), InferDataTypes(), RemoveStaticGraphInputs()):
        m = m.transform(t)
    return m


class MemModeCompat:          # parche de FINN v0.9 (docs §1.3.3): default_mem_mode necesita .value
    def __init__(self, v):
        self.value = v


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--entrada", type=int, required=True, help="nº de valores de entrada (576 = 16x12x3, 2304 = 32x24x3)")
    p.add_argument("--salida", required=True)
    p.add_argument("--ram-style", default="auto", choices=("auto", "block", "distributed"), help="memoria de los pesos de las capas MVAU")
    p.add_argument("--umbrales", default="distributed", choices=("distributed", "block"), help="memoria de los umbrales de la capa de entrada")
    p.add_argument("--parte", default="xc7z020clg400-1")
    p.add_argument("--ocultas", default="32,256")
    p.add_argument("--simd0", type=int, default=0, help="SIMD de la primera capa (0 = automático)")
    p.add_argument("--modelo", default=None, help="carpeta con modelo_q.pt y meta.json (pesos reales; por defecto pesos aleatorios)")
    p.add_argument("--onnx-q", default=None, help="modelo_uint8_q.onnx de verificar_entrada_reductor.py: la cuantización de entrada la hace el reductor y el IP recibe q (UINT7)")
    p.add_argument("--ooc", action="store_true", help="genera el IP unido y sintetiza fuera de contexto (recursos y tiempos reales tras síntesis)")
    p.add_argument("--act-bits", type=int, default=8, help="bits de las activaciones ocultas (8 = w4a8; 4 = w4a4)")
    a = p.parse_args()
    out = Path(a.salida); shutil.rmtree(out, ignore_errors=True); out.mkdir(parents=True)
    torch.manual_seed(0)
    modelo = MLPw4a8(a.entrada, tuple(int(v) for v in a.ocultas.split(",")), a.act_bits)
    if a.modelo:                                # pesos reales (entrenados con QAT)
        meta = json.loads((Path(a.modelo) / "meta.json").read_text())
        modelo = MLPw4a8(a.entrada, tuple(int(v) for v in a.ocultas.split(",")), meta["a_bits"])
        modelo.load_state_dict(torch.load(Path(a.modelo) / "modelo_q.pt", map_location="cpu"))
    else:
        modelo.train()
        with torch.no_grad():
            for _ in range(8):                  # calibra las escalas de las activaciones con datos aleatorios
                modelo(torch.rand(64, a.entrada))
    modelo.eval()
    bo.export_finn_onnx(modelo, (1, a.entrada), str(out / "modelo.onnx"))
    m = tidy(ModelWrapper(str(out / "modelo.onnx")))
    ishape = m.get_tensor_shape(m.graph.input[0].name)
    bo.export_finn_onnx(ToTensor(), ishape, str(out / "preproc.onnx"))
    pre = tidy(ModelWrapper(str(out / "preproc.onnx")))
    m = m.transform(MergeONNXModels(pre))
    m.set_tensor_datatype(m.graph.input[0].name, DataType["UINT8"])
    m.save(str(out / "modelo_uint8.onnx"))

    # FINN exige SIMD >= MW/1024 en la primera capa (HLS): con 2304 entradas, SIMD=4 da 18.432 ciclos (como el diseño de 576 con SIMD=1)
    simd0 = a.simd0 or (1 if a.entrada <= 1024 else 4)
    folding = {"Defaults": {}, "Thresholding_Batch_0": {"PE": 1}}
    if a.umbrales != "distributed":
        folding["Thresholding_Batch_0"]["ram_style"] = a.umbrales
    for i in range(3):
        folding[f"MatrixVectorActivation_{i}"] = {"PE": 1, "SIMD": simd0 if i == 0 else 1}
        if a.ram_style != "auto":
            folding[f"MatrixVectorActivation_{i}"].update({"ram_style": a.ram_style, "resType": "lut", "mem_mode": "const"})
    (out / "folding.json").write_text(json.dumps(folding, indent=1))
    salidas = [build_cfg.DataflowOutputType.ESTIMATE_REPORTS]
    if a.ooc:
        salidas += [build_cfg.DataflowOutputType.STITCHED_IP, build_cfg.DataflowOutputType.OOC_SYNTH]
    os.environ["FINN_BUILD_DIR"] = str(out / "build")
    cfg = build_cfg.DataflowBuildConfig(
        output_dir=str(out / "salida"), folding_config_file=str(out / "folding.json"),
        mvau_wwidth_max=36, synth_clk_period_ns=10.0, board=None, fpga_part=a.parte,
        default_mem_mode=MemModeCompat("const"),
        generate_outputs=salidas, save_intermediate_models=True)
    build.build_dataflow_cfg(a.onnx_q or str(out / "modelo_uint8.onnx"), cfg)
    est = json.loads((out / "salida" / "report" / "estimate_layer_resources.json").read_text())
    rend = json.loads((out / "salida" / "report" / "estimate_network_performance.json").read_text())
    hls = json.loads((out / "salida" / "report" / "estimate_layer_resources_hls.json").read_text())
    hls_total = {k: sum(int(v.get(k, 0)) for v in hls.values()) for k in ("LUT", "FF", "BRAM_18K", "DSP", "URAM")}
    resumen = dict(entrada=a.entrada, act_bits=a.act_bits, ram_style=a.ram_style, umbrales=a.umbrales, capas=est, hls_capas=hls, hls_total=hls_total, rendimiento=rend)
    (out / "resumen.json").write_text(json.dumps(resumen, indent=1))
    print("RESUMEN", json.dumps(dict(entrada=a.entrada, act_bits=a.act_bits, ram_style=a.ram_style, umbrales=a.umbrales, analitico=est["total"], hls_total=hls_total, ciclos_criticos=rend["critical_path_cycles"], latencia_ns=rend["estimated_latency_ns"])))


if __name__ == "__main__":
    main()
