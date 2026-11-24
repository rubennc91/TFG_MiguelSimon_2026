#!/usr/bin/env python3
"""Orquestador del anfitrión: lanza Gazebo con el nodo generador, circuito a circuito, hasta reunir las filas pedidas.

    python -m generador_experto.generar --total 150000 --mezcla 0.30,0.25,0.45 [--circuitos montmelo,montreal,simple]
    python -m generador_experto.generar --validacion --total 30000          # circuito reservado (nurburgring)
"""
import argparse
import json
import os
import re
import subprocess
import sys
import time
from dataclasses import dataclass
from pathlib import Path

MODOS = ("limpio", "ruido", "reinicio")
ENTRENAMIENTO = ("montmelo", "montreal", "simple")     # Monaco queda fuera por defecto (pista ~3x más ancha)
VALIDACION = ("nurburgring",)
LANZADOR = Path(__file__).resolve().parents[2] / "04_ros2_gazebo" / "lanzar_todo.sh"


@dataclass(frozen=True)
class Tarea:
    circuito: str
    sentido: int
    modo: str
    semilla: int
    args: str          # EXPERTO_ARGS para lanzar_todo.sh


def siguiente_tarea(filas: dict, circuitos: list, mezcla: dict, semilla: int,
                    vueltas: int = 2, duracion_reinicio: int = 300, duracion_vueltas: int = 600) -> Tarea:
    """Elige el modo más por debajo de su cuota y, dentro de él, el (circuito, sentido) con menos filas."""
    combos = [(c, s) for c in circuitos for s in (1, -1)]
    validas = {k: v for k, v in filas.items() if (k[0], k[1]) in combos}
    total = max(sum(validas.values()), 1)
    por_modo = {m: sum(v for k, v in validas.items() if k[2] == m) for m in MODOS}
    elegibles = [m for m in MODOS if mezcla.get(m, 0.0) > 0]          # cuota 0 = modo desactivado
    if not elegibles:
        raise ValueError("la mezcla no activa ningún modo")
    modo = max(elegibles, key=lambda m: (mezcla[m] * total - por_modo[m], -MODOS.index(m)))
    circuito, sentido = min(combos, key=lambda cs: (validas.get((cs[0], cs[1], modo), 0), combos.index(cs)))
    if modo == "reinicio":
        args = f"--modo reinicio --duracion {duracion_reinicio} --semilla {semilla}"
    else:
        args = f"--modo {modo} --vueltas {vueltas} --duracion {duracion_vueltas} --semilla {semilla}"   # el tope garantiza el resumen
    return Tarea(circuito, sentido, modo, semilla, args)


_CARPETA = re.compile(r"^(.+)_s([+-]\d+)_(limpio|ruido|reinicio)_(\d+)$")


def contar_filas(destino: Path) -> dict:
    """Filas grabadas en disco por (circuito, sentido, modo), también de tareas que no llegaron a terminar."""
    filas = {}
    for c in sorted(Path(destino).iterdir()):
        m = _CARPETA.match(c.name)
        csv_ = c / "data.csv"
        if not m or not csv_.exists():
            continue
        n = max(sum(1 for _ in open(csv_)) - 1, 0)           # sin la cabecera
        clave = (m.group(1), int(m.group(2)), m.group(3))
        filas[clave] = filas.get(clave, 0) + n
    return filas


def tareas_de_completar(est: dict, esperadas: dict, min_rep: int, semilla: int, duracion: int = 300) -> list:
    """Una tarea de reinicios dirigidos por (circuito, sentido) con curvas por debajo de `min_rep` repeticiones."""
    tareas = []
    for (circuito, sentido), curvas in sorted(esperadas.items()):
        faltan = [i for i in curvas if est["repeticiones_por_curva"].get(f"{circuito}|{sentido}|{i}", 0) < min_rep]
        if faltan:
            args = f"--modo reinicio --duracion {duracion} --curvas {','.join(map(str, faltan))} --semilla {semilla + len(tareas)}"
            tareas.append(Tarea(circuito, sentido, "reinicio", semilla + len(tareas), args))
    return tareas


