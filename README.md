# TFG Miguel Simón 2026

Validación de una red neuronal que controla un vehículo F1 en el circuito de Montmeló: la red se entrena y cuantiza, se compila a hardware con FINN, se simula con Verilator y se integra con ROS 2 y Gazebo.

Para volver a ejecutarlo todo: [`GUIA_EJECUCION.md`](GUIA_EJECUCION.md).

## Estructura (en el orden del flujo)
| Carpeta | Contenido |
|---|---|
| [`01_entrenamiento/`](01_entrenamiento/README.md) | Entrenamiento de la red: código original (neuralpilot), MLP con Brevitas y CNN. |
| [`02_cuantizacion_finn/`](02_cuantizacion_finn/README.md) | Cuantización y compilación con FINN. Los ficheros están en el repositorio de FINN: [`rubennc91/FINN-v0.9-Stable`](https://github.com/rubennc91/FINN-v0.9-Stable/tree/main/notebooks/UAH_example/TFG_MiguelSimon). |
| [`03_simulacion_verilator/`](03_simulacion_verilator/README.md) | Salida de FINN y simulación del diseño con Verilator (servidor UDP). |
| [`04_ros2_gazebo/`](04_ros2_gazebo/README.md) | Workspace ROS 2 con el controlador del coche y resultados de las pruebas. |
| [`05_dataset/`](05_dataset/README.md) | Circuitos de Montmeló del dataset JdeRobot y comprobación del dataset. |
| [`docs/`](docs) | Cómo exportar e importar la imagen Docker de FINN. |
| [`extras/`](extras) | Red lógica en SystemVerilog (LLNN) y notas de instalación. |

No incluido por tamaño: la imagen Docker de FINN y los vídeos (se alojarán aparte). Faltan también los scripts de análisis del capítulo 4 y las fuentes de la memoria.
