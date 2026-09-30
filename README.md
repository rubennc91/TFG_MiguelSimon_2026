# TFG_MiguelSimon_2026
# TFG – Entorno FINN, Verilator, ROS 2 y Gazebo

Este repositorio contiene los archivos desarrollados y utilizados durante el Trabajo Fin de Grado para la validación de una red neuronal destinada al control de un vehículo F1 en el circuito de Montmeló.

El repositorio se divide principalmente en dos partes: el entorno utilizado para el desarrollo y simulación de la red neuronal mediante FINN y Verilator, y el workspace de ROS 2 utilizado para su integración con Gazebo.

## 1. Entorno FINN

La carpeta `FINN-v0.9-Stable (copia)` contiene el entorno FINN utilizado durante el desarrollo del proyecto.

Dentro de:

`FINN-v0.9-Stable (copia)/notebooks/UAH_example/`

se encuentran los archivos específicos desarrollados para el TFG, incluyendo los modelos neuronales, notebooks, scripts, configuraciones y diferentes archivos generados durante las distintas etapas del proyecto.

La carpeta:

`output_rebuild_mlp27k_w4a8_ft_clean/`

contiene la implementación generada mediante FINN utilizada para la simulación posterior.

## 2. Simulación mediante Verilator

Dentro de la salida generada por FINN se encuentra la carpeta:

`output_rebuild_mlp27k_w4a8_ft_clean/stitched_ip/verilator_sim/`

Esta carpeta contiene los archivos necesarios para realizar la simulación del diseño generado mediante FINN utilizando Verilator.

Aquí se incluyen el código del testbench, los archivos generados por Verilator, el ejecutable de simulación, los modelos de entrada y diferentes resultados obtenidos durante las pruebas.

También se incluyen los archivos necesarios para comprobar el funcionamiento de la red neuronal utilizando el dataset.

## 3. ROS 2 y Gazebo

La carpeta `f1_ws` contiene el workspace utilizado para integrar la red neuronal con ROS 2 y Gazebo.

Dentro de `src/f1_neural_controller/` se encuentra el paquete desarrollado para el control del vehículo F1, junto con los archivos necesarios para su compilación y ejecución.

La carpeta `results` contiene algunos de los resultados obtenidos durante las pruebas realizadas con el sistema completo.
