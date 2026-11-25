# Flujo completo: red entrenada → FINN → Verilator/simulador → Zybo Z7 (estado 24/11/2026)

Documento de trabajo para el artículo y para reproducir el diseño. Todo lo que figura como «verificado» tiene su comando y su resultado;
lo que no está hecho se dice expresamente en la sección *Pendiente*.

## 1. Etapas y qué se ha verificado en cada una

| Etapa | Qué se hace | Verificación (resultado) |
|---|---|---|
| 1. Dataset y entrenamiento | Experto geométrico en Gazebo → imágenes 32×24 RGB + (v, w). MLP 2304-32-256-2 y CNN mínima (2 conv 3×3 stride 2 + densas), flotantes | lazo cerrado en simulador (sección 3) |
| 2. QAT (Brevitas 0.6.1) | w4a4 / w4a8; modelos `cq4_s*` (CNN), `q4_s*` (MLP) | lazo cerrado con el modelo cuantizado (UDP, `02_cuantizacion_finn/qat/servidor_q.py`) |
| 3. FINN v0.9: `tidy_up` + `streamline` | ONNX → grafo con enteros | diferencia máxima con Brevitas **1,8·10⁻⁷** (200 imágenes reales; `estimacion_recursos/verificar_cnn.py`) |
| 4. Conversión a HLS, folding, IP unido | PE=SIMD=1 (mínimo); IP unido (*stitched*) | `rtlsim` del IP unido frente a Brevitas: **3·10⁻⁸** (5 imágenes; `verificar_rtlsim.py`) |
| 5. Síntesis fuera de contexto (OOC) | Vivado 2022.2, 100 MHz | tabla de recursos (sección 2) |
| 6. Reductor de imagen (HLS) | 1280×720 → recorte 4:3 (960×720) → 32×24 por bloques de 30×30 → tabla byte→q | C-sim y **RTL (xsim) idénticos al modelo en C: 0 bytes distintos** en 2 tramas, una con contrapresión |
| 7. Diseño de bloques Zybo (Vivado 2022.2) | cámara Pcam 5C → Bayer → gamma → reductor → IP de FINN → DMA | ver sección 2 |

**Pendiente** (no verificado): IP de FINN dentro del lazo de Gazebo (Verilator/rtlsim en el bucle), prueba en placa, orden de colores de la cámara real.

## 2. Recursos (Z7-10: 17.600 LUT, 35.200 FF, 60 BRAM36; Z7-20: 53.200 LUT, 106.400 FF, 140 BRAM36)

Síntesis fuera de contexto de FINN, 100 MHz, folding mínimo (PE=SIMD=1):

| Red | Conversión de entrada | LUT | FF | BRAM18 + BRAM36 | Ciclos | Latencia @100 MHz | fmax |
|---|---|---|---|---|---|---|---|
| CNN `cq4_s6` w4a4 | en el IP (umbrales) | 6.358 | 7.962 | 23 + 8 | 135.758 | 1,36 ms | 113 MHz |
| CNN `cq4_s6` w4a4 | **en el reductor** | **5.756** | 7.421 | 23 + 9 | 133.454 | 1,33 ms | 110 MHz |
| MLP `q4_s0` w4a4 | **en el reductor** | **7.741** | 18.542 | 16 + 17 | 27.136 | 0,27 ms | 105 MHz |
| MLP `q4_s0` w4a4 | en el IP | no se generó (FINN falla en un paso, sin investigar) | | | 29.440 | | |

Diseño de la cámara (Vivado 2022.2, Z7-10):

| Variante | LUT | FF | BRAM (tiles) | DSP | Potencia |
|---|---|---|---|---|---|
| Original con HDMI (reproducido) | 10.168 (57,8 %) | 14.578 | 14,5 | 3 | 2,04 W |
| **Sin HDMI** (solo depuración, eliminado) | **6.624 (37,6 %)** | 8.173 | 10,5 | 3 | 1,87 W |

