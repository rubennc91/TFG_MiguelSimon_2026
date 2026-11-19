# 01 · Entrenamiento
- `neuralpilot_original/`: código y modelos de partida (neuralpilot): `dataset.py`, `model.py`, `main.py`, `main_cnn.py`, notebooks de entrenamiento con Brevitas, checkpoints `.ckpt`/`.pth` (origen de `mlp_27k.ckpt`) y modelos ONNX iniciales.
- `mlp_brevitas/`: entrenamiento del MLP con Brevitas (`train-mlpilot-with-brevitas-rev-rnc.ipynb`, `main.py`, `model.py`).
- `cnn_revista/`: entrenamiento de la CNN (`CrossEntropyCNN.py`).

El dataset está en `../05_dataset/`. Los scripts conservan rutas absolutas del servidor original; hay que adaptarlas.
