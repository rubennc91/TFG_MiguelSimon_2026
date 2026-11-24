import csv

import cv2
import numpy as np
import pytest

from generador_experto.grabador import Grabador, imagen_red, motivo_descarte


def meta_ok(**kw):
    m = dict(v_real=5.0, v_ord=5.0, cte=0.1, t_desde_reinicio=99.0, desfase_odom=0.01, media_pixel=80.0,
             x=1.0, y=2.0, kappa=0.05, curva=12, segmento=3)
    m.update(kw)
    return m


def imagen(seed=0):
    return np.random.default_rng(seed).integers(5, 255, (480, 640, 3), dtype=np.uint8)


def test_imagen_red_igual_que_el_controlador():
    x = imagen(1)
    y = imagen_red(x)
    assert y.shape == (12, 16, 3) and y.dtype == np.uint8
    assert np.array_equal(y, cv2.resize(x, (16, 12), interpolation=cv2.INTER_LINEAR)[..., ::-1])


@pytest.mark.parametrize("kw,motivo", [
    (dict(v_real=0.1, v_ord=5.0), "parado"),
    (dict(cte=1.5), "cte"),
    (dict(cte=-1.5), "cte"),
    (dict(t_desde_reinicio=1.0), "reinicio"),
    (dict(desfase_odom=0.2), "desfase"),
    (dict(media_pixel=0.5), "imagen_negra"),
])
def test_descartes(kw, motivo):
    assert motivo_descarte(meta_ok(**kw)) == motivo


def test_fotograma_normal_no_se_descarta():
    assert motivo_descarte(meta_ok()) is None
    assert motivo_descarte(meta_ok(v_real=0.1, v_ord=1.0)) is None     # parado pero sin orden de avanzar: válido


def test_csv_formato(tmp_path):
    g = Grabador(tmp_path, "montmelo", 1, "limpio")
    for k in range(3):
        assert g.escribir(imagen(k), 5.0 + k, 0.1 * k, meta_ok()) is True
    g.cerrar()
    carpeta = next(tmp_path.iterdir())
    filas = list(csv.reader(open(carpeta / "data.csv")))
    assert filas[0] == ["image_name", "v", "w"] and len(filas) == 4
    assert filas[2][1:] == ["6.0", "0.1"] or [float(v) for v in filas[2][1:]] == [6.0, 0.1]
    pngs = sorted((carpeta / "imagenes").glob("*.png"))
    assert len(pngs) == 3 and cv2.imread(str(pngs[0])).shape == (12, 16, 3)
    meta = list(csv.DictReader(open(carpeta / "meta.csv")))
    assert len(meta) == 3 and {"image_name", "circuito", "sentido", "tipo", "x", "y", "cte", "v_real", "kappa", "curva", "segmento"} <= set(meta[0])
    assert meta[0]["circuito"] == "montmelo" and meta[0]["sentido"] == "1" and meta[0]["tipo"] == "limpio"
    assert meta[0]["curva"] == "12" and meta[0]["segmento"] == "3"


def test_descartado_no_escribe(tmp_path):
    g = Grabador(tmp_path, "montmelo", 1, "reinicio")
    assert g.escribir(imagen(), 5.0, 0.0, meta_ok(t_desde_reinicio=0.5)) is False
    g.cerrar()
    carpeta = next(tmp_path.iterdir())
    assert len(list(csv.reader(open(carpeta / "data.csv")))) == 1
    assert list((carpeta / "imagenes").glob("*.png")) == []


def test_cada_50_guarda_completa(tmp_path):
    g = Grabador(tmp_path, "montmelo", 1, "limpio")
    for k in range(49):
        g.escribir(imagen(k), 5.0, 0.0, meta_ok())
    carpeta = next(tmp_path.iterdir())
    assert list((carpeta / "completas").glob("*.png")) == []
    g.escribir(imagen(49), 5.0, 0.0, meta_ok())
    g.cerrar()
    completas = list((carpeta / "completas").glob("*.png"))
    assert len(completas) == 1 and cv2.imread(str(completas[0])).shape == (480, 640, 3)


def test_no_sobrescribe(tmp_path):
    a = Grabador(tmp_path, "montmelo", -1, "ruido")
    b = Grabador(tmp_path, "montmelo", -1, "ruido")
    a.cerrar(); b.cerrar()
    nombres = sorted(p.name for p in tmp_path.iterdir())
    assert nombres == ["montmelo_s-1_ruido_0", "montmelo_s-1_ruido_1"]


def test_carpetas_borrables_por_otro_usuario(tmp_path):
    """El contenedor corre como root: sus carpetas deben poder borrarse desde el anfitrión."""
    import stat
    g = Grabador(tmp_path, "montmelo", 1, "limpio")
    g.cerrar()
    for sub in ("", "imagenes", "completas"):
        modo = stat.S_IMODE((g.carpeta / sub).stat().st_mode)
        assert modo == 0o777, (sub, oct(modo))


def test_las_filas_son_legibles_sin_cerrar(tmp_path):
    """Si el nodo muere, lo grabado hasta ese momento debe estar en disco (diagnóstico y reanudación)."""
    g = Grabador(tmp_path, "montmelo", 1, "limpio")
    g.escribir(imagen(), 5.0, 0.1, meta_ok())
    carpeta = g.carpeta
    assert len(list(csv.reader(open(carpeta / "data.csv")))) == 2
    assert len(list(csv.reader(open(carpeta / "meta.csv")))) == 2


def test_imagen_red_otras_resoluciones():
    x = imagen(7)
    for tam in ((32, 24), (64, 48)):
        y = imagen_red(x, tam)
        assert y.shape == (tam[1], tam[0], 3)
        assert np.array_equal(y, cv2.resize(x, tam, interpolation=cv2.INTER_LINEAR)[..., ::-1])


def test_guarda_varias_resoluciones(tmp_path):
    g = Grabador(tmp_path, "montmelo", 1, "limpio", resoluciones=((16, 12), (32, 24), (64, 48)))
    g.escribir(imagen(3), 5.0, 0.0, meta_ok())
    g.cerrar()
    c = g.carpeta
    assert cv2.imread(str(next((c / "imagenes").glob("*.png")))).shape == (12, 16, 3)           # la de siempre
    assert cv2.imread(str(next((c / "imagenes_32x24").glob("*.png")))).shape == (24, 32, 3)
    assert cv2.imread(str(next((c / "imagenes_64x48").glob("*.png")))).shape == (48, 64, 3)
    import stat
    assert stat.S_IMODE((c / "imagenes_32x24").stat().st_mode) == 0o777


def test_por_defecto_solo_16x12(tmp_path):
    g = Grabador(tmp_path, "montmelo", 1, "limpio"); g.cerrar()
    assert not (g.carpeta / "imagenes_32x24").exists()
