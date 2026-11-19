# 4. Qué falta, qué sobra y cómo adaptarlo a otra red

## 4.1 Qué falta en el repositorio (recuperar de la cuenta del alumno)

Por orden de importancia. Las rutas son las del equipo del alumno (`/home/miguel_tfg/…`),
tal como aparecen en notebooks y logs.

| # | Qué | Ruta probable | Por qué hace falta |
|---|---|---|---|
| 1 | **Dataset** `Dataset_JdeRobot/DATA_12_16/counter_montmelo_holonomic` (`data.csv` + PNG) | `~/TFG_simulacion_1/Dataset_JdeRobot/…` y `~/FINN-v0.9-Stable/notebooks/UAH_example/output_final_miguel/Dataset_JdeRobot/…` | Sin él no se puede reentrenar, validar ni repetir el capítulo 4 |
| 2 | **Imagen Docker de FINN** `xilinx/finn:v0.9-dirty.xrt_202210.2.13.466_18.04-amd64-xrt` (o `finn_v0.9_funciona.tar`) | `docker images` / disco externo | Estaba parcheada a mano; FINN v0.9 ya no se construye limpio |
| 3 | Carpeta **`deps/`** de FINN (qonnx, brevitas, finn-experimental, pyverilator, finn-hlslib…) | `~/FINN-v0.9-Stable/deps` | El `PYTHONPATH` de `run-docker.sh` apunta ahí; no está en git |
| 4 | **ONNX de entrada a FINN**: `model.onnx` (= `model_for_finn_w4a8_finetuned_uint8.onnx`), `mlp27k_w4a8_finetuned.onnx`, `model_for_finn_w4a8_finetuned_01.onnx` | `~/FINN-v0.9-Stable/notebooks/UAH_example/` | Permite relanzar el build sin reentrenar (se puede regenerar desde `q_mlp27k_w4a8_finetuned.pth` con las celdas 26–32) |
| 5 | **Código de entrenamiento original** (`dataset.py`, que cita la memoria) y los otros modelos comparados en H1 | Repositorio de partida | Origen de `mlp_27k.ckpt`; explica la normalización |
| 6 | **Scripts de análisis y gráficas** del capítulo 4 (MAE, RMSE, mediana de 15, dispersión, latencias, el "análisis por tramo" con 0,0116 rad/s) | ? | No hay ninguno en el repo; los números de la memoria no se pueden regenerar |
| 7 | Versión de **Verilator** y SO del alumno (`verilator --version`, `lsb_release -a`) | — | Para documentar el entorno exacto |
| 8 | **Factor angular** usado en cada vídeo/prueba (`angular_factor`) | — | No está en la memoria (ver 03, §3.4) |
| 9 | Cambios al coche F1 de la imagen JdeRobot (`f1_gz.urdf.xacro`, `f1_common.urdf.xacro`), si los hubo | Dentro del contenedor (`/home/ws/src/CustomRobots/f1/…`) | La memoria dice que se revisaron; si se tocaron, se pierden con `--rm` |
| 10 | Vídeos demostrativos | Google Drive (enlaces en la memoria, p. 58) | Descargar y archivar junto al repo |

**Sí, merece la pena una sesión en su usuario.** Comandos para localizar lo anterior:

```bash
cd ~ && find . -name "data.csv" -path "*montmelo*" 2>/dev/null
```

```bash
find ~ -maxdepth 4 \( -name "*.onnx" -o -name "*.ckpt" -o -name "*.pth" -o -name "dataset.py" \) -newer ~/.bashrc 2>/dev/null | grep -v FINN_build
```

```bash
find ~ -maxdepth 3 \( -name "*.py" -o -name "*.ipynb" \) 2>/dev/null | grep -iv "finn-v0.9\|site-packages"
```

```bash
docker images; verilator --version; lsb_release -a; du -sh ~/FINN-v0.9-Stable/deps
```

## 4.2 Qué sobra o confunde

