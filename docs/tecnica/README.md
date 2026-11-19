# Documentación técnica del TFG (Miguel Simón, 2026)

Entorno para validar en simulación una red neuronal cuantizada convertida en acelerador FPGA
con FINN, simulada con Verilator y conectada en lazo cerrado a ROS 2 y Gazebo (coche F1 en
Montmeló).

```
 Gazebo (cámara 640×480) ──/cam_f1_left/image_raw──▶ f1_neural_controller (ROS 2)
        ▲                                                │ resize 16×12, RGB planar (576 B)
        │ /cmd_vel (v, w)                                ▼ UDP 127.0.0.1:5005
        └────────────────────────────── Vfinn_design_wrapper (Verilator = RTL de FINN)
                                          responde 2 × float32 (v, w)
```

## Documentos

| Documento | Contenido |
|---|---|
| [01_FINN.md](01_FINN.md) | Cuantización con Brevitas, exportación ONNX, build FINN, hardware generado |
| [02_Verilator.md](02_Verilator.md) | Cómo se adaptó el RTL, compilación, testbenches, protocolo UDP |
| [03_ROS2_Gazebo.md](03_ROS2_Gazebo.md) | Contenedor JdeRobot, nodo controlador, arranque del lazo completo |
| [04_pendientes.md](04_pendientes.md) | Qué falta, qué sobra, guía para otra red, paso a FPGA real |

## Herramientas añadidas (`03_simulacion_verilator/herramientas/`)

| Fichero | Para qué |
|---|---|
| `make_verilator_srclist.py` | Regenera la lista de fuentes que acepta Verilator (idéntica a la del alumno) |
| `build_verilator.sh` | Compila el acelerador con cualquiera de los testbenches (Verilator 4 o 5) |
| `verilator_selftest.cpp` | Autotest sin OpenCV ni UDP: bytes aceptados, salidas, ciclos |
| `golden_model.py` | Modelo de referencia en numpy (sin FINN): da los INT24 exactos esperados |

Verificado en noviembre de 2026 con Verilator 5.020: compila, 26 885 ciclos por imagen y
coincidencia bit a bit con el modelo de referencia (detalles en 02, §2.1).

## Mapa de carpetas

Ver el `README.md` de la raíz del repositorio. Los ficheros de FINN (notebooks, ONNX, pesos) están en
[rubennc91/FINN-v0.9-Stable](https://github.com/rubennc91/FINN-v0.9-Stable/tree/main/notebooks/UAH_example/TFG_MiguelSimon).

> Nota: estos documentos se redactaron sobre la estructura anterior del repositorio. Las rutas se han
> adaptado a la actual; los nombres de ficheros del FINN pasaron a la carpeta `TFG_MiguelSimon` del repo de FINN.
