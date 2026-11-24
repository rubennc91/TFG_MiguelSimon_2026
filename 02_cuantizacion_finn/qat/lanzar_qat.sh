#!/usr/bin/env bash
# Ejecuta qat.py dentro de la imagen de FINN.   lanzar_qat.sh <args de qat.py>
set -euo pipefail
AQUI="$(cd "$(dirname "$0")" && pwd)"; FINN="${FINN_DIR:-$HOME/finn_2026/finn}"; IMG="${FINN_IMG:-xilinx/finn:v0.9-dirty.xrt_202210.2.13.466_18.04-amd64-xrt}"
docker run --rm --init -w "$AQUI" -v "$FINN:$FINN" -v "$AQUI:$AQUI" -v "$HOME/datasets:$HOME/datasets" -e FINN_ROOT="$FINN" \
  -e PYTHONPATH="$FINN/deps/brevitas/src:$FINN/deps/qonnx/src:$FINN/src:${PYTHONPATH:-}" -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro \
  --user "$(id -u):$(id -g)" -e HOME=/tmp "$IMG" bash -c "python $AQUI/qat.py $* 2>&1 | grep -vE 'Warning|warn|^$'"
