# 1. FINN: de la red PyTorch al acelerador RTL

Esta parte cubre cómo se pasó la red del TFG (MLP de unos 27 000 pesos que predice `v`
y `w` a partir de una imagen de 16×12 RGB) a un diseño hardware *dataflow* con FINN v0.9.

> Abreviatura usada en todo el documento:
> `UAH` = `notebooks/UAH_example/TFG_MiguelSimon` en el repositorio de FINN (rubennc91/FINN-v0.9-Stable)
> `OUT = UAH/output_rebuild_mlp27k_w4a8_ft_clean`

## 1.1 Qué notebook es el bueno

En `UAH/` hay cuatro notebooks. **Solo uno produjo el diseño que se usa después:**

| Notebook | Estado | Para qué sirve |
|---|---|---|
| `Quantize_MLP27K_Montmelo_FINN_v4_clean_rebuild_verilator.ipynb` | **Definitivo** | Cuantización, *fine-tuning*, exportación ONNX, build FINN que genera `OUT`, preparación de Verilator |
| `Quantize_MLP27K_Montmelo_FINN_v4_short_buildfix.ipynb` | Versión anterior | Igual que el anterior, pero escribe en la carpeta "mezclada" que luego se borró |
| `FINN_build_MLP27K_W4A8_finetuned_minimal.ipynb` | Prueba | Build mínimo a partir de un `model.onnx` ya hecho (`output_documentacion_finn`) |
| `Custom_dataflow_QNN_Miguel_16x12_RGB_FINAL.ipynb` | **Descartado** | Otra red (576→256→128→16→2, `RedMiguel`). Con ella van `build_miguel.py`, `folding_config_miguel.json` y `state_dict_quantized_last.pth`. **No es la red del TFG** |

La red final es `576 → 32 → 256 → 2` (Figura 3.4 de la memoria), no la de `RedMiguel`.

## 1.2 Entorno

- **FINN v0.9** en Docker. La imagen usada era una variante parcheada a mano:
  `xilinx/finn:v0.9-dirty.xrt_202210.2.13.466_18.04-amd64-xrt` (ver `README_rnc.md`:
  se guardaba con `docker save` como `finn_v0.9_funciona.tar`).
- `run-docker.sh` está **modificado** respecto al de FINN: lanza directamente Jupyter en el
  puerto 8900, con 32 GB de memoria y el `PYTHONPATH` apuntando a `deps/` (qonnx,
  brevitas, finn-experimental, pyverilator).
- **Vivado / Vitis HLS 2022.2** en `/tools/Xilinx` (variables `FINN_XILINX_PATH=/tools/Xilinx`,
  `FINN_XILINX_VERSION=2022.2`).
- FPGA objetivo: `xc7z020clg400-1` (Zynq-7020, p. ej. PYNQ-Z2), reloj 10 ns (100 MHz).

> ⚠️ La carpeta `deps/` **no está en el repositorio** y la imagen Docker tampoco. Sin ellas
> no se puede volver a ejecutar el flujo FINN. Ver [04_pendientes.md](04_pendientes.md).

```bash
export FINN_XILINX_PATH=/tools/Xilinx
export FINN_XILINX_VERSION=2022.2
cd FINN-v0.9-Stable
bash run-docker.sh        # abre Jupyter en http://localhost:8900
```

## 1.3 Flujo paso a paso (notebook definitivo)