Diseños completos (cámara sin HDMI + reductor + IP de FINN + DMA de salida), implementados con Vivado 2022.2 (estrategia `Performance_ExplorePostRoutePhysOpt`):

| Diseño | LUT | FF | BRAM (tiles) | DSP | Potencia | Tiempos (dominios de datos) |
|---|---|---|---|---|---|---|
| **CNN `cq4_s6` en Z7-20** | 13.772 (25,9 %) | 17.965 (16,9 %) | 34,5 de 140 | 3 | 2,02 W | cumplen: 100 MHz +0,75 ns, 150 MHz +0,19 ns |
| **MLP `q4_s0` en Z7-20** | 15.958 (30,0 %) | 29.170 (27,4 %) | 39 de 140 | — | 2,07 W | cumplen: 100 MHz +0,16 ns, 150 MHz +0,24 ns |
| CNN `cq4_s6` en Z7-10 | 13.743 (78,1 %) | 17.965 (51,0 %) | 34,5 de 60 | 3 | 1,99 W | **150 MHz −0,34 ns (2 endpoints, VDMA)**; 100 MHz +0,01 ns |
| MLP `q4_s0` en Z7-10 | 16.597 (94,3 %) | 29.170 (82,9 %) | 39 de 60 | — | — | **no coloca** (utilización muy alta) |

- **Tiempo MIPI D-PHY** (WNS −2,42/−2,45 ns, WHS −1,04/−1,07 ns, 2 endpoints): pines de datos → deserializador; igual que el diseño original y que el de Digilent.
- **Z7-10 con la CNN:** las rutas con tiempo negativo están en el realineador del VDMA de Xilinx (canal de escritura, 24→32 bits), que ya era la más justa del diseño original (+0,019 ns).
  Opciones: bajar ese reloj de 150 a ~125 MHz (no se ha probado en placa), o quitar la captura completa por VDMA y la gamma.
- **Recomendación provisional: Z7-20** para las dos redes (todo cierra, ocupa el 26–30 % de las LUT). La Z7-10 es viable para la CNN con ajustes.
- **Reproducibilidad:** `crear_proyecto.tcl` trabaja sobre una copia del diseño de bloques; `JOBS=4` si se lanzan varias implementaciones a la vez (con 4×8 trabajos se agotaron los 62 GB de RAM).
- Resultados e informes en `99_hw_project/zybo_22_2/resultados/`.

## 2b. Diseño vigente: entrada UINT8 (24/11/2026) — sustituye a las cifras de la sección 2 para la Z7-20
**Corrección importante.** Las primeras builds anotaban la entrada del IP como `UINT7` (la tabla del reductor da q en 0..121). FINN empaqueta cada elemento de entrada con los bits de su tipo
(3×7 = 21 bits rellenados a 24), mientras que el conversor de ancho del diseño (`dwidth_finn`, 1→3 o 1→4 bytes) junta bytes de 8 bits: en placa el IP habría visto otra imagen.
Se vio al escribir el servidor nativo de Verilator (con paso de 8 bits no coincidía con Brevitas; con 7 sí). Ahora la entrada se anota `UINT8` (`verificar_entrada_reductor.py`, `parchear_entrada_uint8.py`);
la tabla no cambia. Con el IP nuevo, CNN y MLP coinciden con Brevitas empaquetando bytes como el hardware (dif. máx. 2,9e-6 y 9,5e-7). Los resultados antiguos están en `resultados/*_uint7_obsoleto`.

Z7-20, Vivado 2022.2, sin HDMI, PE=SIMD=1 (`resultados/z7-20_cnn_cq4s6`, `z7-20_mlp_q4s0`; con `.bit`, `.xsa` y `finn_app.elf`):

