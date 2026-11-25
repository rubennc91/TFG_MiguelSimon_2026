# HIL en la Zybo Z7-20 con PYNQ y ROS 2

Basado en `pynq/pl_ros_node.py` de https://github.com/rubennc91/madgwick-zybo-hls (ROS 2 Humble nativo en la placa, Cyclone DDS, sin agente).

Flujo: Gazebo (PC) publica `sensor_msgs/Image` 1280x720 → Ethernet → `hil_node.py` la deja en la DDR → `axi_dma_2` (MM2S, una orden = una trama) → conversor 8→24 b → `axis_sof` (TUSER en el primer píxel) → `axis_switch_hil` → reductor → IP de FINN → `axi_dma_1` → v, w → `geometry_msgs/Twist` en `/hil/cmd_vel` → Ethernet → PC. Latencias en `/hil/latencia`.

**Estado: compila y sintetiza (bitstream en `../../resultados/z7-20_hil_cnn_plegada/`); NADA de esto se ha probado en placa.**

## Pasos
1. Imagen PYNQ para la Z7-20 (https://github.com/nick-petrovsky/PYNQ-ZYBO/releases/tag/v0.1.0), ROS 2 mínimo de la placa (`ros2_armhf` y `pynq/GUIA_REPLICAR.md` del repo de madgwick), IP fija 192.168.2.99 y PC en 192.168.2.1.
2. Copiar a `/home/xilinx/zybo_hil/`: de `resultados/z7-20_hil_cnn_plegada/`: `system_v2_wrapper.bit`, `.hwh`, `tabla_entrada.json`; de esta carpeta: `hil_node.py`, `reductor_ref.py`, `cyclone_board.xml`, `start_hil.sh`.
3. **Prueba sin ROS** (valida el camino de la imagen): `sudo -i /home/xilinx/zybo_hil/start_hil.sh solo_prueba`. Debe dar `|dif| max 0` en la imagen reducida (el PL idéntico a `reductor_ref.py`) y v, w del IP.
4. Con ROS: `sudo -i /home/xilinx/zybo_hil/start_hil.sh` (`IMAGEN=/tema` para cambiar el tema de la imagen).

## Pendiente
- Imagen: `04_ros2_gazebo/herramientas/puente_imagen_hil.py` amplía la cámara de Gazebo (640x480) a 960x720 con OpenCV y la centra en 1280x720 (el reductor recorta el centro 4:3). Falta el puente del `Twist` de vuelta al controlador del lazo.
- El orden de los bytes (R,G,B) y el reescalado v, w (`FINN_MUL`, `FINN_ADD`, de `finn_params_cnn.h`) se han fijado a mano: comprobarlos en la prueba.
- Tests de `reductor_ref.py`: `python3 -c "import test_reductor_ref as t; [getattr(t,n)() for n in dir(t) if n.startswith('test_')]"`.
