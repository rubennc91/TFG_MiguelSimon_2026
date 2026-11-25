#!/usr/bin/env bash
# Lazo cerrado Gazebo <-> IP de FINN simulado con Verilator (servidor nativo C++), para verlo en directo.
#   ./lazo_ip_verilator.sh            arranca todo y deja en este terminal el log del IP de FINN (Ctrl+C lo cierra; ./lazo_ip_verilator.sh stop también)
# Variables opcionales:  RED=cnn|mlp  CIRCUITO=silverstone  SENTIDO=1|-1  FACTOR=0.25 (velocidad)  HZ=5  RETARDO=0.05 (s)  VUELTAS=1
#                        SIN_PAUSA=1 (Gazebo no se detiene: la latencia del IP pasa a ser retraso simulado; usa RETARDO=0)  TAG=etiqueta del resultado
#                        HIL_EMULADO=1 (la imagen 1280x720 sale por ROS hacia un emulador de la placa: reductor en numpy + este IP en Verilator; prueba la parte de ROS del HIL sin hardware)
#                        HIL_PLACA=1 (HIL con la Zybo real por Ethernet: pasarela TCP -> ROS 2 Cyclone DDS -> placa con hil_node.py; hace falta CYCLONE_PC=ruta de cyclone_pc.xml)
#                        PLEGADO=1 (CNN plegada x8, IP de ~18k ciclos)  PANTALLA=:1 (pantalla donde abrir Gazebo; por defecto la local)  CAMARA="0.9 0.45 0.3" (distancia, altura, cabeceo)  PUERTO=5020
# Gazebo se pausa mientras el IP responde (el IP simulado tarda ~0,12 s por imagen), así el retardo simulado es el de RETARDO, no el de Verilator.
set -uo pipefail
AQUI="$(cd "$(dirname "$0")" && pwd)"; REPO="$(cd "$AQUI/.." && pwd)"; NAT="$REPO/03_simulacion_verilator/servidor_nativo"
RED=${RED:-cnn}; CIRCUITO=${CIRCUITO:-silverstone}; SENTIDO=${SENTIDO:-1}; FACTOR=${FACTOR:-0.25}; HZ=${HZ:-5}; RETARDO=${RETARDO:-0.05}
VUELTAS=${VUELTAS:-1}; PUERTO=${PUERTO:-5020}; CAMARA=${CAMARA:-"0.9 0.45 0.3"}; DATOS=${DATOS:-$HOME/lazo_ip_verilator}; BIN=/tmp/finn_est/nativo_$RED$([ "${PLEGADO:-0}" = 1 ] && echo p)$([ "${PLEGADO:-0}${PARALELO:-0}" = 11 ] && echo p)/obj_dir/servidor_finn_nativo
if [ "${1:-}" = stop ]; then "$AQUI/lanzar_todo.sh" stop >/dev/null 2>&1; "$NAT/lanzar_nativo.sh" stop "$PUERTO"; echo parado; exit 0; fi
[ -x "$BIN" ] || { echo "[1/4] compilando el servidor nativo ($RED); necesita la build de FINN en /tmp/finn_est"; "$NAT/lanzar_nativo.sh" build "$RED" || exit 1; }
echo "[1/4] servidor del IP de FINN (Verilator) en UDP $PUERTO"; "$NAT/lanzar_nativo.sh" start "$RED" "$PUERTO" || exit 1
echo "[2/4] Gazebo con ventana + controlador (pausa sincronizada, $HZ Hz, retardo $RETARDO s, factor $FACTOR)"
"$AQUI/lanzar_todo.sh" stop >/dev/null 2>&1; sleep 3; mkdir -p "$DATOS"
SRV_ARG="--servidor 127.0.0.1:$PUERTO"; [ "${HIL_EMULADO:-0}" = 1 ] && SRV_ARG="--hil-ros"; TSRV=1
[ "${HIL_PLACA:-0}" = 1 ] && { SRV_ARG="--hil-tcp 127.0.0.1:5030"; TSRV=8; }
PAUSA_ARG="--pausa"; [ "${SIN_PAUSA:-0}" = 1 ] && PAUSA_ARG=""
OUT=/datos/lazo_cerrado/${RED}_ip_verilator${TAG:-}_${CIRCUITO}_s$([ "$SENTIDO" = 1 ] && echo +1 || echo -1)
env CIRCUITO=$CIRCUITO SENTIDO=$SENTIDO DATOS=$DATOS EXPERTO=1 MODO=holo GAZEBO_GUI=1 ${PANTALLA:+PANTALLA=$PANTALLA} \
  NODO="python3 -m mlp_experto.lazo_cerrado $SRV_ARG --circuito $CIRCUITO --sentido $SENTIDO --resolucion 32x24 --factor-lin $FACTOR --factor-ang $FACTOR --vueltas $VUELTAS --hz $HZ --retardo $RETARDO $PAUSA_ARG --timeout-servidor ${TSRV:-300} --duracion 100000 --salida $OUT" \
  "$AQUI/lanzar_todo.sh" > "$DATOS/lanzar.log" 2>&1 || { tail -5 "$DATOS/lanzar.log"; exit 1; }
