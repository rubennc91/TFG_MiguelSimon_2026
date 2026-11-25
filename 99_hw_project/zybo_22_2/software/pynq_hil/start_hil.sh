#!/bin/bash
# Lanza el nodo HIL en la placa (PYNQ). Como root con sesión de login: sudo -i /home/xilinx/zybo_hil/start_hil.sh [solo_prueba]
#   En /home/xilinx/zybo_hil/: system_v2_wrapper.bit + .hwh (del mismo nombre), tabla_entrada.json, hil_node.py, reductor_ref.py, cyclone_board.xml
D=/home/xilinx/zybo_hil
source /etc/profile.d/pynq_venv.sh
if [ "${1:-}" != solo_prueba ]; then source /opt/ros2_min/setup.bash; export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp CYCLONEDDS_URI=file://$D/cyclone_board.xml; fi
cd $D && exec python3 hil_node.py --ros-args -p bit:=$D/system_v2_wrapper.bit -p tabla:=$D/tabla_entrada.json -p solo_prueba:=$([ "${1:-}" = solo_prueba ] && echo true || echo false) ${IMAGEN:+-p image_topic:=$IMAGEN}
