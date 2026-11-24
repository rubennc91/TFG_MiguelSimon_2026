# Qué redes admite FINN v0.9 y qué diseño probar a continuación

Resumen leído del código de FINN `v0.9-2-gb3bdff11` (la versión de la imagen
`xilinx/finn:v0.9-dirty.xrt_202210…`). Es una lectura del código fuente: salvo que se indique, no se ha
compilado cada capa en una red de prueba. La v0.10 añade algunas capas, pero no se usa en este proyecto.

## Qué soporta

FINN solo acepta redes *feed-forward* con pesos y activaciones enteros de pocos bits, entrenadas con
Brevitas. Cada capa se convierte en un bloque en *streaming* de la librería HLS (`finn-hlslib`).

| Bloque FINN | Qué cubre | Notas |
|---|---|---|
| `MatrixVectorActivation` | capas lineales y convoluciones (tras convertirlas a matriz) | lo que usa hoy el MLP desplegado; pesos de 1 a 8 bits |
| `ConvolutionInputGenerator` (y `_rtl`, `1D`) | convolución 2D con kernel cuadrado o no, stride, dilatación, padding y 1D | la versión RTL admite stride, dilatación y depthwise; el padding va aparte con `FMPadding` y solo con valor 0 |
| `VectorVectorActivation` | convolución depthwise | redes tipo MobileNet |
| `StreamingMaxPool_Batch`, `Pool_Batch` | max-pool y average-pool | |
| `GlobalAccPool_Batch` | pooling global | |
| `Thresholding_Batch` | cuantización de la activación (ReLU cuantizada, hardtanh) | domina las LUT con 2304 entradas |
| `AddStreams_Batch`, `DuplicateStreams_Batch` | conexiones residuales (sumas y ramas) | |
| `StreamingConcat`, `StreamingEltwise` | concatenación y operaciones elemento a elemento | |
| `UpsampleNearestNeighbour_Batch`, `DownSampler` | subir y bajar resolución | |
| `LabelSelect_Batch` | top-k / argmax | |
| `Lookup` | tablas de embedding | |
| `ChannelwiseOp_Batch` | escala y suma por canal | absorbe la normalización por lotes |

También hay bloques de infraestructura (`StreamingFIFO`, `StreamingDataWidthConverter_Batch`, `IODMA`,
`TLastMarker`, `CheckSum`).

**Qué no hay:** redes recurrentes (LSTM, GRU), atención, capas en coma flotante (todo debe cuantizarse a
enteros pequeños) y padding con valor distinto de 0.

El repositorio de FINN prueba de extremo a extremo un MLP tipo TFC, la CNV (6 convoluciones, tipo CIFAR-10)
y MobileNet-v1 (`tests/end2end`).

## Punto de partida actual

MLP 2304-32-256-2 (32×24) o 576-32-256-2 (16×12): ve la imagen como un vector sin estructura espacial.

## Candidatas

1. **CNN mínima** (la primera en probarse): dos convoluciones 3×3 con stride 2 (3→8→16 canales) y la cabeza
   densa 32-256-2 del MLP. 34.962 parámetros, frente a los 82.722 del MLP de 32×24.
   Implementada en `01_entrenamiento/mlp_experto/cnn.py`. Misma entrada plana que el MLP.
2. **Con depthwise separable** (`VectorVectorActivation`): menos cómputo por convolución, a costa de más LUT por canal.
3. **Con conexión residual**: solo si la CNN mínima se queda corta (añade `DuplicateStreams` y `AddStreams`).

## Qué vigilar al llevarla a hardware

- La memoria de línea del generador de ventanas (kernel × ancho): pequeña a 32×24.
- Paralelismo (SIMD y PE): cuanto más bajo, menos recursos y más latencia. La latencia hay que medirla.
- El `Thresholding` de la primera capa sigue existiendo y es hoy el cuello de botella de LUT.
- La estimación analítica de recursos de FINN no fue fiable en nuestras pruebas: usar la estimación HLS por capa
  (`02_cuantizacion_finn/estimacion_recursos/`).
- Brevitas y su exportación a ONNX de convoluciones requieren comprobar que `InferConvInpGen` y la conversión a
  MVAU aceptan el kernel y el stride elegidos (stride 2 y padding 1 entran en el generador RTL).

## Orden propuesto

1. Cerrar el flujo con el MLP: modelo elegido con un criterio fijado antes, FINN, Verilator, Gazebo y FPGA.
2. En paralelo, entrenar la CNN mínima en coma flotante y evaluarla en lazo cerrado contra el MLP.
3. Solo si mejora: cuantizarla (w4a4), estimar recursos y repetir el flujo.
