# -*- coding: utf-8 -*-

from qonnx.core.modelwrapper import ModelWrapper

models = [
    "../../model_tidy.onnx",
    "../intermediate_models/step_streamline.onnx",
    "../intermediate_models/step_convert_to_hls.onnx",
    "../intermediate_models/step_create_dataflow_partition.onnx",
    "../intermediate_models/step_apply_folding_config.onnx",
    "../intermediate_models/step_set_fifo_depths.onnx",
    "../intermediate_models/step_create_stitched_ip.onnx",
    "../intermediate_models/step_measure_rtlsim_performance.onnx",
]

for m in models:
    print("====================================")
    print("Modelo:", m)

    model = ModelWrapper(m)

    print("Entradas:")
    for inp in model.graph.input:
        name = inp.name
        print(" ", name)
        print("    shape =", model.get_tensor_shape(name))
        print("    dtype =", model.get_tensor_datatype(name))

    print("Salidas:")
    for out in model.graph.output:
        name = out.name
        print(" ", name)
        print("    shape =", model.get_tensor_shape(name))
        print("    dtype =", model.get_tensor_datatype(name))

    print("Ultimos nodos:")
    for node in model.graph.node[-8:]:
        print(" ", node.op_type, node.name)
        print("    in :", list(node.input))
        print("    out:", list(node.output))
