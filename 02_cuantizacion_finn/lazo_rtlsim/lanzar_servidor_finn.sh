#!/usr/bin/env bash
# Servidor UDP del IP de FINN simulado con Verilator, en la imagen de FINN.
#   lanzar_servidor_finn.sh start <cnn|mlp> [puerto]     (la build y la tabla de entrada: /tmp/finn_est/hwq_*_z720, entrada_*)
#   lanzar_servidor_finn.sh prueba <cnn|mlp> <volcado.npz> [n]
#   lanzar_servidor_finn.sh stop [puerto] ; logs [puerto]
set -euo pipefail
AQUI="$(cd "$(dirname "$0")" && pwd)"; FINN="${FINN_DIR:-$HOME/finn_2026/finn}"; IMG="${FINN_IMG:-xilinx/finn:v0.9-dirty.xrt_202210.2.13.466_18.04-amd64-xrt}"
declare -A BUILD=([cnn]=/tmp/finn_est/hwq_cnn_cq4s6_z720 [mlp]=/tmp/finn_est/hwq_mlp_q4s0_z720)
declare -A TABLA=([cnn]=/tmp/finn_est/entrada_cnn/tabla_entrada.json [mlp]=/tmp/finn_est/entrada_mlp/tabla_entrada.json)
base=(--init -w "$FINN" -v "$FINN:$FINN" -v "$AQUI:$AQUI:ro" -v "$HOME/datasets:$HOME/datasets:ro" -v /tmp/finn_est:/tmp/finn_est
  -e FINN_BUILD_DIR=/tmp/finn_est -e FINN_ROOT="$FINN" -e OHMYXILINX="$FINN/deps/oh-my-xilinx" -e NUM_DEFAULT_WORKERS=4
  -v /tools/Xilinx:/tools/Xilinx -e XILINX_VIVADO=/tools/Xilinx/Vivado/2022.2 -e VIVADO_PATH=/tools/Xilinx/Vivado/2022.2
  -e HLS_PATH=/tools/Xilinx/Vitis_HLS/2022.2 -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro --user "$(id -u):$(id -g)" -e HOME=/tmp/finn_est)
case "${1:-}" in
  prueba) r=$2; docker run --rm "${base[@]}" "$IMG" bash -c "python $AQUI/servidor_finn_rtlsim.py --build ${BUILD[$r]} --tabla ${TABLA[$r]} --prueba ${4:-5} --volcado $3 2>&1 | grep -vE 'WARNING|xpm_|^$' | tail -n 30" ;;
  start) r=$2; P=${3:-5020}; docker rm -f servidor_finn_$P >/dev/null 2>&1 || true
    docker run -d --network host --name servidor_finn_$P "${base[@]}" "$IMG" bash -c "python -u $AQUI/servidor_finn_rtlsim.py --build ${BUILD[$r]} --tabla ${TABLA[$r]} --puerto $P" >/dev/null
    for _ in $(seq 1 600); do docker logs servidor_finn_$P 2>&1 | grep -q "servidor FINN" && exit 0; sleep 1; done
    echo "el servidor no arrancó" >&2; docker logs servidor_finn_$P 2>&1 | tail -8 >&2; exit 1 ;;
  stop) docker rm -f "servidor_finn_${2:-5020}" >/dev/null 2>&1 || true ;;
  logs) docker logs "servidor_finn_${2:-5020}" 2>&1 | grep -vE 'WARNING|xpm_' | tail -n "${3:-20}" ;;
  *) echo "uso: $0 start <cnn|mlp> [puerto] | prueba <cnn|mlp> <volcado.npz> [n] | stop [puerto] | logs [puerto]"; exit 1 ;;
esac