| Elemento | Tamaño | Recomendación |
|---|---|---|
| `UAH/FINN_build/` | 2,4 GB, 11 400 ficheros | Temporal de experimentos **anteriores** (CNN, `RedMiguel`). No lo usa el diseño final. Sacarlo de git (o moverlo a un archivo aparte) |
| `Custom_dataflow_QNN_Miguel_16x12_RGB_FINAL.ipynb`, `build_miguel.py`, `folding_config_miguel.json`, `state_dict_quantized_last.pth` | — | Otra red descartada. Mover a `UAH/descartado/` |
| `stitched_ip/verilator_sim/compile_*_log.txt`, `salida_*.txt` | ~30 ficheros | Historial de depuración; mover a `verilator_sim/historial/` |
| `verilator_sim/obj_dir/` | binarios | Artefacto de compilación; regenerable con `03_simulacion_verilator/herramientas/build_verilator.sh`. Mejor en `.gitignore` |
| `comprobar_onnx_vs_verilator.py` | — | Script antiguo: usa `DATA/` (no `DATA_12_16`) y `resize((12,16))` (orientación cambiada). No reproduce el flujo final |
| `.Trash-1004/` dentro de la carpeta FINN | — | Papelera del escritorio; borrar |

No se ha borrado nada: son decisiones de quien mantenga el repositorio.

## 4.3 Checklist para adaptar el flujo a otra red o aplicación

1. **Red y cuantización (Brevitas)**: capas soportadas por FINN v0.9 (`QuantLinear`,
   `QuantConv2d`, `QuantReLU`, `QuantIdentity`…). Copiar el patrón de la celda 14 del notebook
   definitivo. Mantener `return_quant_tensor=True`.
2. **Entrada en bytes**: repetir la celda 32 (añadir `ToTensor` y marcar la entrada como
   `UINT8`) para que el hardware reciba píxeles 0–255 tal cual.
3. **Build FINN**: partir de la celda 39 (con sus dos parches). Para más velocidad, añadir
   `target_fps` o un `folding_config_file` (PE/SIMD). Vigilar que `PE·SIMD·bits_peso` no pase
   de ~8191 bits (error de Vitis HLS que aparece en el notebook descartado).
4. **Constantes del host**: abrir `intermediate_models/dataflow_parent.onnx` y copiar el `Mul`
   y el `Add` (o los nodos que queden fuera de la partición) al testbench.
5. **Anchos de interfaz**: leer el wrapper real (`…/hdl/finn_design_wrapper.v`). Si cambia
   `s_axis_0_tdata` (p. ej. 16 o 24 bits por SIMD > 1) o `m_axis_0_tdata`, hay que reempaquetar
   en `main.cpp` (`BYTES_PER_IMAGE`, número de palabras de salida, `sign_extend_24`).
6. **Fuentes Verilator**: `python3 03_simulacion_verilator/herramientas/make_verilator_srclist.py <stitched_ip>`; si aparecen
   IPs de Xilinx nuevas, añadir un stub en `verilator_stubs/` con la misma interfaz.
7. **Copiar los `.dat`** de las ROM a `verilator_sim/`:

```bash
find <stitched_ip>/finn_vivado_stitch_proj.gen -name "*.dat" -exec cp {} <stitched_ip>/verilator_sim/ \;
```

8. **Verificar** bit a bit con `03_simulacion_verilator/herramientas/verilator_selftest.cpp` frente a
   `03_simulacion_verilator/herramientas/golden_model.py` (adaptando `V_MIN`/`V_MAX` y la desnormalización).
9. **ROS 2**: cambiar el tópico de entrada, el tamaño (`cv::Size`), el orden de canales en
   `image_to_rgb_planes` y el mensaje de salida en `f1_controller.cpp`.

## 4.4 Siguiente paso natural: FPGA real

La memoria propone sustituir Verilator por la placa manteniendo Gazebo. Con este diseño:

- Añadir `DataflowOutputType.BITFILE` y `PYNQ_DRIVER` al build, con `board="Pynq-Z2"` y
  `shell_flow_type=ShellFlowType.VIVADO_ZYNQ`.
- Un pequeño servidor en la PYNQ que escuche en UDP 5005 con el mismo protocolo (576 bytes →
  2 float32) haría que `f1_controller` funcione **sin cambios**, solo apuntando a la IP de la placa
  (hoy `127.0.0.1` está fija en el código; convendría pasarlo a parámetro).
