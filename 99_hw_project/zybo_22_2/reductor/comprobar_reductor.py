"""Compara la salida del reductor (tb_reducer.cpp, volcada en /tmp) con las dos reducciones de referencia sobre el recorte 960x720:
media por bloques de 30x30 (= cv2.INTER_AREA con factor entero) y bilineal (= cv2.INTER_LINEAR con factor 30: media de los 2x2 píxeles centrales 14,15 de cada bloque)."""
import os
import numpy as np
e = np.fromfile("/tmp/reductor_entrada1.rgb", np.uint8).reshape(720, 1280, 3)[:, 160:1120].astype(float)
import os
s = np.fromfile("/tmp/reductor_salida1.bin", np.uint8).reshape((24, 32, 3) if os.environ.get("SALIDA_HWC") == "1" else (3, 24, 32))
s = (s if os.environ.get("SALIDA_HWC") == "1" else s.transpose(1, 2, 0)).astype(int)
bloques = e.reshape(24, 30, 32, 30, 3)
area = np.floor(bloques.mean(axis=(1, 3)) + 0.5).astype(int)
lineal = np.floor(bloques[:, 14:16, :, 14:16].mean(axis=(1, 3)) + 0.5).astype(int)
for nombre, r in (("media por bloques (INTER_AREA)", area), ("bilineal (INTER_LINEAR, entrenamiento)", lineal)):
    d = np.abs(r - s)
    print(f"{nombre:42s} |dif| max {d.max():3d}  media {d.mean():.2f}")