def curvas_mas_agudas(experto, n: int) -> list:
    """Las `n` curvas (entradas fusionadas) con mayor curvatura en los 30 m siguientes a la entrada."""
    import numpy as np
    from generador_experto.perturbaciones import SEPARACION_CURVAS, entradas_de_curva
    ent = [int(i) for i in entradas_de_curva(experto.kappa, SEPARACION_CURVAS)]
    agudeza = {i: float(np.abs(experto.kappa[np.arange(i, i + SEPARACION_CURVAS) % experto.n]).max()) for i in ent}
    return sorted(sorted(ent, key=lambda i: -agudeza[i])[:n])


def nombre_contenedor(env) -> str:
    """Contenedor de la simulación: f1_gazebo, o f1_gazebo_<N> si se usa INSTANCIA=<N> (simulaciones en paralelo)."""
    n = env.get("INSTANCIA", "")
    return f"f1_gazebo_{n}" if n else "f1_gazebo"


def analizar_resumen(linea: str):
    m = re.search(r"RESUMEN: (\d+) filas.*atascos (\d+), reinicios (\d+) \(mal (\d+)\)", linea)
    if not m:
        return None
    return dict(filas=int(m.group(1)), atascos=int(m.group(2)), reinicios=int(m.group(3)), reinicios_mal=int(m.group(4)))


