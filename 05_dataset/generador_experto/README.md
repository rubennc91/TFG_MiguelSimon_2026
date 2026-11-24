# generador_experto

Genera en Gazebo un dataset de conducción (imágenes de 16×12 + `v`, `w`) con un experto geométrico que sigue la línea central
del circuito y frena en las curvas. Diseño: `docs/superpowers/specs/2026-11-20-dataset-experto-design.md`.

## Piezas
| Fichero | Qué hace | Dónde corre |
|---|---|---|
| `circuito.py` | extrae la línea central de la malla de asfalto (`.dae`) → `datos/circuitos/<nombre>.npz` | anfitrión |
| `experto.py` | persecución de puntos + perfil de velocidad por curvatura (`vmax`=12, `alat`=5) | contenedor |
| `perturbaciones.py` | ruido (Ornstein-Uhlenbeck) y poses de reinicio antes de curvas | contenedor |
| `grabador.py` | imagen 16×12 como la de la red (`INTER_LINEAR`), filtros, `data.csv` + `meta.csv` | contenedor |
| `nodo_generador.py` | nodo ROS 2: conduce, perturba y graba (`--modo limpio|ruido|reinicio`) | contenedor |
| `estadisticas.py` | estadísticas y criterios de éxito (velocidad, giro, cuotas de curvas) | anfitrión |
| `generar.py` | lanza Gazebo circuito a circuito hasta reunir las filas pedidas | anfitrión |

## Uso
```bash
python3 -m venv ~/.venvs/generador && ~/.venvs/generador/bin/pip install numpy scipy scikit-image opencv-python-headless pytest
cd 05_dataset && ~/.venvs/generador/bin/python -m pytest generador_experto/tests -q          # tests (sin Gazebo)

# extraer un circuito nuevo (prefijo del material de asfalto del .dae)
python -m generador_experto.circuito <malla.dae> <nombre> <prefijo_asfalto>

# una prueba suelta (modo holonómico, sin ventanas, 2 vueltas limpias)
CIRCUITO=montmelo SENTIDO=1 EXPERTO=1 MODO=holo NO_GUI=1 EXPERTO_ARGS="--modo limpio --vueltas 2" 04_ros2_gazebo/lanzar_todo.sh

# el dataset completo y el conjunto de validación (circuito reservado)
python -m generador_experto.generar --total 150000 --mezcla 0.30,0.25,0.45
python -m generador_experto.generar --validacion --total 30000
```
Salida: `~/datasets/experto_f1/{entrenamiento,validacion}/<circuito>_s±1_<modo>_<n>/{data.csv,meta.csv,imagenes/,completas/}`
y un `informe.md` con los criterios de éxito. `generar.py` guarda su estado en `estado.json` y se puede reanudar.

## Circuitos
`montmelo`, `montreal`, `simple` (entrenamiento); `nurburgring` (reservado para validar); `monaco` (extraído, fuera del
entrenamiento por defecto: la pista es ~3 veces más ancha que la de Montmeló).
