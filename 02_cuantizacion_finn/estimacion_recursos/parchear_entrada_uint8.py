#!/usr/bin/env python3
"""Cambia la anotación de la entrada global de modelo_uint8_q.onnx de UINT7 a UINT8 (misma tabla; solo el empaquetado del flujo de entrada del IP).
Dentro de la imagen de FINN:  parchear_entrada_uint8.py <modelo_uint8_q.onnx>   (sobrescribe; guarda copia .uint7.onnx)"""
import shutil, sys
from qonnx.core.datatype import DataType
from qonnx.core.modelwrapper import ModelWrapper
p = sys.argv[1]; shutil.copy(p, p.replace(".onnx", ".uint7.onnx"))
m = ModelWrapper(p); n = m.graph.input[0].name; print("entrada", n, m.get_tensor_datatype(n), "->", "UINT8")
m.set_tensor_datatype(n, DataType["UINT8"]); m.save(p)
