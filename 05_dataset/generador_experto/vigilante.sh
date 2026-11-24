#!/usr/bin/env bash
# Vigila la generación del dataset: si el proceso muere o las filas dejan de crecer, la reanuda.
#   [BASE=carpeta] [RESOLUCIONES=16x12,32x24] generador_experto/vigilante.sh [TOTAL]        (por defecto 150000)
# Registro: ~/datasets/experto_f1/vigilante.log. Termina cuando el informe final está escrito.
TOTAL="${1:-150000}"
BASE="${BASE:-$HOME/datasets/experto_f1}"; RESOLUCIONES="${RESOLUCIONES:-16x12}"; D="$BASE/entrenamiento"; LOG="$BASE/vigilante.log"; GEN="$BASE/generar_entrenamiento.log"
PY="$HOME/.venvs/generador/bin/python"
AQUI="$(cd "$(dirname "$0")/.." && pwd)"; LANZADOR="$AQUI/../04_ros2_gazebo/lanzar_todo.sh"
PATRON="^$PY -m generador_experto.generar"
PERIODO=300; MAX_SIN_CRECER=4; MAX_REINICIOS=6        # 4 x 5 min = 20 min sin crecer -> reanudar
filas() { cat "$D"/*/data.csv 2>/dev/null | grep -vc image_name; }
log() { echo "$(date '+%F %T') $*" >> "$LOG"; }
lanzar() { (cd "$AQUI" && nohup "$PY" -m generador_experto.generar --total "$TOTAL" --destino "$BASE" --resoluciones "$RESOLUCIONES" >> "$GEN" 2>&1 &); }
ultimo=-1; quieto=0; reinicios=0
log "VIGILANTE iniciado (objetivo $TOTAL filas)"
while true; do
  sleep "$PERIODO"
  if grep -q "^informe:" "$GEN" 2>/dev/null && ! pgrep -f "$PATRON" >/dev/null; then log "FIN: $(filas) filas; $(grep '^informe:' "$GEN" | tail -n 1)"; exit 0; fi
  n=$(filas); vivo=$(pgrep -f "$PATRON" | wc -l)
  if [ "$n" -gt "$ultimo" ]; then quieto=0; else quieto=$((quieto+1)); fi
  ultimo=$n
  log "filas=$n ($((100*n/TOTAL))%) proceso=$([ "$vivo" -gt 0 ] && echo vivo || echo MUERTO) sin_crecer=$quieto"
  if [ "$vivo" -eq 0 ] || [ "$quieto" -ge "$MAX_SIN_CRECER" ]; then
    reinicios=$((reinicios+1))
    if [ "$reinicios" -gt "$MAX_REINICIOS" ]; then log "ABANDONO: demasiados reinicios ($MAX_REINICIOS); requiere revisión"; exit 1; fi
    log "REINICIO $reinicios: proceso=$([ "$vivo" -gt 0 ] && echo vivo || echo muerto), sin crecer $quieto comprobaciones"
    pkill -f "$PATRON"; sleep 2; "$LANZADOR" stop >/dev/null 2>&1; sleep 3
    lanzar; quieto=0
  fi
done
