import torch
# Asegúrate de importar tu módulo correcto (cambia model_4 o model_5 según corresponda)
from main import CNNModule

# 1. Pon aquí la ruta exacta a tu mejor .ckpt
ruta_ckpt = "logs/ltc/version_1/checkpoints/epoch=157-step=2686.ckpt"

# 2. Cargamos el modelo desde el checkpoint
print(f"Cargando el mejor modelo desde: {ruta_ckpt}")
modelo_lightning = CNNModule.load_from_checkpoint(ruta_ckpt)

# 3. Extraemos solo la red neuronal pura (MLPModel)
red_pura = modelo_lightning.model

# 4. Lo guardamos en el formato que le gusta a FINN
torch.save(red_pura.state_dict(), "best_cnn_para_finn2.pth")
print("¡El mejor modelo ha sido extraído y guardado como 'best_cnn_para_finn.pth'!")