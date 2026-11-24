#!/usr/bin/env bash
# Ejecuta estimar.py dentro de la imagen de FINN.   lanzar_estimacion.sh <args de estimar.py>
#   p. ej.:  lanzar_estimacion.sh --entrada 2304 --salida /tmp/finn_est/r2304_bloque --ram-style block
set -euo pipefail
AQUI="$(cd "$(dirname "$0")" && pwd)"
FINN="${FINN_DIR:-$HOME/finn_2026/finn}"; IMG="${FINN_IMG:-xilinx/finn:v0.9-dirty.xrt_202210.2.13.466_18.04-amd64-xrt}"
mkdir -p /tmp/finn_est
SCRIPT="${SCRIPT:-estimar.py}"   # p. ej. SCRIPT=estimar_cnn.py
docker run --rm --init -w "$FINN" -v "$FINN:$FINN" -v "$AQUI:$AQUI:ro" -v "$AQUI/../qat:$AQUI/../qat:ro" -v "$HOME/datasets:$HOME/datasets:ro" -v /tmp/finn_est:/tmp/finn_est \
  -e FINN_BUILD_DIR=/tmp/finn_est -e FINN_ROOT="$FINN" -e OHMYXILINX="$FINN/deps/oh-my-xilinx" -e NUM_DEFAULT_WORKERS=4 \
  -v /tools/Xilinx:/tools/Xilinx -e XILINX_VIVADO=/tools/Xilinx/Vivado/2022.2 -e VIVADO_PATH=/tools/Xilinx/Vivado/2022.2 \
  -e HLS_PATH=/tools/Xilinx/Vitis_HLS/2022.2 -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro \
  --user "$(id -u):$(id -g)" -e HOME=/tmp/finn_est "$IMG" bash -c "python $AQUI/$SCRIPT $* 2>&1 | grep -vE 'WARNING|^$' | tail -n ${FINN_LINEAS:-25}"
