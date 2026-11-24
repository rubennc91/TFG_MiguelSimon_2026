#!/usr/bin/env bash
# Lanza toda la cadena de simulación del TFG con un solo comando:
#   servidor Verilator (UDP 5005) + Gazebo (circuito de Montmeló) + coche F1 + controlador neuronal.
#
# Uso:
#   04_ros2_gazebo/lanzar_todo.sh            # arranca todo (equivale a "start")
#   04_ros2_gazebo/lanzar_todo.sh status     # qué está en marcha
#   04_ros2_gazebo/lanzar_todo.sh logs       # últimas líneas de cada registro
#   04_ros2_gazebo/lanzar_todo.sh stop       # lo para todo
#
# Variables opcionales:
#   F1_WS=~/f1_ws   carpeta de trabajo ROS (se crea copiando 04_ros2_gazebo/f1_ws si no existe)
#   PANTALLA=:1     pantalla X a usar (por defecto, la del socket en /tmp/.X11-unix)
#   GAZEBO_GUI=1    abrir también la ventana de Gazebo (por defecto solo la cámara)
#   MODO=holo       modelo del coche: ackermann (por defecto) o holo
#   EXPERTO=1       en vez de la red, conduce el experto y graba el dataset (05_dataset/generador_experto);
#                   EXPERTO_ARGS="--modo limpio --vueltas 1"; CIRCUITO=montmelo|montreal|...; SENTIDO=1|-1; DATOS=carpeta de salida
#   NODO="..."      con EXPERTO=1, otro nodo en lugar del generador (p. ej. python3 -m mlp_experto.lazo_cerrado ...)
#   INSTANCIA=2     segunda simulación en paralelo (nombre de contenedor, dominio ROS y partición de Gazebo distintos)
#   NO_GUI=1        no abrir ventanas (sin rqt_image_view ni xhost); útil por SSH
#   GPU=0|1         forzar sin/con GPU (por defecto: con GPU solo si nvidia-smi funciona)
#   FACTOR_LIN, FACTOR_ANG   factores lineal y angular del controlador (por defecto 1.0 y 0.30)
set -u

AQUI="$(cd "$(dirname "$0")" && pwd)"
REPO="$(cd "$AQUI/.." && pwd)"
SIM="$REPO/03_simulacion_verilator/salida_finn_mlp27k_w4a8/stitched_ip/verilator_sim"
F1_WS="${F1_WS:-$HOME/f1_ws}"
INSTANCIA="${INSTANCIA:-}"            # 2, 3...: otra simulación en paralelo (contenedor, ROS_DOMAIN_ID y partición de Gazebo propios)
CONT=f1_gazebo${INSTANCIA:+_$INSTANCIA}
IMG=jderobot/robotics-academy:6.1.8
PUERTO=5005
CIRCUITO="${CIRCUITO:-montmelo}"   # montmelo | montreal | nurburgring | simple | monaco | spa
SENTIDO="${SENTIDO:-1}"          # 1 | -1 (solo con EXPERTO=1)
DATOS="${DATOS:-$HOME/datasets/experto_f1}"
MODO="${MODO:-ackermann}"   # ackermann | holo (el dataset es holonómico)
RUN=/tmp/tfg_lanzar${INSTANCIA:+_$INSTANCIA}
mkdir -p "$RUN"

XC=""   # la imagen fuerza DISPLAY=:0 vía BASH_ENV: se re-exporta dentro de cada comando
XD=()   # pantalla para los docker exec (se rellena si hay GUI)
en_cont() { docker exec "${XD[@]}" "$CONT" bash -c "${XC}source /opt/ros/humble/setup.bash; source /home/ws/install/setup.bash; $*"; }
en_cont_bg() { docker exec -d "${XD[@]}" "$CONT" bash -c "${XC}source /opt/ros/humble/setup.bash; source /home/ws/install/setup.bash; $*"; }
espera() { # espera "descripcion" segundos comando...
  local d="$1" t="$2"; shift 2; local i
  printf "  esperando %s " "$d"
  for ((i = 0; i < t; i += 2)); do
    if "$@" >/dev/null 2>&1; then echo "ok"; return 0; fi
    printf "."; sleep 2
  done
  echo " TIEMPO AGOTADO"; return 1
}

