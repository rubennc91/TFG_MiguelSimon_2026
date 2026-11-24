#!/usr/bin/env bash
# Arranca (o para) el servidor UDP de una MLP cuantizada en la imagen de FINN. Un contenedor por puerto.
#   lanzar_servidor_q.sh start <dir_modelo> [puerto]      lanzar_servidor_q.sh stop [puerto]
set -euo pipefail
AQUI="$(cd "$(dirname "$0")" && pwd)"; FINN="${FINN_DIR:-$HOME/finn_2026/finn}"; IMG="${FINN_IMG:-xilinx/finn:v0.9-dirty.xrt_202210.2.13.466_18.04-amd64-xrt}"
liberar() { # para y espera a que Docker libere el nombre (evita la carrera al reutilizarlo)
  docker rm -f "$1" >/dev/null 2>&1 || true
  for _ in $(seq 1 40); do docker ps -a --format '{{.Names}}' | grep -qx "$1" || return 0; sleep 0.5; done
}
case "${1:-}" in
  stop) liberar "servidor_q_${2:-5006}"; liberar servidor_q ;;
  start) N="servidor_q_${3:-5006}"; liberar "$N"; liberar servidor_q
    docker run -d --init --name "$N" --network host -w "$AQUI" -v "$FINN:$FINN" -v "$AQUI:$AQUI" -v "$HOME/datasets:$HOME/datasets" \
      -e FINN_ROOT="$FINN" -e PYTHONPATH="$FINN/deps/brevitas/src:$FINN/deps/qonnx/src:$FINN/src" -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro \
      --user "$(id -u):$(id -g)" -e HOME=/tmp "$IMG" bash -c "python $AQUI/servidor_q.py --modelo $2 --puerto ${3:-5006} ${SERVIDOR_EXTRA:-}" >/dev/null
    for _ in $(seq 1 120); do docker logs "$N" 2>&1 | grep -q "servidor cuantizado en UDP" && exit 0; sleep 1; done
    echo "el servidor no arrancó" >&2; docker logs "$N" 2>&1 | tail -5 >&2; exit 1 ;;
  *) echo "uso: $0 start <dir_modelo> [puerto] | stop [puerto]"; exit 1 ;;
esac
