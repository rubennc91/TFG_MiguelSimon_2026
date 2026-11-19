from pathlib import Path
import csv
import math
import cv2
import numpy as np

DATASET_DIR = Path("/home/miguel_tfg/Orig/DATA_12_16/counter_montmelo_holonomic")
CSV_PATH = DATASET_DIR / "data.csv"

OUT_VIDEO = "/home/miguel_tfg/comprobacion_dataset_flecha_grande.avi"
OUT_CSV = "/home/miguel_tfg/comprobacion_dataset_resultados_grande.csv"

DT = 0.02
THETA0 = 0.0

VMIN = -0.6
VMAX = 13.0
WMIN = -math.pi
WMAX = math.pi

OUT_W = 640
OUT_H = 480


def norm_v(v):
    return (v - VMIN) / (VMAX - VMIN)


def norm_w(w):
    return (w - WMIN) / (WMAX - WMIN)


def draw_arrow(img, theta, v, w, frame_name):
    # Agrandar imagen pequeña 16x12 a tamaño visible
    out = cv2.resize(img, (OUT_W, OUT_H), interpolation=cv2.INTER_NEAREST)

    h, width = out.shape[:2]
    cx = width // 2
    cy = h // 2

    length = int(max(30, min(220, abs(v) * 18)))

    x2 = int(cx + length * math.cos(theta))
    y2 = int(cy - length * math.sin(theta))

    cv2.arrowedLine(out, (cx, cy), (x2, y2), (0, 0, 255), 5, tipLength=0.25)

    cv2.putText(out, f"{frame_name}   v={v:.3f}   w={w:.3f}",
                (20, 35), cv2.FONT_HERSHEY_SIMPLEX, 0.8, (255, 255, 255), 2)

    cv2.putText(out, f"theta={theta:.3f} rad",
                (20, 70), cv2.FONT_HERSHEY_SIMPLEX, 0.8, (255, 255, 255), 2)

    return out


def main():
    rows = []

    with CSV_PATH.open() as f:
        reader = csv.DictReader(f)

        for row in reader:
            img_name = row["image_name"]
            img_path = DATASET_DIR / img_name

            if not img_path.exists():
                continue

            rows.append({
                "image_name": img_name,
                "img_path": img_path,
                "v": float(row["v"]),
                "w": float(row["w"]),
            })

    print("Frames encontrados:", len(rows))

    fourcc = cv2.VideoWriter_fourcc(*"XVID")
    video = cv2.VideoWriter(OUT_VIDEO, fourcc, int(round(1.0 / DT)), (OUT_W, OUT_H))

    if not video.isOpened():
        raise RuntimeError("No se ha podido abrir VideoWriter. Puede faltar codec.")

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

            vnorm = norm_v(v)
            wnorm = norm_w(w)

            frame = draw_arrow(img, theta, v, w, r["image_name"])
            video.write(frame)

            writer.writerow([r["image_name"], v, w, vnorm, wnorm, theta])

    video.release()

    print("Video generado:", OUT_VIDEO)
    print("CSV generado:", OUT_CSV)


if __name__ == "__main__":
    main()
