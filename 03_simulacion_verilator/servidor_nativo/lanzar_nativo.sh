#!/usr/bin/env bash
# Compila y ejecuta el servidor nativo (C++ + Verilator) del IP de FINN en la imagen de FINN (su Verilator y su Vivado/XPM son los compatibles).
#   lanzar_nativo.sh build <cnn|mlp>      compila en /tmp/finn_est/nativo_<red>
#   lanzar_nativo.sh start <cnn|mlp> [puerto]   |   stop [puerto]   |   logs [puerto] [n]
set -euo pipefail
AQUI="$(cd "$(dirname "$0")" && pwd)"; REPO="$(cd "$AQUI/../.." && pwd)"; FINN="${FINN_DIR:-$HOME/finn_2026/finn}"
IMG="${FINN_IMG:-xilinx/finn:v0.9-dirty.xrt_202210.2.13.466_18.04-amd64-xrt}"
# IP con entrada UINT8 (hwq8_*); BUILD_ANTIGUO=1 usa el IP anterior (UINT7, paso de 7 bits)
declare -A BUILD=([cnn]=/tmp/finn_est/hwq8_cnn_cq4s6_z720 [mlp]=/tmp/finn_est/hwq8_mlp_q4s0_z720); ELEM=8
[ "${BUILD_ANTIGUO:-0}" = 1 ] && { BUILD=([cnn]=/tmp/finn_est/hwq_cnn_cq4s6_z720 [mlp]=/tmp/finn_est/hwq_mlp_q4s0_z720); ELEM=7; }
declare -A TABLA=([cnn]=/tmp/finn_est/entrada_cnn/tabla_entrada.json [mlp]=/tmp/finn_est/entrada_mlp/tabla_entrada.json)
base=(--init -w "$FINN" -v "$FINN:$FINN" -v "$REPO:$REPO:ro" -v /tmp/finn_est:/tmp/finn_est -e FINN_BUILD_DIR=/tmp/finn_est -e FINN_ROOT="$FINN"
  -e OHMYXILINX="$FINN/deps/oh-my-xilinx" -v /tools/Xilinx:/tools/Xilinx -e XILINX_VIVADO=/tools/Xilinx/Vivado/2022.2 -e VIVADO_PATH=/tools/Xilinx/Vivado/2022.2
  -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro --user "$(id -u):$(id -g)" -e HOME=/tmp/finn_est)
case "${1:-}" in
  build) r=$2; docker run --rm "${base[@]}" "$IMG" bash -c "ELEM_BITS=$ELEM bash $AQUI/construir.sh $r ${BUILD[$r]} ${TABLA[$r]} /tmp/finn_est/nativo_$r 2>&1 | grep -vE 'WARNING|^$' | tail -n 25" ;;
  start) r=$2; P=${3:-5020}; docker rm -f nativo_$P >/dev/null 2>&1 || true
    docker run -d --network host --name nativo_$P "${base[@]}" "$IMG" bash -c "/tmp/finn_est/nativo_$r/obj_dir/servidor_finn_nativo $P" >/dev/null
    for _ in $(seq 1 60); do docker logs nativo_$P 2>&1 | grep -q "servidor FINN nativo" && exit 0; sleep 1; done
    echo "el servidor no arrancó" >&2; docker logs nativo_$P 2>&1 | tail -8 >&2; exit 1 ;;
  stop) docker rm -f "nativo_${2:-5020}" >/dev/null 2>&1 || true ;;
  logs) docker logs "nativo_${2:-5020}" 2>&1 | tail -n "${3:-10}" ;;
  *) echo "uso: $0 build <cnn|mlp> | start <cnn|mlp> [puerto] | stop [puerto] | logs [puerto] [n]"; exit 1 ;;
esac