def ejecutar_tarea(t: Tarea, destino: Path, espera_max: int = 1500, extra: str = ""):
    """Lanza Gazebo con la tarea y devuelve el resumen del nodo (o None si no terminó)."""
    env = dict(os.environ, CIRCUITO=t.circuito, SENTIDO=str(t.sentido), DATOS=str(destino), EXPERTO="1",
               MODO="holo", NO_GUI="1", EXPERTO_ARGS=(t.args + " " + extra).strip())
    subprocess.run([str(LANZADOR), "stop"], capture_output=True)
    subprocess.run([str(LANZADOR)], env=env, capture_output=True, timeout=300)
    resumen = None
    for _ in range(espera_max // 5):
        time.sleep(5)
        out = subprocess.run(["docker", "exec", nombre_contenedor(os.environ), "grep", "RESUMEN", "/tmp/experto.log"], capture_output=True, text=True)
        if out.stdout.strip():
            resumen = analizar_resumen(out.stdout.strip().splitlines()[-1])
            break
    subprocess.run([str(LANZADOR), "stop"], capture_output=True)
    return resumen


def main(argv=None):
    from generador_experto.estadisticas import calcular, comprobar_criterios, comprobar_cuotas
    from generador_experto.circuito import Circuito
    from generador_experto.experto import Experto
    from generador_experto.perturbaciones import SEPARACION_CURVAS, entradas_de_curva

    p = argparse.ArgumentParser()
    p.add_argument("--total", type=int, default=150000)
    p.add_argument("--mezcla", default="0.30,0.25,0.45", help="limpio,ruido,reinicio")
    p.add_argument("--circuitos", default=None)
    p.add_argument("--validacion", action="store_true")
    p.add_argument("--destino", default=str(Path.home() / "datasets" / "experto_f1"))
    p.add_argument("--completar", action="store_true", help="solo reinicios dirigidos hasta cumplir las cuotas de curvas y el 15 %% de filas lentas")
    p.add_argument("--resoluciones", default="16x12", help="resoluciones de imagen a guardar, p. ej. 16x12,32x24,64x48")
    p.add_argument("--pesos", default="", help="DAgger: pesos .npz (rutas en el contenedor, separadas por comas)")
    p.add_argument("--resolucion-red", default="16x12")
    p.add_argument("--vueltas", type=int, default=2)
    p.add_argument("--duracion-reinicio", type=int, default=300)
    p.add_argument("--duracion-vueltas", type=int, default=600, help="tope de s de simulación en limpio/ruido")
    a = p.parse_args(sys.argv[1:] if argv is None else argv)
    circuitos = a.circuitos.split(",") if a.circuitos else list(VALIDACION if a.validacion else ENTRENAMIENTO)
    if not a.validacion and set(circuitos) & set(VALIDACION):
        sys.exit(f"{VALIDACION} está reservado para validar: no puede entrar en el entrenamiento")
    mezcla = dict(zip(MODOS, map(float, a.mezcla.split(","))))
    destino = Path(a.destino) / ("validacion" if a.validacion else "entrenamiento")
    destino.mkdir(parents=True, exist_ok=True)

    estado_f = destino / "estado.json"       # reanudar: no se repite lo ya grabado
    semilla, historial = 0, []
    extra_nodo = f"--resoluciones {a.resoluciones}" + (f" --pesos {a.pesos} --resolucion-red {a.resolucion_red}" if a.pesos else "")
    if estado_f.exists():
        e = json.loads(estado_f.read_text())
        semilla, historial = e["semilla"], e["historial"]
    filas = contar_filas(destino)           # la verdad está en disco: reanudar y tareas cortadas cuentan lo grabado
    def esperadas_de(circs):
        out = {}
        for c in circs:
            circ = Circuito.cargar(Path(__file__).resolve().parent / "datos" / "circuitos" / f"{c}.npz")
            for s in (1, -1):
                out[(c, s)] = [int(i) for i in entradas_de_curva(Experto(circ, sentido=s).kappa, SEPARACION_CURVAS)]
        return out

    if a.completar:                          # reinicios dirigidos: cuotas de curvas y, después, filas lentas
        esperadas = esperadas_de(circuitos)
        for ronda in range(10):
            est = calcular([destino])
            tareas = tareas_de_completar(est, esperadas, 30, semilla, a.duracion_reinicio)
            if not tareas and est["frac_v_menor_6"] < 0.15:
                tareas = [Tarea(c, s, "reinicio", semilla + k, f"--modo reinicio --duracion {a.duracion_reinicio} --curvas "
                                + ",".join(map(str, curvas_mas_agudas(Experto(Circuito.cargar(Path(__file__).resolve().parent / 'datos' / 'circuitos' / f'{c}.npz'), sentido=s), 3)))
                                + f" --semilla {semilla + k}") for k, (c, s) in enumerate(sorted(esperadas))]
            if not tareas:
                break
            print(f"ronda {ronda + 1}: {len(tareas)} tareas dirigidas", flush=True)
            for t in tareas:
                res = ejecutar_tarea(t, destino, extra=f"--resoluciones {a.resoluciones}")
                semilla = max(semilla, t.semilla + 1)
                historial.append(dict(tarea=t.__dict__, resumen=res))
                print(f"  {t.circuito} {t.sentido:+d} {t.args}: {res}", flush=True)
                estado_f.write_text(json.dumps(dict(semilla=semilla, historial=historial)))
        filas = contar_filas(destino)
        a.total = 0                          # no añadir más filas generales
    while sum(filas.values()) < a.total:
        t = siguiente_tarea(filas, circuitos, mezcla, semilla, a.vueltas, a.duracion_reinicio, a.duracion_vueltas)
        semilla += 1
        res = ejecutar_tarea(t, destino, extra=extra_nodo)
        historial.append(dict(tarea=t.__dict__, resumen=res))
        filas = contar_filas(destino)
        print(f"{sum(filas.values())}/{a.total}  {t.circuito} {t.sentido:+d} {t.modo}: {res}", flush=True)
        estado_f.write_text(json.dumps(dict(semilla=semilla, historial=historial)))

    est = calcular([destino])
    esperadas = esperadas_de(circuitos)
    fallos = comprobar_criterios(est) + comprobar_cuotas(est, esperadas)
    informe = destino / "informe.md"
    informe.write_text("# Informe del dataset\n\n```json\n" + json.dumps({k: v for k, v in est.items() if k != "repeticiones_por_curva"}, indent=2, ensure_ascii=False)
                       + "\n```\n\n" + ("**Cumple todos los criterios.**\n" if not fallos else "**Fallos:**\n" + "\n".join(f"- {f}" for f in fallos) + "\n"))
    print(f"informe: {informe}  fallos: {len(fallos)}")
    return 1 if fallos else 0


if __name__ == "__main__":
    sys.exit(main())
