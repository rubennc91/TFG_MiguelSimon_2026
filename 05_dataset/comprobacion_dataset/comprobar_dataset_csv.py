from pathlib import Path
import csv
import math
import numpy as np

try:
    import cv2
except Exception as e:
    print("ERROR: No se puede importar cv2/OpenCV.")
    print("Haz esta prueba dentro del Docker de FINN si aquí no está OpenCV.")
    raise e

DATASET_DIR = Path("/home/miguel_tfg/Orig/DATA_12_16/counter_montmelo_holonomic")
CSV_PATH = DATASET_DIR / "data.csv"

OUT_VIDEO = "/home/miguel_tfg/comprobacion_dataset_flecha.mp4"
OUT_CSV = "/home/miguel_tfg/comprobacion_dataset_resultados.csv"

DT = 0.02
THETA0 = 0.0

VMIN = -0.6
VMAX = 13.0
WMIN = -math.pi
WMAX = math.pi


def norm_v(v):
    return (v - VMIN) / (VMAX - VMIN)


def norm_w(w):
    return (w - WMIN) / (WMAX - WMIN)


def denorm_v(vnorm):
    return (VMAX - VMIN) * vnorm + VMIN


def denorm_w(wnorm):
    return (WMAX - WMIN) * wnorm + WMIN


def draw_arrow(img, theta, v, w, frame_name):
    out = img.copy()

    h, width = out.shape[:2]
    cx = width // 2
    cy = h // 2

    length = int(max(15, min(120, abs(v) * 10)))

    x2 = int(cx + length * math.cos(theta))
    y2 = int(cy - length * math.sin(theta))

    cv2.arrowedLine(out, (cx, cy), (x2, y2), (0, 0, 255), 3, tipLength=0.25)

    cv2.putText(out, f"{frame_name} v={v:.3f} w={w:.3f}",
                (10, 25), cv2.FONT_HERSHEY_SIMPLEX, 0.55, (255, 255, 255), 2)

    cv2.putText(out, f"theta={theta:.3f} rad",
                (10, 50), cv2.FONT_HERSHEY_SIMPLEX, 0.55, (255, 255, 255), 2)

    return out


def main():
    if not CSV_PATH.exists():
        raise FileNotFoundError(f"No existe {CSV_PATH}")

    rows = []

    with CSV_PATH.open() as f:
        reader = csv.DictReader(f)

        for row in reader:
            img_name = row["image_name"]
            img_path = DATASET_DIR / img_name

            if not img_path.exists():
                continue

            v = float(row["v"])
            w = float(row["w"])

            vnorm = norm_v(v)
            wnorm = norm_w(w)

            rows.append({
                "image_name": img_name,
                "img_path": img_path,
                "v": v,
                "w": w,
                "vnorm": vnorm,
                "wnorm": wnorm,
                "v_back": denorm_v(vnorm),
                "w_back": denorm_w(wnorm),
            })

    print("CSV:", CSV_PATH)
    print("Frames encontrados:", len(rows))

    if len(rows) == 0:
        raise RuntimeError("No se ha encontrado ningún frame válido")

    vs = np.array([r["v"] for r in rows])
    ws = np.array([r["w"] for r in rows])
    vnorms = np.array([r["vnorm"] for r in rows])
    wnorms = np.array([r["wnorm"] for r in rows])
    vbacks = np.array([r["v_back"] for r in rows])
    wbacks = np.array([r["w_back"] for r in rows])

    print()
    print("=== Valores reales del CSV ===")
    print(f"v min={vs.min():.6f} max={vs.max():.6f} mean={vs.mean():.6f} std={vs.std():.6f}")
    print(f"w min={ws.min():.6f} max={ws.max():.6f} mean={ws.mean():.6f} std={ws.std():.6f}")

    print()
    print("=== Valores normalizados ===")
    print(f"vnorm min={vnorms.min():.6f} max={vnorms.max():.6f} mean={vnorms.mean():.6f} std={vnorms.std():.6f}")
    print(f"wnorm min={wnorms.min():.6f} max={wnorms.max():.6f} mean={wnorms.mean():.6f} std={wnorms.std():.6f}")

    print()
    print("=== Error normalizar y desnormalizar ===")
    print(f"error max v={np.max(np.abs(vbacks - vs)):.12f}")
    print(f"error max w={np.max(np.abs(wbacks - ws)):.12f}")

    print()
    print("OK: vnorm dentro de [0, 1]" if vnorms.min() >= 0 and vnorms.max() <= 1 else "AVISO: vnorm se sale de [0, 1]")
    print("OK: wnorm dentro de [0, 1]" if wnorms.min() >= 0 and wnorms.max() <= 1 else "AVISO: wnorm se sale de [0, 1]")

    first = cv2.imread(str(rows[0]["img_path"]))
    if first is None:
        raise RuntimeError("No se puede leer la primera imagen")

    h, width = first.shape[:2]
    fps = int(round(1.0 / DT))

    fourcc = cv2.VideoWriter_fourcc(*"mp4v")
    video = cv2.VideoWriter(OUT_VIDEO, fourcc, fps, (width, h))

    theta = THETA0

    with open(OUT_CSV, "w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(["image_name", "v", "w", "vnorm", "wnorm", "theta"])

        for r in rows:
            img = cv2.imread(str(r["img_path"]))
            if img is None:
                continue

            v = r["v"]
            w = r["w"]

            theta += w * DT

            frame = draw_arrow(img, theta, v, w, r["image_name"])
            video.write(frame)

            writer.writerow([
                r["image_name"],
                v,
                w,
                r["vnorm"],
                r["wnorm"],
                theta,
            ])

    video.release()

    print()
    print("Vídeo generado:", OUT_VIDEO)
    print("CSV generado:", OUT_CSV)


if __name__ == "__main__":
    main()
