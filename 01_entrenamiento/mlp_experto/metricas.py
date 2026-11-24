"""Métricas de la red frente a las etiquetas del experto (en unidades reales: m/s y rad/s)."""
import numpy as np

K_CERRADA = 0.2


def metricas(y_real: np.ndarray, y_pred: np.ndarray, kappa: np.ndarray) -> dict:
    e = y_pred - y_real
    cerradas = np.abs(kappa) > K_CERRADA
    return dict(
        n=int(len(y_real)),
        rmse_v=float(np.sqrt((e[:, 0] ** 2).mean())), mae_v=float(np.abs(e[:, 0]).mean()),
        rmse_w=float(np.sqrt((e[:, 1] ** 2).mean())), mae_w=float(np.abs(e[:, 1]).mean()),
        base_rmse_v=float(y_real[:, 0].std()), base_rmse_w=float(y_real[:, 1].std()),   # predecir siempre la media
        corr_v=float(np.corrcoef(y_real[:, 0], y_pred[:, 0])[0, 1]) if y_pred[:, 0].std() > 0 else 0.0,
        corr_w=float(np.corrcoef(y_real[:, 1], y_pred[:, 1])[0, 1]) if y_pred[:, 1].std() > 0 else 0.0,
        v_real_curvas_cerradas=float(y_real[cerradas, 0].mean()) if cerradas.any() else float("nan"),
        v_pred_curvas_cerradas=float(y_pred[cerradas, 0].mean()) if cerradas.any() else float("nan"),
    )


def pesos_de_curva(kappa: np.ndarray, factor: float, umbral: float = 0.15) -> np.ndarray:
    """Peso por fila para la pérdida: las filas de curva (|k| >= umbral) pesan `factor` veces."""
    return np.where(np.abs(kappa) >= umbral, factor, 1.0).astype(np.float32)