| Red | LUT | FF | BRAM (tiles) | Potencia | Tiempos |
|---|---|---|---|---|---|
| CNN cq4_s6 | 13.687 (25,7 %) | 17.864 | 34,5 | 2,02 W | solo fallan los 2 puntos de la D-PHY de la cámara (WNS −2,45 ns, como el diseño original) |
| MLP q4_s0 | 16.659 (31,3 %) | 31.600 | 39 | 2,09 W | ídem |

Ciclos del IP en rtlsim/Verilator: CNN 91.4k (0,91 ms a 100 MHz), MLP 26.9k (0,27 ms). Servidor nativo C++ (`03_simulacion_verilator/servidor_nativo`): 0,11 s por imagen (CNN), 0,019 s (MLP);
con PyVerilator (`02_cuantizacion_finn/lazo_rtlsim`) la CNN tardaba 1,87 s.

## 3c. IP de FINN en el lazo de Gazebo (hecho)
`04_ros2_gazebo/lazo_ip_verilator.sh` lanza Gazebo con ventana y el servidor del IP simulado. Con la CNN, 5 Hz, 50 ms de retardo, Gazebo pausado mientras el IP responde y velocidades al 0,25×:
1 vuelta a Silverstone, error lateral máx. 0,40 m (0,44 m con el servidor PyVerilator). Mayor velocidad con ese lazo (0,5× y 0,75×, modelo cuantizado de Brevitas): se atasca (67 % y 11 % de la vuelta).

## 3. Resultados en el simulador (Silverstone, circuito fuera del entrenamiento; 2 vueltas, ambos sentidos, 10 semillas)

| Modelo | Completados |
|---|---|
| CNN float | 17/20 (85 %) |
| CNN w4a4 | 17/20 (85 %) |
| MLP w4a4 | 14/20 (70 %) |
| MLP float | 12/20 (60 %) |

Anchura de pista (Silverstone con otra anchura, 3 semillas × 2 sentidos): sin cambio hasta semiancho 1,0 m; a 0,8 m ningún modelo completa. Umbral
entre 0,8 y 1,0 m (4,5–5,5 veces el ancho del coche); solo vale para el simulador.

## 3b. Cierre del flujo: imágenes de Gazebo → IP de FINN (rtlsim)
`servidor_q.py --volcar` guarda las imágenes que recibe el modelo cuantizado durante una vuelta de Silverstone; `estimacion_recursos/verificar_volcado.py` las pasa por la tabla del reductor y por el IP de FINN simulado (Verilator) y compara `v`, `w` con la salida del servidor (Brevitas).

| Red | Imágenes | Dif. máx. v | Dif. máx. w | Coinciden (tol. 1e-3) |
|---|---|---|---|---|
| CNN `cq4_s6` (vuelta completa) | 60 (1 de cada 15) | 2,9e-6 | 9,5e-7 | 60/60 |
| MLP `q4_s0` (vuelta fallida, atasco al 20 %) | 60 (1 de cada 5) | 9,5e-7 | 4,8e-7 | 60/60 |

Resultados en `99_hw_project/zybo_22_2/resultados/volcado_*.json`. Sigue sin probarse el IP dentro del bucle de Gazebo (la latencia real y el software de la ARM están sin ejecutar en placa; ver `99_hw_project/zybo_22_2/software/README.md`).

## 4. Decisiones de diseño y por qué

- **Recorte 4:3** de la imagen 1280×720 de la cámara: el simulador usa 640×480; reducir los 1280 píxeles a 32 deformaría la escena.
- **Cuantización de entrada en el reductor.** La red cuantiza la entrada con escala aprendida (≠1/255; 122–128 niveles). En FINN eso son umbrales por valor
  de entrada. El reductor aplica la tabla byte→q (de `verificar_entrada_reductor.py`, exacta frente a Brevitas: diferencia 0 en 100 imágenes) y el IP recibe q.
- **Orden de los datos:** CNN intercalada (R,G,B por píxel; la Transpose NCHW→NHWC del modelo padre está en la CPU), MLP planar.
- **Sin HDMI** y con el DMA de depuración conservado (captura de la imagen reducida por UART).

