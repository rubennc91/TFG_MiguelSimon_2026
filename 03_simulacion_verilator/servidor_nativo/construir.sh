#!/usr/bin/env bash
# Compila el servidor nativo con Verilator para un IP de FINN ya generado (stitched IP de la build de estimación).
#   construir.sh <cnn|mlp> <dir_build_finn> <tabla_entrada.json> <dir_salida>
set -euo pipefail
AQUI="$(cd "$(dirname "$0")" && pwd)"; RED="$1"; BUILD="$(readlink -f "$2")"; TABLA="$(readlink -f "$3")"; OUT="$(readlink -m "$4")"
PARAMS="$AQUI/../../99_hw_project/zybo_22_2/software/finn_params_$RED.h"
RED_UP=$(echo "$RED" | tr a-z A-Z); VIVADO="${VIVADO_PATH:-/tools/Xilinx/Vivado/2022.2}"
# wrapper y proyecto de vivado del padre (metadatos del modelo hijo)
read -r WRAP PROJ <<<"$(python3 - "$BUILD" <<'P'
import sys, onnx
m = onnx.load(sys.argv[1] + "/salida/intermediate_models/step_create_stitched_ip.onnx"); d = {p.key: p.value for p in m.metadata_props}
print(d["wrapper_filename"], d["vivado_stitch_proj"])
P
)"
# FINN junta todo el Verilog del IP en un solo fichero y prepara las cabeceras compatibles con Verilator (idempotente)
python3 - "$BUILD" <<'P' > /dev/null
import sys
from qonnx.core.modelwrapper import ModelWrapper
from finn.util.pyverilator import prepare_stitched_ip_for_verilator
prepare_stitched_ip_for_verilator(ModelWrapper(sys.argv[1] + "/salida/intermediate_models/step_create_stitched_ip.onnx"))
P
WRAP="$PROJ/$(basename "$WRAP")"   # fichero único con todo el Verilog (lo genera FINN al simular con PyVerilator)
mkdir -p "$OUT"; cp "$AQUI/main.cpp" "$PARAMS" "$OUT/"; python3 "$AQUI/generar_tabla.py" "$TABLA" > "$OUT/tabla_q.h"
cd "$OUT"
verilator --cc --exe --build -j "$(nproc)" -O3 -Wno-STMTDLY -Wno-PINMISSING -Wno-IMPLICIT -Wno-WIDTH -Wno-COMBDLY -Wno-TIMESCALEMOD -Wno-fatal \
  -DDISABLE_XPM_ASSERTIONS -DOBSOLETE -DONESPIN --bbox-unsup \
  -y "$PROJ" -y "$PROJ/pyverilator_vh" --top-module "$(basename "$WRAP" .v)" \
  -CFLAGS "-O3 -DRED_$RED_UP -DELEM_BITS=${ELEM_BITS:-8} -I$OUT" "$WRAP" "$VIVADO/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" "$VIVADO/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "$VIVADO/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" main.cpp -o servidor_finn_nativo > verilator.log 2>&1 || { tail -20 verilator.log; exit 1; }
ls -la "$OUT/obj_dir/servidor_finn_nativo"
