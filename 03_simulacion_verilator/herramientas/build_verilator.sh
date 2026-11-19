#!/usr/bin/env bash
# Compila el acelerador FINN con Verilator junto con un testbench C++.
#
# Uso:
#   03_simulacion_verilator/herramientas/build_verilator.sh [testbench.cpp] [carpeta_stitched_ip]
#
#   testbench.cpp  por defecto: main.cpp de verilator_sim (servidor UDP 5005)
#                  otros: main_original_antes_udp.cpp (dataset + OpenCV)
#                         "$HERE/verilator_selftest.cpp" (autotest)
#   stitched_ip    por defecto: la salida usada en el TFG
#
# Reproduce el comando que usó el alumno (recuperado de
# obj_dir/Vfinn_design_wrapper__verFiles.dat). Añade --no-timing si la versión
# de Verilator es >= 5 (en 4.x no existe esa opción). Enlaza OpenCV sólo si el
# testbench lo incluye.
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
STITCHED="${2:-$HERE/../salida_finn_mlp27k_w4a8/stitched_ip}"
SIM="$STITCHED/verilator_sim"
TB="${1:-main.cpp}"
TB_ABS="$(cd "$SIM" && realpath "$TB")"

cd "$SIM"

[ -f ../all_verilog_srcs_verilator_clean.txt ] || python3 "$HERE/make_verilator_srclist.py" "$STITCHED"

EXTRA=()
VER_MAJOR="$(verilator --version | awk '{print $2}' | cut -d. -f1)"
[ "$VER_MAJOR" -ge 5 ] && EXTRA+=(--no-timing)

if grep -q "opencv2" "$TB_ABS"; then
  EXTRA+=(-CFLAGS "$(pkg-config --cflags opencv4)" -LDFLAGS "$(pkg-config --libs opencv4)")
fi

rm -rf obj_dir
verilator -Wall --cc \
  ../finn_vivado_stitch_proj.gen/sources_1/bd/finn_design/hdl/finn_design_wrapper.v \
  -f ../all_verilog_srcs_verilator_clean.txt \
  --top-module finn_design_wrapper \
  --exe "$TB_ABS" --build -j "$(nproc)" \
  -I../finn_vivado_stitch_proj.gen/sources_1/bd/finn_design/ipshared/8713/hdl \
  "${EXTRA[@]}" \
  -Wno-fatal -Wno-MODDUP -Wno-TIMESCALEMOD -Wno-PINCONNECTEMPTY -Wno-DECLFILENAME \
  -Wno-PINMISSING -Wno-COMBDLY -Wno-UNUSED -Wno-WIDTH -Wno-STMTDLY -Wno-UNDRIVEN \
  2>&1 | tee compile_log.txt | grep -E "%Error|^make: \*\*\*" || true

[ -x obj_dir/Vfinn_design_wrapper ] && echo "OK: $SIM/obj_dir/Vfinn_design_wrapper (ejecutar desde $SIM)"