## 5. Limitaciones de FINN v0.9 encontradas

- La CNN solo se convierte con el generador de ventanas RTL (`force_rtl_conv_inp_gen`).
- Una anotación INT8 en el `Add` final rompe la verificación propia de FINN (valor no entero): se verifica con un script propio con anotaciones relajadas.
- La salida del IP es entera; la CPU aplica `Mul(0,00574)` + `Add` del modelo padre.
- En el contenedor `Path.home()` no es el home real: rutas absolutas.
- El IP unido depende de IP de HLS que quedan en el directorio de construcción: hay que copiarlos (`99_hw_project/zybo_22_2/copiar_ip_finn.sh`).
- La MLP con los umbrales de entrada dentro del IP no generó el IP.

## 6. Reproducir

```
# FINN (en la imagen Docker de FINN v0.9; ver 02_cuantizacion_finn/estimacion_recursos/lanzar_estimacion.sh)
SCRIPT=estimar_cnn.py ./lanzar_estimacion.sh --modelo <modelo cq4_*> --salida /tmp/finn_est/x --parte xc7z010clg400-1 --ooc [--onnx-q <modelo_uint8_q.onnx>]
SCRIPT=verificar_entrada_reductor.py ./lanzar_estimacion.sh --modelo <modelo> --arquitectura cnn|mlp --onnx <modelo_uint8.onnx> --salida <dir>   # tabla y grafo recortado
# Reductor
99_hw_project/zybo_22_2/reductor/construir_reductores.sh     # IP CNN y MLP + verificación RTL
# Proyecto Vivado 2022.2 (Z7-10 o Z7-20)
PLACA=z7-10 VARIANTE=sin_hdmi RED=cnn|mlp HASTA=impl vivado -mode batch -source 99_hw_project/zybo_22_2/crear_proyecto.tcl
```

**No versionado (se regenera o es de terceros):** `99_hw_project/hw_pcam_5c` y `JdeRobot_NN` (proyectos subidos), `zybo_22_2/reductor/proj` (proyecto de HLS), `zybo_22_2/fuentes/ip_repo/{digilent_ip,finn_cnn,finn_mlp}` y `fuentes/bd/{ip,ipshared}` (copias de las librerías de Digilent y de los IP de FINN; `copiar_ip_finn.sh` regenera los de FINN y el resto sale de `hw_pcam_5c`), y los `.bit`/`.xsa` de `resultados/` (se regeneran con `crear_proyecto.tcl`).

## 7. Pendiente

1. Cerrar tiempo de la CNN en Z7-10 (reloj del VDMA o recortes) si se quiere esa placa.
2. Prueba de retardo y frecuencia de lazo en el simulador (hecha; ver nota de escala abajo y la sección 8).
3. (hecho, ver 3c) IP de FINN en el lazo de Gazebo. Falta: plegado de la CNN para simulación, MLP en el lazo, lazo sin pausar el simulador, prueba en placa.
4. Software de la ARM (DMA, interrupciones, escritura de los dos valores) y prueba en placa; comparar imagen real y simulada.
5. Prueba con TurtleBot: escala de velocidades v_real = s·τ·v_sim, w_real = τ·w_sim.

**Retardo y frecuencia del lazo (Silverstone, CNN `cq4_s6` y MLP `q4_s0` w4a4; ambos sentidos).**

| Condición (cámara a 20 Hz) | Coche a velocidad completa (8,7 m/s, 2 vueltas) | Coche a cámara lenta ×0,25 (2,2 m/s, 1 vuelta) |
|---|---|---|
| lazo de 20 Hz, sin retardo | 2/2 y 2/2 | 2/2 y 2/2 |
| 10 Hz, sin retardo | 0/2 y 0/2 | — |
| 20 Hz, retardo 50 ms | 0/2 y 0/2 | 2/2 y 2/2 |
| 10 Hz, retardo 50 ms | 0/2 y 0/2 | 2/2 y 2/2 |
| 5 Hz, retardo 100 ms | 0/2 y 0/2 | 2/2 y 2/2 |

