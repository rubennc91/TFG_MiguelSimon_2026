# Material recuperado del servidor

Ficheros del trabajo de Miguel que no estaban en el repositorio. Los scripts conservan
las rutas absolutas originales (`/home/miguel_tfg/...`); hay que adaptarlas antes de ejecutarlos.

| Carpeta | Contenido |
|---|---|
| `finn_notebooks_y_modelos/` | Carpeta `UAH_example` de FINN: notebooks, scripts de build y verificación (`build_miguel.py`, `comprobar_onnx_vs_verilator.py`), `folding_config_*.json`, `mlp_27k.ckpt`, pesos cuantizados `.pth`, y logs e informes de las compilaciones (`output_*`, sin los ficheros generados). |
| `notebooks_cuantizacion_finn/` | Notebooks de cuantización (`Quantize_MLP27K_Montmelo_FINN*`) y de build del dataflow (`Custom_dataflow_*`, `FINN_build_*`), versiones v1 a v4. |
| `modelos_onnx_cuantizados/` | Modelos ONNX de las distintas etapas (limpio, cuantizado W4A8, fine-tuned, preprocesado). |
| `entrenamiento_original_neuralpilot/` | Código y modelos de partida (neuralpilot): `dataset.py`, `model.py`, `main*.py`, notebooks de entrenamiento con Brevitas, checkpoints `.ckpt`/`.pth`. |
| `entrenamiento_mlp_brevitas/` | Entrenamiento del MLP con Brevitas (`train-mlpilot-with-brevitas-rev-rnc.ipynb`, `main.py`, `model.py`). |
| `entrenamiento_cnn_revista/` | Script de entrenamiento de la CNN (`CrossEntropyCNN.py`). |
| `comprobacion_dataset/` | Scripts que reproducen el dataset sobre vídeo (`comprobar_dataset_csv*.py`) y sus resultados. |
| `simulacion_verilator/` | Bancos de prueba en C++ para Verilator (`banco_pruebas_v1`, `banco_pruebas_v2`), con el wrapper Verilog. Los `obj_dir/` se regeneran con `make`. |
| `red_logica_systemverilog_LLNN/` | Red lógica en SystemVerilog (`top.sv`, capas, testbench). |
| `dataset_jderobot/` | Circuitos `montmelo_holonomic` y `counter_montmelo_holonomic` (`DATA_12_16`) del dataset JdeRobot. El resto del dataset se descarga del origen. |
| `docs_instalacion/` | Notas de instalación (OpenCV, Verilator, SDL2). |

No incluido por tamaño: imagen Docker de FINN y vídeos (se alojarán aparte).
