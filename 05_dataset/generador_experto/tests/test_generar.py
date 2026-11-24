import pytest

from generador_experto.generar import Tarea, analizar_resumen, contar_filas, siguiente_tarea

MEZCLA = {"limpio": 0.30, "ruido": 0.25, "reinicio": 0.45}
CIRCUITOS = ["a", "b"]


def test_primero_el_modo_mas_atrasado():
    t = siguiente_tarea({}, CIRCUITOS, MEZCLA, semilla=0)
    assert isinstance(t, Tarea) and t.modo == "reinicio"          # el de mayor cuota


def test_elige_el_combo_con_menos_filas_en_ese_modo():
    filas = {("a", 1, "reinicio"): 5000, ("a", -1, "reinicio"): 4000, ("b", 1, "reinicio"): 3000}
    t = siguiente_tarea(filas, CIRCUITOS, {"limpio": 0.0, "ruido": 0.0, "reinicio": 1.0}, semilla=1)
    assert (t.circuito, t.sentido, t.modo) == ("b", -1, "reinicio")   # el que no tiene ninguna fila


def test_mezcla_y_reparto_convergen():
    filas, semilla = {}, 0
    for _ in range(300):
        t = siguiente_tarea(filas, CIRCUITOS, MEZCLA, semilla=semilla)
        semilla += 1
        filas[(t.circuito, t.sentido, t.modo)] = filas.get((t.circuito, t.sentido, t.modo), 0) + 1000
    total = sum(filas.values())
    for m, f in MEZCLA.items():
        assert abs(sum(v for (c, s, mo), v in filas.items() if mo == m) / total - f) < 0.03
    por_combo = [sum(v for (c, s, mo), v in filas.items() if (c, s) == combo) for combo in [("a", 1), ("a", -1), ("b", 1), ("b", -1)]]
    assert max(por_combo) / min(por_combo) < 1.3


def test_solo_usa_los_circuitos_pedidos():
    filas = {("zzz", 1, "limpio"): 10 ** 6}                        # un circuito ajeno no cuenta ni se elige
    for k in range(40):
        t = siguiente_tarea(filas, ["a"], MEZCLA, semilla=k)
        assert t.circuito == "a"


def test_argumentos_segun_el_modo():
    r = siguiente_tarea({}, CIRCUITOS, {"limpio": 0, "ruido": 0, "reinicio": 1.0}, semilla=7, duracion_reinicio=240)
    assert "--modo reinicio" in r.args and "--duracion 240" in r.args and "--semilla 7" in r.args and "--vueltas" not in r.args
    l = siguiente_tarea({}, CIRCUITOS, {"limpio": 1.0, "ruido": 0, "reinicio": 0}, semilla=3, vueltas=2)
    assert "--modo limpio" in l.args and "--vueltas 2" in l.args and "--semilla 3" in l.args
    assert "--duracion 600" in l.args          # tope de tiempo: toda tarea termina y devuelve resumen
    n = siguiente_tarea({}, CIRCUITOS, {"limpio": 0, "ruido": 1.0, "reinicio": 0}, semilla=1)
    assert "--duracion 600" in n.args


def test_analizar_resumen():
    linea = "[INFO] [1.0] [generador_dataset]: RESUMEN: 1338 filas, descartes {'parado': 1}, imágenes vistas 1340, atascos 2, reinicios 0 (mal 0), huecos>0,11s 50, callback máx 12 ms, carpeta /datos/x"
    assert analizar_resumen(linea) == dict(filas=1338, atascos=2, reinicios=0, reinicios_mal=0)
    assert analizar_resumen("nada") is None


def test_modo_con_cuota_cero_no_se_elige_nunca():
    for k in range(20):
        assert siguiente_tarea({}, CIRCUITOS, {"limpio": 0.0, "ruido": 0.0, "reinicio": 1.0}, semilla=k).modo == "reinicio"


def test_mezcla_vacia_falla():
    with pytest.raises(ValueError):
        siguiente_tarea({}, CIRCUITOS, {"limpio": 0.0, "ruido": 0.0, "reinicio": 0.0}, semilla=0)