(Pares: CNN y MLP. cte máximo a cámara lenta: 0,47–0,52 m la CNN y 0,74–0,80 m la MLP, igual que sin retardo.) Es una prueba pequeña: 2 pruebas por celda
y una sola vuelta a cámara lenta. A velocidad completa 50 ms son 0,44 m de recorrido y ningún modelo lo tolera; a 2,2 m/s toleran hasta 5 Hz con 100 ms de retardo.
La tolerancia depende de la velocidad, no de la red. El robot real va unas 40 veces más despacio que el coche simulado a velocidad completa (v_real = s·τ·v_sim), de modo
que 10–20 Hz con ~40 ms de latencia total queda muy dentro de la zona tolerada, pero no se ha medido con el robot real.

## 8. Actualización 25/11/2026: reductor bilineal, plegado, HIL con la placa y TLAST

**Reductor bilineal.** El reductor HLS hacía la media de cada bloque de 30×30; el entrenamiento usa `cv2.INTER_LINEAR`, que equivale a la media de los 2×2 píxeles centrales de cada bloque. La diferencia bastaba para que el lazo
cerrado fallara (0,685 vueltas en el HIL emulado). Ahora `REDUCCION_LINEAL=1` (por defecto) calcula `(a+b+c+d+2)>>2` sobre los píxeles (14,15) de cada bloque; `REDUCCION_LINEAL=0` conserva la media por bloques.
Sin división, el reductor ya no usa DSP. Verificado en C (banco de pruebas), RTL, numpy (`pynq_hil/reductor_ref.py`) y en la placa (bit a bit).

**¿Por qué la red no usa DSP?** Con pesos y activaciones de 4 bits un producto es una tabla de unas pocas LUT; FINN usa `resType=lut` en las MVAU y la CNN completa sale con 0 DSP. Forzar `resType=dsp` da 49 DSP y ahorra
unas 1,5k LUT (estimación analítica); en la 7-series un DSP48E1 no empaqueta varios productos de 4 bits, así que cada uno desperdicia el multiplicador de 25×18.

**Cuánto se puede plegar/paralelizar** (`estimacion_recursos/folding/generar_folding.py T [lut|dsp]` da el PE·SIMD mínimo para T ciclos; estimación analítica de FINN, que sobreestima):

| Objetivo T (ciclos) | LUT estimadas |
|---|---|
| 6144 | 10,2k |
| 3072 | 8,1k |
| 2304 | 8,6k |
| 1800 | 14,7k |
| 3072 con DSP | 6,6k + 49 DSP |

Suelo ≈1799 ciclos: el generador de ventana (`ConvolutionInputGenerator_rtl_0`) procesa 3 canales como máximo por ciclo. Hace falta `mvau_wwidth_max` alto (1024; el valor por defecto, 36, limita el SIMD).
Resultados con síntesis fuera de contexto (OOC, Z7-20, IP con TLAST):

| IP | Ciclos (Verilator) | s/imagen en Verilator | LUT | BRAM18 / BRAM36 | DSP | WNS |
|---|---|---|---|---|---|---|
| Original (PE=SIMD=1) | 91 425 | 0,108 | 5 713 | 23 / 9 | 0 | +1,20 |
| Plegada ×8 | 10 716 | 0,009 | 6 730 | 21 / 8 | 0 | +0,98 |
| Paralela (T=1800) | 4 729 | 0,004 | 7 946 | 22 / 6 | 0 | +0,74 |

Las tres dan exactamente la misma salida (6 imágenes aleatorias comparadas; salida bit a bit). La estimación analítica daba 14,6k LUT para la paralela y la síntesis real 7,9k.

