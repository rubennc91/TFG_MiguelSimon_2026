# 2. Simulación del acelerador con Verilator

Verilator convierte el RTL de FINN en un modelo C++ que se controla desde un testbench.
Todo vive en `OUT/stitched_ip/` (con `OUT = 03_simulacion_verilator/salida_finn_mlp27k_w4a8`).

## 2.1 Estado verificado (noviembre 2026)

Se reconstruyó el modelo desde el repositorio, sin FINN ni Vivado, con **Verilator 5.020**:

| Prueba | Resultado |
|---|---|
| Compilación (`03_simulacion_verilator/herramientas/build_verilator.sh`) | OK en ~20 s (hace falta `--no-timing` en Verilator ≥ 5) |
| Bytes aceptados / salidas / ciclos | 576 / 2 / **26 885**: coincide con la memoria |
| 4 imágenes (ceros + 3 aleatorias) vs `03_simulacion_verilator/herramientas/golden_model.py` | **Coincidencia bit a bit** de los INT24 |
| Servidor UDP (`main.cpp`) + cliente Python | Devuelve los mismos `v`, `w` |

El alumno usó la versión 4.x de Ubuntu (`/usr/share/verilator`). El comando original se
recuperó de `verilator_sim/obj_dir/Vfinn_design_wrapper__verFiles.dat`.

## 2.2 Estructura

```
stitched_ip/
├── finn_vivado_stitch_proj.gen/…/finn_design_wrapper.v   ← top real (finn_design_wrapper)
├── all_verilog_srcs.txt                     ← lista original de FINN (rutas /tmp, inservible)
├── all_verilog_srcs_verilator_clean.txt     ← lista que usa Verilator (639 fuentes, relativas)
├── verilator_stubs/
│   ├── xpm_fifo_axis_stub.v                 ← sustituye a xpm_fifo_axis (Xilinx XPM)
│   └── axis_data_fifo_stubs.v               ← sustituye a finn_design_fifo_0/1 (AXIS Data FIFO)
└── verilator_sim/
    ├── main.cpp                             ← testbench ACTUAL: servidor UDP para ROS 2
    ├── main_original_antes_udp.cpp          ← testbench de validación con el dataset (7294 frames)
    ├── main_original_antes_udp_backup.cpp   ← igual que el anterior pero sin medir tiempos
    ├── *.dat (602)                          ← contenidos de ROM: pesos y umbrales
    ├── resultados_verilator.csv             ← resultados de los 7294 frames (capítulo 4)
    ├── compile_*_log.txt, salida_*.txt      ← historial de pruebas del alumno
    └── obj_dir/                             ← binario compilado (versión UDP)
```

## 2.3 Qué hubo que cambiar para que Verilator aceptara el diseño

`03_simulacion_verilator/herramientas/make_verilator_srclist.py` regenera `all_verilog_srcs_verilator_clean.txt` a partir de
`all_verilog_srcs.txt`; **la salida es idéntica al fichero que hizo el alumno a mano**:

1. Rutas `/tmp/FINN_build_…/vivado_stitch_proj_…/` → `../` (copia en `finn_vivado_stitch_proj.gen`).
2. Se quitan:
   - XPM (`xpm_fifo`, `xpm_memory`, `xpm_cdc`): usan `force`/`release`. Además, parcheadas
     bloqueaban `tready`.
   - `axis_infrastructure_v1_1_0.vh`, `axis_data_fifo_v2_0` y los wrappers `finn_design_fifo_0/1`:
     es la IP *AXI4-Stream Data FIFO* que FINN usa para `StreamingFIFO_1` (`impl_style: vivado`,
     profundidad 576).
   - Monitores `*_hls_deadlock_*` de Vitis HLS (ficheros `.vh` con `assign` sueltos).
3. Se añaden los dos stubs de `verilator_stubs/`.

> **Ojo con los stubs:** son registros de una sola posición (*skid buffer* simplificado), no
> FIFOs de 576. Funcionalmente es correcto porque el protocolo AXI-Stream propaga el
> *backpressure*, pero **la latencia y el comportamiento de `tready` no son los del hardware
> real**. Con una FIFO profunda la entrada nunca se frena; aquí tampoco se observó, pero si
> se cambia la red o el folding conviene revisarlo (o escribir un stub con profundidad real).

> **Notebook vs realidad:** la celda 21 del notebook definitivo genera una lista que **no
> compila** (deja los `.vh` de deadlock y la FIFO de Vivado; ver su salida con errores). La
> lista buena se editó después a mano. Usar el script, no la celda.

## 2.4 Compilar y ejecutar

Requisitos: `verilator` (4.x o 5.x), `g++`, y `libopencv-dev` solo para el testbench del dataset.

```bash
# Servidor UDP para ROS 2 (testbench por defecto)
03_simulacion_verilator/herramientas/build_verilator.sh
```

