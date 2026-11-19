# 3. Integración con ROS 2 Humble y Gazebo Harmonic

El lazo cerrado es: cámara de Gazebo → nodo ROS 2 → UDP → Verilator (acelerador FINN) →
UDP → nodo ROS 2 → `/cmd_vel` → coche F1 en Gazebo.

## 3.1 Piezas

| Pieza | Dónde está | Notas |
|---|---|---|
| Simulador, circuito y coche F1 | Imagen Docker pública `jderobot/robotics-academy:6.1.8` | Montmeló: `/opt/jderobot/Launchers/montmelo_circuit.launch.py`; coche: `/home/ws/src/CustomRobots/f1/launch/f1.launch.py` |
| Nodo controlador | `f1_ws/src/f1_neural_controller/src/f1_controller.cpp` | Paquete ament_cmake; ejecutable `f1_controller`; nodo `/f1_neural_controller` |
| Script de arranque | `f1_ws/run_controller.sh` | Carga los entornos y, al salir (Ctrl-C), publica 5 veces `/cmd_vel = 0` para parar el coche |
| Servidor de inferencia | `…/stitched_ip/verilator_sim/obj_dir/Vfinn_design_wrapper` | Se ejecuta en el **host**, fuera del contenedor (ver [02_Verilator.md](02_Verilator.md)) |
| Resultados | `f1_ws/results/finn_metrics*.csv`, `camara_f1.png` | Métricas por frame escritas por el nodo |

El contenedor se lanza con `--network host`, así que `127.0.0.1:5005` dentro del contenedor
llega al Verilator del host.

## 3.2 Compilar el nodo (dentro del contenedor)

`f1_ws/` no incluye `build/` ni `install/`; hay que compilarlo la primera vez:

```bash
docker exec -it f1_gazebo bash
source /opt/ros/humble/setup.bash
cd /f1_ws && colcon build --packages-select f1_neural_controller
```

Dependencias: `rclcpp`, `sensor_msgs`, `geometry_msgs`, `cv_bridge`, OpenCV (ya en la imagen).

## 3.3 Arranque (orden recomendado, Anexo A.2 de la memoria)

```bash
# Terminal 1 (host): servidor Verilator
pkill -9 -f Vfinn_design_wrapper
cd "<repo>/03_simulacion_verilator/salida_finn_mlp27k_w4a8/stitched_ip/verilator_sim"
./obj_dir/Vfinn_design_wrapper
```

```bash
# Terminal 2 (host): contenedor + circuito
xhost +local:root
docker run --rm -it --gpus all --network host \
  -e NVIDIA_DRIVER_CAPABILITIES=all -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v <repo>/f1_ws:/f1_ws \
  --entrypoint /bin/bash --name f1_gazebo jderobot/robotics-academy:6.1.8
source /opt/ros/humble/setup.bash && source /home/ws/install/setup.bash
ros2 launch /opt/jderobot/Launchers/montmelo_circuit.launch.py
```

```bash
# Terminal 3: coche F1 con cámara
docker exec -it f1_gazebo bash
source /opt/ros/humble/setup.bash && source /home/ws/install/setup.bash
ros2 launch /home/ws/src/CustomRobots/f1/launch/f1.launch.py \
  mode:=ackermann sensor:=camera x:=24.345100 y:=-31.574300 z:=0.001001 Y:=0.016398
```

```bash
# Terminal 4 (opcional): interfaz gráfica de Gazebo
docker exec -it f1_gazebo gz sim -g
```

```bash
# Terminal 5: controlador neuronal
docker exec -it f1_gazebo bash
/f1_ws/run_controller.sh --ros-args -p show_gui:=false
```

En la memoria el repositorio se monta desde `~/f1_ws`; aquí se indica la ruta del repo.

## 3.4 Qué hace el nodo `f1_neural_controller`

1. Se suscribe a `/cam_f1_left/image_raw` (640×480) con QoS `KeepLast(1)` *reliable*: usa
   siempre la imagen más reciente y no acumula cola.
2. `cv_bridge` → BGR8 → `cv::resize(…, Size(16,12), INTER_LINEAR)` → RGB planar de 576 bytes.
3. Envía por UDP a `127.0.0.1:5005` y espera la respuesta (timeout de 200 ms).
4. Aplica factores y límites, y publica `geometry_msgs/Twist` en `/cmd_vel`
   (`linear.x = v`, `angular.z = w`).
5. Si falla o hay NaN, publica `(0, 0)`.
6. Escribe una fila por frame en el CSV y, opcionalmente, muestra una ventana con la imagen,
   la entrada 16×12 ampliada y los tiempos (tecla `S` = captura).

### Parámetros (`--ros-args -p nombre:=valor`)

| Parámetro | Por defecto | Efecto |
|---|---|---|
| `linear_factor` | 1.0 | `v_enviada = v_FINN · factor` |
| `angular_factor` | **0.30** | `w_enviada = w_FINN · factor` |
| `process_every_n_frames` | 1 | Procesa 1 de cada N imágenes |
| `show_gui` | true | Ventana OpenCV |
| `max_linear_speed` / `max_angular_speed` | 13.0 / 3.14159 | Saturación |
| `csv_path` | `/f1_ws/results/finn_metrics.csv` | Fichero de métricas |

> ⚠️ **No sale en la memoria:** la `w` de la red **no se aplica tal cual**. Por defecto se
> multiplica por 0,30. En `results/finn_metrics.csv` se usó 0,30 y en
> `results/finn_metrics_20hz.csv` 1,20. Para comparar o repetir los vídeos hay que saber qué
> factor se usó en cada uno (preguntar al alumno). La Tabla 4.6 (`angular.z = -1,4732`) no
> dice si el valor es antes o después del factor.

## 3.5 Rendimiento observado

- Cámara: ~50 Hz. Órdenes `/cmd_vel`: ~20 Hz. El límite lo pone la simulación Verilator
  (~24–33 ms por inferencia, columna `inference_ms` del CSV).
- Comprobaciones útiles:

```bash
ros2 node list
ros2 topic hz /cmd_vel
ros2 topic hz /cam_f1_left/image_raw
ros2 topic echo /odom
```

## 3.6 Riesgos detectados

- **Redimensionado distinto en entrenamiento y en el lazo.** El dataset `DATA_12_16` ya viene en
  16×12 (se desconoce cómo se redujo). En ROS se pasa de 640×480 a 16×12 con `INTER_LINEAR`, que
  en una reducción de 40× apenas promedia unos pocos píxeles y produce *aliasing*. Si el dataset
  se generó con `INTER_AREA` o un filtro similar, las entradas en Gazebo serán más ruidosas que
  las de entrenamiento. **Es una hipótesis razonable** para las oscilaciones en recta
  (sección 4.5 de la memoria) y se prueba fácilmente cambiando a `cv::INTER_AREA`.
- `F1Controller` bloquea el *callback* mientras espera a UDP: si Verilator no está arrancado,
  cada frame espera 200 ms y publica cero.
- El paquete conserva `package.xml` con `TODO` en la descripción y la licencia.
- `f1_controller_antes_metricas.cpp` y `run_controller_antes_metricas.sh` son versiones antiguas
  y no se compilan (no están en `CMakeLists.txt`).
