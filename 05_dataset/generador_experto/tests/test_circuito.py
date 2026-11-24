import math
import os
from pathlib import Path

import numpy as np
import pytest

from generador_experto.circuito import Circuito, extraer_circuito

DATOS = Path(__file__).resolve().parent.parent / "datos" / "circuitos"


def escribir_dae_anillo(ruta: Path, r_med: float = 30.0, ancho: float = 3.2, n: int = 240, material: str = "Asphalt_X-material",
                        offsets_compartidos: bool = False):
    """DAE mínimo con un anillo triangulado (z=0) de un único material."""
    ri, ro = r_med - ancho / 2, r_med + ancho / 2
    v = []
    for k in range(n):
        a = 2 * math.pi * k / n
        v += [ri * math.cos(a), ri * math.sin(a), 0.0, ro * math.cos(a), ro * math.sin(a), 0.0]
    p = []
    for k in range(n):
        i0, o0, i1, o1 = 2 * k, 2 * k + 1, (2 * ((k + 1) % n)), (2 * ((k + 1) % n) + 1)
        p += [i0, o0, o1, i0, o1, i1]
    nv = len(v) // 3
    if offsets_compartidos:   # VERTEX y NORMAL en el offset 0, TEXCOORD en el 1: 3 entradas pero zancada 2
        entradas = ('<input semantic="VERTEX" source="#G1-v" offset="0"/><input semantic="NORMAL" source="#G1-n" offset="0"/>'
                    '<input semantic="TEXCOORD" source="#G1-t" offset="1"/>')
        p = [x for i in p for x in (i, 0)]
    else:
        entradas = '<input semantic="VERTEX" source="#G1-v" offset="0"/>'
    ruta.write_text(f"""<?xml version="1.0"?>
<COLLADA xmlns="http://www.collada.org/2005/11/COLLADASchema" version="1.4.1">
<asset><unit name="meter" meter="1"/><up_axis>Z_UP</up_axis></asset>
<library_geometries>
<geometry id="G1-mesh" name="G1"><mesh>
<source id="G1-pos"><float_array id="G1-pos-array" count="{len(v)}">{' '.join(map(str, v))}</float_array>
<technique_common><accessor source="#G1-pos-array" count="{nv}" stride="3"/></technique_common></source>
<vertices id="G1-v"><input semantic="POSITION" source="#G1-pos"/></vertices>
<triangles material="{material}" count="{len(p) // (6 if offsets_compartidos else 3)}">{entradas}<p>{' '.join(map(str, p))}</p></triangles>
</mesh></geometry>
</library_geometries>
<library_visual_scenes><visual_scene id="S">
<node id="N1" name="N1" type="NODE"><matrix sid="transform">1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1</matrix>
<instance_geometry url="#G1-mesh"/></node>
</visual_scene></library_visual_scenes>
</COLLADA>""")


def test_anillo_sintetico(tmp_path):
    dae = tmp_path / "anillo.dae"
    escribir_dae_anillo(dae)
    c = extraer_circuito(dae, ("Asphalt",), "anillo")
    assert abs(len(c.puntos) * 0.5 - 2 * math.pi * 30) / (2 * math.pi * 30) < 0.03
    assert c.holgura.min() >= 1.3
    r = np.hypot(c.puntos[:, 0], c.puntos[:, 1])
    assert abs(r.mean() - 30) < 0.3
    assert abs(np.abs(c.kappa).mean() - 1 / 30) / (1 / 30) < 0.10
    assert c.puntos.shape[1] == 2 and len(c.kappa) == len(c.puntos) == len(c.holgura)


def test_sin_asfalto_falla(tmp_path):
    dae = tmp_path / "anillo.dae"
    escribir_dae_anillo(dae)
    with pytest.raises(ValueError, match="sin triángulos de asfalto"):
        extraer_circuito(dae, ("NoExiste",), "x")


def test_guardar_cargar(tmp_path):
    dae = tmp_path / "anillo.dae"
    escribir_dae_anillo(dae)
    c = extraer_circuito(dae, ("Asphalt",), "anillo")
    c.guardar(tmp_path / "anillo.npz")
    d = Circuito.cargar(tmp_path / "anillo.npz")
    assert d.nombre == "anillo"
    assert np.array_equal(c.puntos, d.puntos) and np.array_equal(c.kappa, d.kappa)
    assert np.array_equal(c.holgura, d.holgura) and tuple(c.salida) == tuple(d.salida)


def test_salida_es_el_indice_cero(tmp_path):
    dae = tmp_path / "anillo.dae"
    escribir_dae_anillo(dae)
    c = extraer_circuito(dae, ("Asphalt",), "anillo")
    x, y, yaw = c.salida
    assert (x, y) == tuple(c.puntos[0])
    t = c.puntos[1] - c.puntos[0]
    assert abs(math.atan2(t[1], t[0]) - yaw) < 0.1


def test_montmelo_regresion():
    c = Circuito.cargar(DATOS / "montmelo.npz")
    assert abs(len(c.puntos) * 0.5 - 734) <= 10
    assert c.holgura.min() >= 1.15
    assert 0.30 <= np.abs(c.kappa).max() <= 0.35


@pytest.mark.skipif("DAE_MONTMELO" not in os.environ, reason="DAE_MONTMELO sin definir")
def test_montmelo_extraccion_real():
    c = extraer_circuito(Path(os.environ["DAE_MONTMELO"]), ("Asphalt",), "montmelo")
    assert abs(len(c.puntos) * 0.5 - 734) <= 10 and c.holgura.min() >= 1.15


def test_offsets_compartidos(tmp_path):
    """COLLADA permite varias entradas con el mismo offset: la zancada es max(offset)+1, no el nº de entradas."""
    dae = tmp_path / "anillo2.dae"
    escribir_dae_anillo(dae, offsets_compartidos=True)
    c = extraer_circuito(dae, ("Asphalt",), "anillo2")
    assert abs(len(c.puntos) * 0.5 - 2 * math.pi * 30) / (2 * math.pi * 30) < 0.03