def escribir_data(carpeta, filas):
    carpeta.mkdir(parents=True)
    (carpeta / "data.csv").write_text("image_name,v,w\n" + "".join(f"{i:06d}.png,5,0\n" for i in range(filas)))


def test_contar_filas_desde_disco(tmp_path):
    escribir_data(tmp_path / "montmelo_s+1_limpio_0", 3)
    escribir_data(tmp_path / "montmelo_s+1_limpio_1", 2)            # otra carpeta del mismo combo: se suman
    escribir_data(tmp_path / "simple_s-1_reinicio_0", 5)
    (tmp_path / "montreal_s+1_ruido_0").mkdir()                     # sin data.csv: se ignora
    escribir_data(tmp_path / "carpeta_rara", 9)                     # nombre ajeno: se ignora
    assert contar_filas(tmp_path) == {("montmelo", 1, "limpio"): 5, ("simple", -1, "reinicio"): 5}


def test_contar_filas_cuenta_lo_grabado_aunque_la_tarea_no_terminara(tmp_path):
    escribir_data(tmp_path / "montreal_s-1_ruido_3", 40)            # tarea cortada por tiempo: sin resumen, pero con filas
    assert contar_filas(tmp_path)[("montreal", -1, "ruido")] == 40


def test_una_tarea_cortada_no_se_repite_para_siempre():
    """Regresión: tras una tarea sin resumen, el combo ya tiene filas y no se vuelve a elegir de inmediato."""
    filas = {}
    elegidas = []
    for k in range(12):
        t = siguiente_tarea(filas, CIRCUITOS, MEZCLA, semilla=k)
        elegidas.append((t.circuito, t.sentido, t.modo))
        filas[(t.circuito, t.sentido, t.modo)] = filas.get((t.circuito, t.sentido, t.modo), 0) + 40   # lo grabado, aunque corto
    assert max(elegidas.count(e) for e in set(elegidas)) <= 3


def test_tareas_de_completar_solo_donde_faltan_repeticiones():
    from generador_experto.generar import tareas_de_completar
    esperadas = {("a", 1): [10, 50], ("a", -1): [20], ("b", 1): [5]}
    est = dict(repeticiones_por_curva={"a|1|10": 31, "a|1|50": 12, "a|-1|20": 40, "b|1|5": 29})
    t = tareas_de_completar(est, esperadas, min_rep=30, semilla=100)
    assert [(x.circuito, x.sentido, x.modo) for x in t] == [("a", 1, "reinicio"), ("b", 1, "reinicio")]
    assert "--curvas 50" in t[0].args and "--curvas 5" in t[1].args
    assert all("--duracion" in x.args and "--semilla" in x.args for x in t)
    assert t[0].semilla != t[1].semilla


def test_tareas_de_completar_vacio_si_todo_cumple():
    from generador_experto.generar import tareas_de_completar
    assert tareas_de_completar(dict(repeticiones_por_curva={"a|1|10": 30}), {("a", 1): [10]}, min_rep=30, semilla=0) == []


def test_curvas_mas_agudas():
    import numpy as np
    from generador_experto.circuito import Circuito
    from generador_experto.experto import Experto
    from generador_experto.generar import curvas_mas_agudas
    from generador_experto.tests.test_experto import anillo
    c = anillo(40.0)
    k = np.zeros(len(c.kappa)); k[100:104] = 0.20; k[200:204] = 0.35; k[300:304] = 0.25
    e = Experto(Circuito(c.nombre, c.puntos, k, c.holgura, c.salida))
    assert curvas_mas_agudas(e, 2) == [200, 300]


def test_nombre_del_contenedor_segun_la_instancia():
    from generador_experto.generar import nombre_contenedor
    assert nombre_contenedor({}) == "f1_gazebo"
    assert nombre_contenedor({"INSTANCIA": ""}) == "f1_gazebo"
    assert nombre_contenedor({"INSTANCIA": "2"}) == "f1_gazebo_2"