**Tiempos del sistema completo (Gazebo + IP en Verilator, Silverstone, 1 vuelta, un solo intento por celda).**

| Modo | IP | Verilator por imagen | Vuelta | Tiempo simulado | Tiempo real | cte máx |
|---|---|---|---|---|---|---|
| 0,5×, 5 Hz, Gazebo pausado | CNN original | 0,114 s | 1,00 | 157,7 s | 288 s | 0,71 m |
| ídem | plegada | 0,010 s | 1,00 | 158,0 s | 223 s | 0,42 m |
| ídem | paralela | 0,004 s | 1,00 | 158,8 s | 222 s | 0,81 m |
| 1,0×, 10 Hz, sin pausa | original / plegada / paralela | 0,115 / 0,010 / 0,004 s | 0,15 / 0,71 / 0,13 | — | — | ≥1,0 m |

Plegar reduce el tiempo real de la vuelta de 288 s a 223 s (−23 %); después, el simulador (Gazebo + ROS) domina y la versión paralela no mejora (222 s). Las salidas de la red son idénticas entre configuraciones, así que las diferencias de cte
(0,42–0,81 m) son variabilidad del simulador entre ejecuciones, no de la red (no se ha medido su dispersión). A 1,0× y 10 Hz sin pausa ninguna configuración completa la vuelta (el límite es el control a esa velocidad, no el IP).

**HIL con la Zybo Z7-20 real (PYNQ 3.0.1, sin cámara).** Gazebo (640×480) → `trama_hil.py` (1280×720 con bandas negras de 160 columnas) → ROS 2 (`std_msgs/UInt8MultiArray`, fiabilidad RELIABLE; pasarela TCP porque Fast DDS del contenedor y Cyclone DDS de la placa no se descubren)
→ DDR → `axi_dma_2` (MM2S) → conversor 8→24 b → `axis_sof` (TUSER) → reductor → FINN → `axi_dma_1` (S2MM) → (v, w). Lo construye `HIL=1 crear_proyecto.tcl` (`agregar_hil.tcl`); software en `software/pynq_hil` (`hil_node.py`, `start_hil.sh`, README).
Resultados: reductor bit a bit igual a numpy; v,w iguales a Verilator; 18,5 ms por trama en la placa. Lazo cerrado completo con Gazebo (Silverstone, 0,5×, 5 Hz, pausa): 1,001 vueltas, cte máx 0,45 m, latencia del servidor
media 0,54 s, p95 0,45 s, máx 8,0 s (los picos no se han investigado). Es una sola vuelta; no hay estadísticas con placa.

**TLAST de la salida.** El IP de FINN no generaba TLAST y el DMA de salida marcaba `DMAIntErr` (aunque los 4 bytes eran correctos). Ahora lo genera FINN: `estimar.py`/`estimar_cnn.py` añaden un paso propio (`step_tlast`, `InsertTLastMarker(external=False, dynamic=False)`
tras insertar los FIFO, con su IP de HLS generado aparte y `GiveUniqueNodeNames`); coste ≈ +50 LUT (Z7-20 completa, sin HDMI: CNN plegada 14.760 LUT, MLP 16.639, HIL 16.049; 0 DSP; WNS −2,45 ns solo en las entradas MIPI, como antes). Probado en la placa: la prueba sin ROS sigue dando `|dif| max 0` y v, w iguales, con `hil_node.py` tratando cualquier error de DMA como real (ya no hay DMAIntErr). `--sin-tlast` desactiva el paso. Los IP `tl_*` (MLP, CNN original, plegada y paralela) se reconstruyeron así.

**Pendiente tras esto:** probar la cámara en la placa (I2C, orden de colores `ENTRADA_ROJO_EN_ALTO`) y la aplicación bare-metal; estadísticas del HIL con placa (varias vueltas/semillas); MLP cuantizada entrenada solo con v2 (no comparable punto por punto); origen de los picos de latencia de 8 s.
