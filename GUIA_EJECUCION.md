# Guía para volver a ejecutar el TFG

Pasos reconstruidos a partir del contenido del repositorio y del historial de comandos de Miguel.
Todo lo dicho se ha contrastado con el historial de Miguel y con su contenedor de Docker.

## 0. Requisitos
- Ubuntu 22.04, Docker y, para Gazebo con GPU, `nvidia-container-toolkit`.
- Verilator 4.038, `g++` y OpenCV (`sudo apt install libopencv-dev verilator`).
- Vivado/Vitis HLS 2022.2 en `/tools/Xilinx` (lo usa FINN para generar la IP).
- Imagen Docker de FINN `xilinx/finn:v0.9-dirty.xrt_202210.2.13.466_18.04-amd64-xrt`. **No está en el repositorio** (8,75 GB); si no se tiene, la guía `docs/exportar_imagen_docker.md` explica cómo exportarla con `docker save` y cargarla con `docker load`.
- Imagen de simulación `jderobot/robotics-academy:6.1.8` (se descarga de Docker Hub).

## 1. Dataset
Está en `05_dataset/dataset_jderobot/` (circuitos `montmelo_holonomic` y `counter_montmelo_holonomic`, cada uno con `data.csv` y las imágenes PNG).

## 2. Cuantizar y compilar la red con FINN
1. Clonar `https://github.com/rubennc91/FINN-v0.9-Stable`, y desde su raíz arrancar el entorno: `./run-docker.sh notebook`. Los ficheros del TFG están en `notebooks/UAH_example/TFG_MiguelSimon/` (directorio de trabajo de los notebooks).
2. Notebooks de cuantización, en esa carpeta. Los nombres indican las versiones: `Quantize_MLP27K_Montmelo_FINN` (v1) a `..._v4_clean_rebuild_verilator`. **El notebook definitivo es `Quantize_MLP27K_Montmelo_FINN_v4_clean_rebuild_verilator.ipynb`** (confirmado por el tutor); genera `output_rebuild_mlp27k_w4a8_ft_clean`.
3. Alternativa por script, dentro del contenedor: `python build_miguel.py`. Parte de `model_tidy.onnx` y `folding_config_miguel.json`, para `xc7z020clg400-1` a 10 ns y 1000 fps, y deja la IP en `output_final_miguel/`.
4. Modelos de partida: pesos `mlp_27k.ckpt` (entrenamiento en `01_entrenamiento/neuralpilot_original/`) y `q_mlp27k_w4a8_finetuned.pth`.

## 3. Simulación con Verilator
Dentro de `03_simulacion_verilator/salida_finn_mlp27k_w4a8/stitched_ip/verilator_sim`:
```bash
make -C obj_dir -f Vfinn_design_wrapper.mk -j"$(nproc)"
g++ -Iobj_dir -I/usr/share/verilator/include -I/usr/share/verilator/include/vltstd \
    $(pkg-config --cflags opencv4) main_original_antes_udp.cpp \
    obj_dir/verilated.o obj_dir/Vfinn_design_wrapper__ALL.a \
    $(pkg-config --libs opencv4) -o /tmp/Vfinn_verilator_test
/tmp/Vfinn_verilator_test RUTA/05_dataset/dataset_jderobot/montmelo_holonomic RUTA/05_dataset/dataset_jderobot/montmelo_holonomic/data.csv
```
Esto recorre el dataset y escribe `resultados_verilator.csv` (error, tiempos). Comparación con el ONNX: `comprobar_onnx_vs_verilator.py`.

## 4. Servidor Verilator para el coche (UDP)
`main.cpp` de esa misma carpeta arranca un servidor UDP en el puerto **5005**, que recibe la imagen y devuelve la salida de la red. Comprobado en el historial de Miguel: el `make -C obj_dir ...` del paso anterior compila ese `main.cpp`, y el servidor se arranca desde la carpeta `verilator_sim` con:
```bash
./obj_dir/Vfinn_design_wrapper
```
Se deja en marcha en el equipo antes de lanzar el controlador. Para pararlo: `pkill -f Vfinn_design_wrapper` (si el puerto sigue ocupado, `ss -lunp | grep 5005`). El `g++` del paso 3 es solo para el programa que recorre el dataset (`main_original_antes_udp.cpp`).

## 5. Gazebo y ROS 2
1. Permitir pantalla al contenedor: `xhost +local:root`.
2. Arrancar el contenedor (monta `~/f1_ws` en `/f1_ws`; hay que copiar antes `04_ros2_gazebo/f1_ws/` a `~/f1_ws`):
```bash
docker run --rm -it --gpus all --network host \
  -e NVIDIA_DRIVER_CAPABILITIES=all -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v ~/f1_ws:/f1_ws \
  --entrypoint /bin/bash --name f1_gazebo jderobot/robotics-academy:6.1.8
```
3. Dentro, lanzar el circuito de Montmeló con el coche:
```bash
source /opt/ros/humble/setup.bash
source /home/ws/install/setup.bash
ros2 launch /home/ws/src/CustomRobots/f1/launch/f1.launch.py \
  mode:=ackermann sensor:=camera x:=24.345100 y:=-31.574300 z:=0.001001 Y:=0.016398
```
4. En otra terminal (`docker exec -it f1_gazebo bash`) compilar el paquete con `colcon` (comprobado en el contenedor de Miguel: existen `/f1_ws/build`, `install` y `log` generados por `colcon`, y el controlador corría con `ros2 run f1_neural_controller f1_controller --ros-args -p show_gui:=false`) y lanzarlo:
```bash
cd /f1_ws && colcon build --packages-select f1_neural_controller
bash /f1_ws/run_controller.sh
```
`run_controller.sh` ejecuta `ros2 run f1_neural_controller f1_controller` y al salir detiene el coche. Parámetros del nodo: `linear_factor`, `angular_factor` (0,30), `process_every_n_frames`, `show_gui`, `max_linear_speed` (13,0) y `max_angular_speed` (π).
5. Los resultados de cada prueba se guardan en `04_ros2_gazebo/f1_ws/results/` (`finn_metrics*.csv`).

## 6. Qué falta en este repositorio
- Imagen Docker de FINN (8,75 GB) y vídeos: pendientes de alojar fuera de GitHub.
- Los scripts de análisis del capítulo 4 (MAE/RMSE, mediana de 15, gráficas) y las fuentes LaTeX de la memoria no estaban en la cuenta del servidor; hay que buscarlos en el equipo de Miguel o en Overleaf.
- Las rutas absolutas `/home/miguel_tfg/...` dentro de los scripts hay que adaptarlas.