CSV="$DATOS/lazo_cerrado/$(basename "$OUT").csv"
echo "[3/4] cámara de Gazebo siguiendo al coche"
for _ in $(seq 1 60); do [ -s "$CSV" ] && break; sleep 1; done; sleep 10
docker exec f1_gazebo bash -c 'for p in /proc/[0-9]*; do c=$(tr "\0" " " < $p/cmdline 2>/dev/null); case "$c" in *rqt_image_view*) kill ${p#/proc/};; esac; done'
docker cp "$AQUI/herramientas/cam_sigue.py" f1_gazebo:/tmp/cam_sigue.py
docker exec -d f1_gazebo bash -c "export GZ_PARTITION=particion0 IGN_PARTITION=particion0; python3 /tmp/cam_sigue.py $CAMARA > /tmp/cam_sigue.log 2>&1"
if [ "${HIL_EMULADO:-0}" = 1 ]; then
  docker exec f1_gazebo mkdir -p /tmp/hil; docker cp "$AQUI/herramientas/emulador_placa_hil.py" f1_gazebo:/tmp/hil/; docker cp "$REPO/99_hw_project/zybo_22_2/software/pynq_hil/reductor_ref.py" f1_gazebo:/tmp/hil/
  docker exec -d f1_gazebo bash -c "source /opt/ros/humble/setup.bash; export ROS_DOMAIN_ID=0; python3 /tmp/hil/emulador_placa_hil.py --servidor 127.0.0.1:$PUERTO ${EMU_ARGS:-} > /tmp/emulador.log 2>&1"
fi
if [ "${HIL_PLACA:-0}" = 1 ]; then
  docker exec f1_gazebo mkdir -p /tmp/hil; docker cp "$AQUI/herramientas/pasarela_hil.py" f1_gazebo:/tmp/hil/; docker cp "${CYCLONE_PC:-$AQUI/herramientas/cyclone_pc.xml}" f1_gazebo:/tmp/hil/cyclone_pc.xml
  docker exec -d f1_gazebo bash -c "source /opt/ros/humble/setup.bash; export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp CYCLONEDDS_URI=file:///tmp/hil/cyclone_pc.xml; python3 /tmp/hil/pasarela_hil.py > /tmp/pasarela.log 2>&1"
fi
echo "[4/4] log del IP de FINN en Verilator (Ctrl+C para salir; el resultado queda en ${CSV%.csv}.json)"
trap '"$AQUI/lanzar_todo.sh" stop >/dev/null 2>&1; "$NAT/lanzar_nativo.sh" stop "$PUERTO"; exit 0' INT TERM
docker logs -f --tail 5 "nativo_$PUERTO" 2>&1 &
LG=$!; while [ ! -f "${CSV%.csv}.json" ]; do sleep 3; done; kill $LG 2>/dev/null
echo; cat "${CSV%.csv}.json"; "$AQUI/lanzar_todo.sh" stop >/dev/null 2>&1; "$NAT/lanzar_nativo.sh" stop "$PUERTO"