```bash
# Autotest sin OpenCV: ceros o un .raw de 576 bytes
03_simulacion_verilator/herramientas/build_verilator.sh "$PWD/03_simulacion_verilator/herramientas/verilator_selftest.cpp"
```

```bash
# Validación con el dataset (OpenCV; abre una ventana con las dos flechas)
03_simulacion_verilator/herramientas/build_verilator.sh main_original_antes_udp.cpp
```

Comando equivalente (el del alumno, más `--no-timing` para Verilator 5):

```bash
cd "$OUT/stitched_ip/verilator_sim"
verilator -Wall --cc ../finn_vivado_stitch_proj.gen/sources_1/bd/finn_design/hdl/finn_design_wrapper.v \
  -f ../all_verilog_srcs_verilator_clean.txt --top-module finn_design_wrapper \
  --exe main.cpp --build -I../finn_vivado_stitch_proj.gen/sources_1/bd/finn_design/ipshared/8713/hdl \
  --no-timing -Wno-fatal -Wno-MODDUP -Wno-TIMESCALEMOD -Wno-PINCONNECTEMPTY -Wno-DECLFILENAME \
  -Wno-PINMISSING -Wno-COMBDLY -Wno-UNUSED -Wno-WIDTH -Wno-STMTDLY -Wno-UNDRIVEN
```

> ⚠️ **Ejecutar siempre desde `verilator_sim/`.** Las ROM cargan sus `.dat` con
> `$readmemh("….dat")` y ruta relativa. Desde otra carpeta solo sale un *warning*
> (`$readmem file not found`) y **los pesos valen cero**: la simulación corre y da números
> plausibles pero falsos.

```bash
cd "$OUT/stitched_ip/verilator_sim"
./obj_dir/Vfinn_design_wrapper                       # main.cpp: escucha en UDP 5005
./obj_dir/Vfinn_design_wrapper <dataset_dir> <data.csv>   # main_original_antes_udp.cpp
```

## 2.5 Interfaz del acelerador y protocolo

| Señal | Dir. | Ancho | Notas |
|---|---|---|---|
| `ap_clk` | in | 1 | El testbench genera los flancos (`tick()`) |
| `ap_rst_n` | in | 1 | Activo a nivel bajo; 20 ciclos a 0 y 20 a 1 |
| `s_axis_0_tdata/tvalid/tready` | in/in/out | 8/1/1 | 576 transferencias, una por byte, RGB planar |
| `m_axis_0_tdata/tvalid/tready` | out/out/in | 24/1/1 | 2 transferencias: `raw_v` y luego `raw_w`, INT24 con signo |

Conversión de salida (constantes de `dataflow_parent.onnx`, ver [01_FINN.md](01_FINN.md#141-lo-que-queda-fuera-del-acelerador)):

```cpp
v_norm = sign_extend_24(raw_v) * 0.00016658f + 0.02115575f;
v      = -0.6f + v_norm * 13.6f;
w      = -PI   + w_norm * 2*PI;
```

**Diferencia entre testbenches:** `main_original_antes_udp.cpp` (el de la memoria, Código 3.2)
cuenta un byte como aceptado mirando `tready` *después* del flanco. Funciona porque aquí
`tready` está siempre a 1, pero con *backpressure* contaría mal. `main.cpp` (UDP) ya lo hace bien:
guarda `tvalid && tready` *antes* del flanco.

## 2.6 Protocolo UDP con ROS 2 (`main.cpp`)

- Escucha en `0.0.0.0:5005`.
- Petición: datagrama de **576 bytes** exactos (RGB planar). Otro tamaño se descarta.
- Respuesta al remitente: **8 bytes = 2 × float32** (`v`, `w`) en el orden de bytes de la máquina.
  Si la inferencia falla responde `(0, 0)` para parar el coche.
- El estado del acelerador **no se resetea entre imágenes** (es *dataflow*: correcto).
- Prueba sin ROS:

```bash
python3 - <<'EOF'
import socket, struct
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.settimeout(2)
s.sendto(bytes(576), ("127.0.0.1", 5005))
print(struct.unpack("<2f", s.recvfrom(64)[0]))   # imagen negra → (4.8553, -1.2199)
EOF
```

## 2.7 Rendimiento

- 576 ciclos de envío + 26 309 de espera = 26 885 ciclos por imagen, constante.
  A 100 MHz serían 269 µs en la FPGA.
- En simulación: 33 ms/imagen de media en el equipo del alumno (`resultados_verilator.csv`,
  columna `elapsed_ms`), en torno a 30 fps. Es el cuello de botella del lazo ROS (~20 Hz).
- Posibles mejoras: compilar con `-O3`/`--x-assign fast`/`--threads`, o generar el diseño con
  más paralelismo (menos ciclos que simular).