```
mlp_27k.ckpt (float, PyTorch)
  │  celdas 6-12   carga + evaluación float
  ▼
QuantMLP27K_W4A8 (Brevitas)        pesos 4 bit, activaciones 8 bit, entrada 8 bit [0,1]
  │  celdas 14-22  copia de pesos float → fine-tuning QAT (L1, Adam 1e-4, 50 épocas, 80/20)
  ▼
q_mlp27k_w4a8_finetuned.pth        (en el repo)
  │  celda 26      brevitas.onnx.export_finn_onnx(input_shape=(1,576))
  ▼
mlp27k_w4a8_finetuned.onnx → tidy → model_for_finn_w4a8_finetuned_01.onnx   (entrada float 0-1)
  │  celda 32      se antepone ToTensor (/255) y se marca la entrada como UINT8
  ▼
model.onnx  (= model_for_finn_w4a8_finetuned_uint8.onnx)   entrada [1,576] UINT8, salida [1,2]
  │  celda 39      build_dataflow_cfg(...)
  ▼
OUT/  (stitched IP + informes + modelos intermedios)
```

### 1.3.1 Red cuantizada (celda 14)

```python
quant_in  = QuantIdentity(bit_width=8, min_val=0.0, max_val=1.0)
fc1       = QuantLinear(576, 32,  weight_bit_width=4, bias_quant=Int8Bias)
relu1     = QuantReLU(bit_width=8)
fx        = QuantLinear(32, 256,  weight_bit_width=4, bias_quant=Int8Bias)
relu2     = QuantReLU(bit_width=8)
predictor = QuantLinear(256, 2,   weight_bit_width=4, bias_quant=Int8Bias)   # sin cuantizar la salida
```

Los nombres `fc1`, `fx`, `predictor` coinciden con los del checkpoint original, por eso los
pesos float se cargan directamente antes del *fine-tuning*.

### 1.3.2 Preprocesado (debe ser idéntico en todas partes)

```python
img = Image.open(p).convert("RGB").resize((16, 12))      # (ancho, alto) → array 12×16×3
arr = np.transpose(arr, (2, 0, 1)).reshape(-1)           # RRR… GGG… BBB… (planar)
x   = arr / 255.0                                        # modelo 0-1   |  bytes 0-255 en model.onnx
```

Salidas normalizadas a [0,1]: `v = -0.6 + v_norm·13.6`, `w = -π + w_norm·2π`.

### 1.3.3 Configuración del build (celda 39)

```python
cfg = build_cfg.DataflowBuildConfig(
    output_dir="output_rebuild_mlp27k_w4a8_ft_clean",
    folding_config_file=None,          # sin folding manual → PE=SIMD=1 en todo
    auto_fifo_depths=True,
    mvau_wwidth_max=36,
    stitched_ip_gen_dcp=True,
    split_large_fifos=True,
    synth_clk_period_ns=10.0,
    board=None,
    fpga_part="xc7z020clg400-1",
    default_mem_mode="const",          # envuelto en MemModeCompat (parche, ver abajo)
    shell_flow_type=build_cfg.ShellFlowType.NONE,
    generate_outputs=[ESTIMATE_REPORTS, STITCHED_IP],
    save_intermediate_models=True,
)
os.environ["FINN_BUILD_DIR"] = "/tmp/FINN_build_mlp27k_w4a8_ft_clean"
```

**Parches necesarios en FINN v0.9** (están en la misma celda):

1. `copy_file` de `distutils` se parchea para crear las carpetas padre (si no, falla al copiar
   el stitched IP a `OUT`).
2. `default_mem_mode` como texto provocaba `AttributeError: 'str' object has no attribute 'value'`;
   se envuelve en una clase `MemModeCompat` con atributo `.value`.

El build tarda unos 5 minutos (sobre todo `step_hls_ipgen` y `step_create_stitched_ip`;
ver `OUT/time_per_step.json`).

## 1.4 Qué hardware se generó

Del grafo `OUT/intermediate_models/step_streamline.onnx` y `OUT/final_hw_config.json`:

