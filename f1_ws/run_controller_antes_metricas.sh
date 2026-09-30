#!/bin/bash

source /opt/ros/humble/setup.bash
source /home/ws/install/setup.bash
source /f1_ws/install/setup.bash

STOP_EXECUTED=0

stop_car()
{
    if [ "$STOP_EXECUTED" -eq 1 ]; then
        return
    fi

    STOP_EXECUTED=1

    # Evita que EXIT, INT y TERM vuelvan a llamar a la función.
    trap - EXIT INT TERM

    echo
    echo "Deteniendo el coche..."

    for i in 1 2 3 4 5
    do
        ros2 topic pub --once \
          /cmd_vel \
          geometry_msgs/msg/Twist \
          "{linear: {x: 0.0}, angular: {z: 0.0}}" \
          >/dev/null 2>&1

        sleep 0.05
    done

    echo "Coche detenido."
}

trap stop_car EXIT INT TERM

echo "Arrancando controlador neuronal..."

ros2 run f1_neural_controller f1_controller