parar() {
  echo "Parando..."
  [ -f "$RUN/servidor.pid" ] && kill "$(cat "$RUN/servidor.pid")" 2>/dev/null && sleep 1
  [ -f "$RUN/servidor.pid" ] && kill -9 "$(cat "$RUN/servidor.pid")" 2>/dev/null
  rm -f "$RUN/servidor.pid"
  docker stop "$CONT" >/dev/null 2>&1   # el contenedor se borra solo (--rm)
  echo "Parado."
}

estado() {
  echo -n "Servidor Verilator (UDP $PUERTO): "
  if [ -f "$RUN/servidor.pid" ] && kill -0 "$(cat "$RUN/servidor.pid")" 2>/dev/null; then echo "en marcha (pid $(cat "$RUN/servidor.pid"))"; else echo "parado"; fi
  echo -n "Contenedor $CONT: "
  docker ps --filter "name=^${CONT}$" --format '{{.Status}}' | grep . || echo "parado"
  if docker ps --format '{{.Names}}' | grep -qx "$CONT"; then
    echo -n "Controlador: "; en_cont "ros2 node list 2>/dev/null | grep -c f1_neural_controller" 2>/dev/null | sed 's/^1$/en marcha/;s/^0$/parado/'
  fi
}

registros() {
  for f in "$RUN"/*.log; do [ -f "$f" ] && { echo "== $f"; tail -n 5 "$f" | cut -c1-200; }; done
  docker ps --format '{{.Names}}' | grep -qx "$CONT" && for f in circuito coche controlador; do
    echo "== $CONT:/tmp/$f.log"; docker exec "$CONT" tail -n 5 "/tmp/$f.log" 2>/dev/null | cut -c1-200
  done
}

arrancar() {
  command -v docker >/dev/null || { echo "Falta docker."; exit 1; }
  [ "${EXPERTO:-0}" = 1 ] || [ -d "$SIM/obj_dir" ] || { echo "No encuentro $SIM/obj_dir"; exit 1; }

  # 0. Lo anterior, fuera
  docker ps --format '{{.Names}}' | grep -qx "$CONT" && { echo "Ya había un contenedor $CONT en marcha; lo paro."; docker stop "$CONT" >/dev/null; }
  if ss -lunp 2>/dev/null | grep -q ":$PUERTO "; then
    if [ -f "$RUN/servidor.pid" ] && kill -0 "$(cat "$RUN/servidor.pid")" 2>/dev/null; then kill "$(cat "$RUN/servidor.pid")"; sleep 1
    else echo "El puerto UDP $PUERTO está ocupado por otro proceso:"; ss -lunp | grep ":$PUERTO "; echo "Páralo y vuelve a lanzar."; exit 1; fi
  fi

  # 1. Servidor Verilator (no hace falta con EXPERTO=1)
  if [ "${EXPERTO:-0}" != 1 ]; then
  echo "[1/5] Servidor Verilator en el puerto $PUERTO"
  if [ ! -x "$SIM/obj_dir/Vfinn_design_wrapper" ]; then
    echo "  compilando con make..."; make -C "$SIM/obj_dir" -f Vfinn_design_wrapper.mk -j"$(nproc)" >"$RUN/make.log" 2>&1 || { echo "Falló make (ver $RUN/make.log)"; exit 1; }
  fi
  ( cd "$SIM" && exec nohup ./obj_dir/Vfinn_design_wrapper >"$RUN/servidor.log" 2>&1 ) & echo $! >"$RUN/servidor.pid"
  espera "al servidor" 10 bash -c "ss -lunp | grep -q ':$PUERTO '" || { cat "$RUN/servidor.log"; exit 1; }
  fi

  # 2. Contenedor
  echo "[2/5] Contenedor $CONT ($IMG)"
  if [ ! -d "$F1_WS/src" ]; then echo "  copiando f1_ws a $F1_WS"; mkdir -p "$F1_WS"; cp -r "$AQUI/f1_ws/." "$F1_WS/"; fi
  local gpu=() pantalla=()
  if [ "${GPU:-auto}" = 1 ] || { [ "${GPU:-auto}" = auto ] && nvidia-smi >/dev/null 2>&1; }; then gpu=(--gpus all -e NVIDIA_DRIVER_CAPABILITIES=all); else echo "  (sin GPU: render por software, será lento)"; fi
  local gui=1; [ "${NO_GUI:-0}" = 1 ] && gui=0
  if [ $gui = 1 ]; then
    # Pantalla local: la del socket X11 que exista (p. ej. :1), no la de SSH (localhost:10.0)
    if [ -z "${PANTALLA:-}" ]; then
      PANTALLA="$(ls /tmp/.X11-unix 2>/dev/null | sed -n 's/^X/:/p' | head -n1)"; PANTALLA="${PANTALLA:-:0}"
    fi
    export DISPLAY="$PANTALLA"; XD=(-e "DISPLAY=$PANTALLA"); XC="export DISPLAY=$PANTALLA; "
    command -v xhost >/dev/null && xhost +local:root >/dev/null 2>&1
    pantalla=(-e DISPLAY="$DISPLAY" -e QT_X11_NO_MITSHM=1 -e QT_QPA_PLATFORM=xcb -v /tmp/.X11-unix:/tmp/.X11-unix:rw)
  fi
  mkdir -p "$DATOS"
  docker run -d --rm "${gpu[@]}" --network host "${pantalla[@]}" -e ROS_DOMAIN_ID=${INSTANCIA:-0} -e GZ_PARTITION=particion${INSTANCIA:-0} -e IGN_PARTITION=particion${INSTANCIA:-0} -v "$F1_WS:/f1_ws" -v "$REPO/05_dataset:/ds:ro" -v "$AQUI/mundos_extra:/mundos:ro" -v "$REPO/01_entrenamiento:/ent:ro" -v "$HOME/datasets:/datasets:ro" -v "$DATOS:/datos" \
    --entrypoint sleep --name "$CONT" "$IMG" infinity >/dev/null || { echo "No arrancó el contenedor."; exit 1; }
  local xv=""; [ $gui = 0 ] && xv="xvfb-run -a"
  local xv_coche="$xv"
  # Con --network host los sockets de X son compartidos entre contenedores y `-a` solo mira su propio /tmp: en otra instancia
  # cada lanzamiento (circuito y coche) usa un número de pantalla propio.
  if [ $gui = 0 ] && [ -n "$INSTANCIA" ]; then xv="xvfb-run -n $((100 + INSTANCIA * 10))"; xv_coche="xvfb-run -n $((101 + INSTANCIA * 10))"; fi
  [ ${#gpu[@]} = 0 ] && export LIBGL_ALWAYS_SOFTWARE=1

  # 3. Compilar el controlador
  echo "[3/5] Compilando f1_neural_controller (colcon)"
  [ "${EXPERTO:-0}" = 1 ] || en_cont "cd /f1_ws && colcon build --packages-select f1_neural_controller" >"$RUN/colcon.log" 2>&1 || { tail -20 "$RUN/colcon.log"; exit 1; }

  # 4. Gazebo: circuito y coche
  local LANZADOR="${CIRCUITO}_circuit.launch.py"; [ "$CIRCUITO" = simple ] && LANZADOR=simple_circuit.launch.py
  local DIR_LANZ=/opt/jderobot/Launchers; [ -f "$AQUI/mundos_extra/$LANZADOR" ] && DIR_LANZ=/mundos     # circuitos propios (mundos_extra/)
  local POSE="x:=24.345100 y:=-31.574300 z:=0.001001 Y:=0.016398"     # salida de Montmeló de la guía original
  local NPZ="$REPO/05_dataset/generador_experto/datos/circuitos/$CIRCUITO.npz"
  if [ "${EXPERTO:-0}" = 1 ]; then
    [ -f "$NPZ" ] || { echo "Falta $NPZ (extraer el circuito con python -m generador_experto.circuito)"; exit 1; }
    POSE="$(python3 - "$NPZ" "$SENTIDO" <<'PY'
import sys, math, numpy as np
d = np.load(sys.argv[1]); x, y, yaw = d["salida"]
if int(sys.argv[2]) == -1: yaw += math.pi
print(f"x:={x:.4f} y:={y:.4f} z:=0.001001 Y:={yaw:.5f}")
PY
)"
  fi
  echo "[4/5] Gazebo: circuito de Montmeló y coche F1"
  local sw=""; [ ${#gpu[@]} = 0 ] && sw="export LIBGL_ALWAYS_SOFTWARE=1;"
  en_cont_bg "$sw $xv ros2 launch $DIR_LANZ/$LANZADOR > /tmp/circuito.log 2>&1"
  espera "al mundo" 120 docker exec "$CONT" bash -c "source /opt/ros/humble/setup.bash; gz service -l | grep -q '/world/default/control'"
  en_cont_bg "$sw $xv_coche ros2 launch /home/ws/src/CustomRobots/f1/launch/f1.launch.py mode:=$MODO sensor:=camera $POSE > /tmp/coche.log 2>&1"
  espera "a la cámara del coche" 120 docker exec "$CONT" bash -c "source /opt/ros/humble/setup.bash; ros2 topic list | grep -q '/cam_f1_left/image_raw'"
  # Sin ventana de Gazebo la simulación arranca en pausa: se pone en marcha
  en_cont "gz service -s /world/default/control --reqtype gz.msgs.WorldControl --reptype gz.msgs.Boolean --timeout 3000 --req 'pause: false'" >/dev/null 2>&1

  # 5. Controlador (o experto geométrico con EXPERTO=1)
  if [ "${EXPERTO:-0}" = 1 ]; then
    echo "[5/5] Generador del dataset: $CIRCUITO sentido $SENTIDO (${EXPERTO_ARGS:-sin argumentos})"
    en_cont_bg "export PYTHONPATH=\$PYTHONPATH:/ds:/ent; ${NODO:-python3 -m generador_experto.nodo_generador --circuito $CIRCUITO --sentido $SENTIDO --destino /datos ${EXPERTO_ARGS:-}} > /tmp/experto.log 2>&1"
  else
  echo "[5/5] Controlador neuronal"
  local PARAMS=""
  [ -n "${FACTOR_LIN:-}" ] && PARAMS="$PARAMS -p linear_factor:=$FACTOR_LIN"
  [ -n "${FACTOR_ANG:-}" ] && PARAMS="$PARAMS -p angular_factor:=$FACTOR_ANG"
  [ -n "$PARAMS" ] && echo "  parámetros:$PARAMS"
  en_cont_bg "source /f1_ws/install/setup.bash; bash /f1_ws/run_controller.sh --ros-args -p show_gui:=false $PARAMS > /tmp/controlador.log 2>&1"
  fi
  if [ $gui = 1 ]; then
    [ "${GAZEBO_GUI:-0}" = 1 ] && en_cont_bg "gz sim -g > /tmp/gz_gui.log 2>&1"   # ventana de Gazebo (opcional: consume ~1 núcleo)
    en_cont_bg "ros2 run rqt_image_view rqt_image_view /cam_f1_left/image_raw > /tmp/rqt.log 2>&1"
  fi
  sleep 8
  echo; estado; echo
  echo "Listo. El coche debería moverse. Para ver los registros:  $0 logs"
  echo "Resultados del controlador (si los guarda): $F1_WS/results/   |   Para pararlo todo:  $0 stop"
}

case "${1:-start}" in
  start) arrancar ;;
  stop) parar ;;
  status) estado ;;
  logs) registros ;;
  *) echo "Uso: $0 [start|stop|status|logs]"; exit 1 ;;
esac
