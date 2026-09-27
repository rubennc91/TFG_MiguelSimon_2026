# -*- coding: utf-8 -*-

import os
import numpy as np
from PIL import Image
from onnx import helper, TensorProto

from qonnx.core.modelwrapper import ModelWrapper
from qonnx.core.onnx_exec import execute_onnx
from qonnx.transformation.infer_shapes import InferShapes

DATASET_DIR = "/home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/output_final_miguel/Dataset_JdeRobot/DATA_12_16/counter_montmelo_holonomic"

frames = [124, 500, 1000, 2000, 3000]

W = 12
H = 16
NPIX = W * H

output_scale = 0.00666375

os.makedirs("hw_inputs", exist_ok=True)

# Modelo completo para referencia QONNX float
model_float = ModelWrapper("../../model_tidy.onnx")
model_float = model_float.transform(InferShapes())

# Submodelo hasta Reshape_0_out0, que es la entrada INT8 esperada por stitched_ip
model_hw_in = ModelWrapper("../intermediate_models/step_convert_to_hls.onnx")
nodes = list(model_hw_in.graph.node)

model_hw_in.graph.ClearField("node")
model_hw_in.graph.node.extend(nodes[:2])

model_hw_in.graph.ClearField("value_info")

model_hw_in.graph.ClearField("input")
model_hw_in.graph.input.extend([
    helper.make_tensor_value_info("global_in", TensorProto.FLOAT, [1, 3, 16, 12])
])

model_hw_in.graph.ClearField("output")
model_hw_in.graph.output.extend([
    helper.make_tensor_value_info("Reshape_0_out0", TensorProto.FLOAT, [1, 576])
])

model_hw_in.set_tensor_shape("global_in", [1, 3, 16, 12])
model_hw_in.set_tensor_shape("MultiThreshold_0_out0", [1, 3, 16, 12])
model_hw_in.set_tensor_shape("Reshape_0_out0", [1, 576])
model_hw_in = model_hw_in.transform(InferShapes())

def image_to_rgb_planes_pil(path):
    img = Image.open(path).convert("RGB")
    img = img.resize((W, H))

    arr = np.asarray(img).astype(np.float32)  # H, W, RGB

    r = arr[:, :, 0].reshape(-1)
    g = arr[:, :, 1].reshape(-1)
    b = arr[:, :, 2].reshape(-1)

    x = np.concatenate([r, g, b], axis=0)

    return x.reshape(1, 3, 16, 12).astype(np.float32)

print("frame,image,vnorm_qonnx,wnorm_qonnx,raw0_expected,raw1_expected,hw_input_file")

with open("expected_subset.csv", "w") as f:
    f.write("frame,image,vnorm_qonnx,wnorm_qonnx,raw0_expected,raw1_expected,hw_input_file\n")

    for frame in frames:
        img_name = "{}.png".format(frame)
        img_path = os.path.join(DATASET_DIR, img_name)

        if not os.path.exists(img_path):
            print("NO EXISTE:", img_path)
            continue

        x = image_to_rgb_planes_pil(img_path)

        # Referencia float QONNX
        out_float = execute_onnx(model_float, {"global_in": x})["global_out"].reshape(-1)
        vnorm = float(out_float[0])
        wnorm = float(out_float[1])

        raw0 = int(np.rint(vnorm / output_scale))
        raw1 = int(np.rint(wnorm / output_scale))

        raw0 = max(-128, min(127, raw0))
        raw1 = max(-128, min(127, raw1))

        # Entrada INT8 que espera el hardware
        hw_in = execute_onnx(model_hw_in, {"global_in": x})["Reshape_0_out0"].reshape(-1)

        hw_int8 = np.rint(hw_in).astype(np.int8)
        hw_u8 = hw_int8.view(np.uint8)

        out_path = "hw_inputs/{}.txt".format(frame)
        np.savetxt(out_path, hw_u8.astype(np.uint16), fmt="%d")

        line = "{},{},{:.8f},{:.8f},{},{},{}".format(
            frame, img_name, vnorm, wnorm, raw0, raw1, out_path
        )

        print(line)
        f.write(line + "\n")

print("Generado expected_subset.csv")
