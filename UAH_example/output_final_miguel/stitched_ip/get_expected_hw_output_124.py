# -*- coding: utf-8 -*-

import numpy as np
from onnx import helper, TensorProto

from qonnx.core.modelwrapper import ModelWrapper
from qonnx.core.onnx_exec import execute_onnx
from qonnx.transformation.infer_shapes import InferShapes

model_path = "../intermediate_models/step_streamline.onnx"
txt_path = "input_124_opencv.txt"

print("Cargando:", model_path)

model = ModelWrapper(model_path)

# Primero inferimos shapes
model = model.transform(InferShapes())

# Ahora limpiamos value_info para evitar duplicados
model.graph.ClearField("value_info")

# Cambiamos la salida final para observar MultiThreshold_4_out0
model.graph.ClearField("output")
model.graph.output.extend([
    helper.make_tensor_value_info("MultiThreshold_4_out0", TensorProto.FLOAT, [1, 2])
])

# Reaseguramos shapes
model.set_tensor_shape("global_in", [1, 3, 16, 12])
model.set_tensor_shape("MultiThreshold_4_out0", [1, 2])

x = np.loadtxt(txt_path, dtype=np.float32)

if x.size != 576:
    raise RuntimeError("La entrada no tiene 576 valores")

x = x.reshape(1, 3, 16, 12).astype(np.float32)

print("Ejecutando hasta MultiThreshold_4_out0...")
out_dict = execute_onnx(model, {"global_in": x})

y = out_dict["MultiThreshold_4_out0"]

print("Salida MultiThreshold_4_out0:")
print(y)

y_int8 = np.rint(y.reshape(-1)).astype(np.int8)
y_u8 = y_int8.view(np.uint8)

print("INT8 esperado:")
print(y_int8)

print("Bytes UINT8 esperados:")
print(y_u8)

print("Decodificado como int8/127:")
print(y_int8.astype(np.float32) / 127.0)