| Capa HW | Operación | Folding | Ciclos estimados |
|---|---|---|---|
| `Thresholding_Batch_0` | Cuantización de entrada (UINT8 → INT8; incluye el /255) | PE=1 | 576 |
| `MatrixVectorActivation_0` | FC 576→32 + ReLU (umbrales) | PE=1, SIMD=1 | 18 432 |
| `MatrixVectorActivation_1` | FC 32→256 + ReLU (umbrales) | PE=1, SIMD=1 | 8 192 |
| `MatrixVectorActivation_2` | FC 256→2, salida INT24 sin activación | PE=1, SIMD=1 | 512 |
| `StreamingFIFO_0..3` | FIFOs entre capas (auto) | — | — |

- Recursos estimados: ~37 400 LUT, 8 BRAM18, 0 DSP (`OUT/report/estimate_layer_resources.json`).
- Latencia estimada 27 712 ciclos ≈ 277 µs; medida en Verilator: **26 885 ciclos**.
- Al no haber folding (PE=SIMD=1), el acelerador está totalmente serializado. Hay mucho
  margen para paralelizar (p. ej. `target_fps` o un `folding_config_file`).

### 1.4.1 Lo que queda FUERA del acelerador

FINN deja en el host (`OUT/intermediate_models/dataflow_parent.onnx`):

```
global_in [1,576] UINT8 → Reshape → [StreamingDataflowPartition = el RTL] → Mul(0.00016658070671837777) → Add(0.02115575037896633)
```

Por eso el testbench C++ hace `raw_INT24 · 0.00016658 + 0.02115575` y después desnormaliza.
**Si se reentrena o cambia la red, estas dos constantes cambian** y hay que leerlas de nuevo
de `dataflow_parent.onnx` (o con `03_simulacion_verilator/herramientas/golden_model.py`).

## 1.5 Ficheros importantes de `OUT/`

| Ruta | Contenido |
|---|---|
| `build_dataflow.log` | Log completo del build |
| `final_hw_config.json` | PE/SIMD, profundidad de FIFOs, estilos de memoria finales |
| `report/*.json` | Estimaciones de ciclos, recursos y operaciones |
| `intermediate_models/step_*.onnx` | El modelo después de cada paso (abrir con Netron) |
| `intermediate_models/dataflow_parent.onnx` | Grafo padre: muestra el `Mul`/`Add` del host |
| `stitched_ip/finn_vivado_stitch_proj.*` | Proyecto Vivado con el IP ensamblado (copiado desde `/tmp`) |
| `stitched_ip/all_verilog_srcs.txt` | Lista de fuentes RTL (rutas absolutas a `/tmp`, ya no existen) |
| `stitched_ip/finn_design.v` | **Solo un stub de síntesis** (caja negra). El wrapper real está en `finn_vivado_stitch_proj.gen/sources_1/bd/finn_design/hdl/finn_design_wrapper.v` |

## 1.6 Verificación rápida sin FINN

`03_simulacion_verilator/herramientas/golden_model.py` ejecuta `step_streamline.onnx` en numpy puro (sin FINN ni Docker) y da
los enteros INT24 exactos que debe sacar el hardware. Se comprobó que coincide bit a bit con
la simulación Verilator (ver [02_Verilator.md](02_Verilator.md)).

```bash
pip install onnx numpy pillow
python3 03_simulacion_verilator/herramientas/golden_model.py imagen.png       # o un .raw de 576 bytes RGB planar
```

## 1.7 Cosas a vigilar

- `FINN_BUILD_DIR` apunta a `/tmp` **dentro del contenedor**, que se lanza con `--rm`: los
  ONNX intermedios de `/tmp` y el código HLS se pierden al cerrar Docker. Lo que importa ya
  está copiado en `OUT/`.
- La carpeta `UAH/FINN_build/` (2,4 GB, 11 400 ficheros en git) **no corresponde a este
  build**: es el directorio temporal de experimentos anteriores (redes convolucionales,
  `RedMiguel`…). Se puede sacar del repositorio sin perder nada del flujo final.
- El *fine-tuning* usa `random.seed(0)` para el reparto, pero no fija la semilla de PyTorch:
  reentrenar dará pesos ligeramente distintos.
