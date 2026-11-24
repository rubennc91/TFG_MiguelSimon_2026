# Dataset de conducción con un experto geométrico en Gazebo: diseño

Estado: **borrador pendiente de aprobación** (20/11/2026). Alcance: generar el dataset. El reentrenamiento del MLP y la
nueva síntesis en FINN/Verilator quedan fuera y se tratan después.

## Intención y motivo
La red actual (MLP de 27k parámetros, w4a8) lleva el coche a ~5 m/s casi siempre y se atasca en la horquilla de Montmeló
(`x≈104, y≈-3`). Esto no es un problema del bucle de control. El dataset de JdeRobot, `montmelo_holonomic`
(7.294 fotogramas), tiene **`v` = 5 exactamente en el 94 %** de los fotogramas: no hay nada que enseñe a frenar. Solo el 5 %
supera 6 m/s (casi todo 13 m/s) y el 2 % baja de 4 m/s.
Se quiere un dataset nuevo, generado en Gazebo, donde la velocidad y el giro **varíen de forma coherente con el circuito** y
donde haya **situaciones difíciles y su recuperación**, para reentrenar una red más robusta.

## Objetivos
1. Un experto que conduce por la línea central de un circuito y **frena en curvas y acelera en rectas** (hecho como
   prototipo en Montmeló: ver «Estado de partida»).
2. Etiquetas `v`, `w` limpias (las del experto) con imágenes de la cámara del coche, **en el mismo formato y con el mismo
   preprocesado que usa la red en la simulación**.
3. Varios circuitos y ambos sentidos, con **una sola política de velocidad coherente**: `v` es función de lo que ve la cámara.
4. Situaciones difíciles: errores de trayectoria, poses extremas y entradas demasiado rápidas en curva, con la orden
   correctora como etiqueta.
5. Un circuito **reservado para validar** que la red entrenada generaliza.

## No objetivos
- Reentrenar, cuantizar o sintetizar la red (siguiente fase).
- Cambiar el modelo del coche, el mundo o la cámara de Gazebo.
- Conducción visual o reactiva: el experto usa la posición real del coche, no la imagen.
- Reproducir el dataset de JdeRobot ni mezclarlo con él (se puede decidir después).

## Antiobjetivos (fallos aunque «funcione»)
- Que la red aprenda ruido: **las perturbaciones se aplican al coche, nunca a la etiqueta**.
- Etiquetas incoherentes: la red solo ve la imagen de 16×12 y no sabe en qué vuelta va, así que si la misma recta se etiqueta con
  6 m/s en una vuelta y 12 en otra, aprende la media sin ganar nada. Por eso **no se sortea `vmax` por vuelta**.
- Que casi todo el dataset sea de una velocidad sin curvas cerradas ni frenadas (el original: `v`=5 en el 94 %).
- Etiquetas de tramos en que el coche estaba atascado o chocando (ver filtros).
- Imágenes con un preprocesado distinto al de inferencia.

## Estado de partida (medido)
- Coche: modelo **holonómico** (`mode:=holo`, el mismo del dataset original). Cuerpo único de **0,99 × 0,36 m**; se manda con
  `/cmd_vel` (`v` lineal, `w` angular) y se lee su posición en `/odom` (referencia del mundo).
- Montmeló: línea central extraída de la malla de asfalto del propio modelo (~765 m, pista de ~3,2 m, radio mínimo ~3 m).
  Holgura mínima a la pared con la línea corregida: 0,90 m (con el suavizado ingenuo era 0,35 m y el coche se quedaba
  atascado en el S de `x≈103, y≈-2`).
- Experto (prototipo en `~/f1_ws/experto/`): persecución de puntos sobre la línea central; perfil
  `v(s) = min(vmax, √(alat/|k|))` con límites de aceleración (3 m/s²) y frenada (4 m/s²) hacia delante y hacia atrás.
  Resultado con vmax=10, alat=4: 2 vueltas de 90 s cada una, `v` de 3,5 a 10 m/s, `w` de -1,7 a 1,6 rad/s, error lateral
  máximo 0,24 m, sin atascos (con y sin ventanas).
- Formato del dataset original: `data.csv` (`image_name,v,w`) + PNG de 16×12 RGB. La red normaliza `v` en [-1, 14] y
  `w` en [-4, 4]. En la simulación, el controlador reduce la imagen de 640×480 a 16×12 con `cv::resize` (`INTER_LINEAR`) y
  envía 576 bytes RGB planares.
- Circuitos disponibles en la imagen de ROS (con lanzador): Montmeló, Montreal, Nürburgring, Spa, `simple_circuit`, Monaco.
  Solo Montmeló está probado. Gazebo ofrece `/world/default/set_pose`, así que se puede reposicionar el coche en marcha.

## Enfoques considerados (para las situaciones difíciles)
| Enfoque | Qué hace | Ventaja | Inconveniente |
|---|---|---|---|
| A. Ruido durante la conducción | Se ejecuta la orden del experto más una perturbación aleatoria de giro y velocidad; se graba la orden limpia | Continuo y estándar; muestra la recuperación | Casi no llega a poses extremas |
| B. Reinicios en poses difíciles | Se recoloca el coche con posición, ángulo y velocidad aleatorios y el experto conduce unos segundos | Cubre casos extremos y entradas rápidas en curva | Datos más «artificiales» al principio de cada tramo |
| **C. A + B (elegido)** | Ambos | Cubre lo normal y lo extremo | Más trabajo y más parámetros |

Elegido por el usuario el 20/11/2026: **C, varios circuitos, ambos sentidos, un circuito reservado para validar, política de
velocidad única y muchas repeticiones de curvas con variación.**

## Diseño

### Circuitos
- **Entrenamiento:** Montmeló, Montreal, `simple_circuit` y, si la extracción funciona, Monaco.
- **Validación (reservado):** **Nürburgring**. *(Decisión mía.)* Propuse Spa al principio, pero su mundo coloca el modelo
  en `z=-1000` y no sé cómo se carga; Nürburgring tiene el mismo tipo de malla que Montmeló (`Asphalt_New`, `pared.stl`).
- Spa se añade más tarde si se aclara su carga.
- Cada circuito: extraer línea central (método del prototipo), medir ancho, longitud, radio mínimo y holgura, y definir la
  pose de salida. **Un circuito entra en el dataset solo si el experto da 2 vueltas seguidas en cada sentido.**

### Experto
Se parte del prototipo. Política única: `vmax`=12 m/s y `alat`=5 m/s² *(decisión acordada el 20/11/2026)*. Medido en Montmeló: vuelta de 83 s,
`v` de 3,9 a 12, error lateral máximo 0,25 m. El experto aguanta hasta `vmax`=14 y `alat`=9 sin atascos (límite del
simulador no alcanzado); el techo real lo pone la red (`v` normalizada en [-1, 14], recorte del controlador en 13) y el
retraso del lazo (cámara 20 Hz + ~25 ms de inferencia ≈ 0,9 m recorridos a 12 m/s, frente a una holgura de 0,9-1,5 m a la
pared; este último dato es un cálculo, no una medida). La orden se limita a `v` ∈ [-1, 13] y `w` ∈ [-4, 4].

### Situaciones difíciles
- **A (ruido):** perturbación suave y correlacionada en el tiempo sobre `w` (y algo sobre `v`) que desvía el coche hasta
  ±1,0 m de la línea; el experto corrige desde el estado real. Etiqueta = orden del experto **sin** la perturbación.
- **B (reinicios):** `set_pose` a una pose aleatoria: desplazamiento lateral hasta ±1,2 m, error de rumbo hasta ±40° y
  velocidad inicial aleatoria.
- **Repeticiones de curvas:** la mayor parte de los reinicios se colocan 15-30 m antes de una curva (|k| > 0,15) y el experto
  la recorre. Cada repetición varía desplazamiento, rumbo y velocidad de entrada (hasta ~30 % por encima de la que daría el
  experto, para tener entradas demasiado rápidas con la frenada como etiqueta). Repetir la misma entrada no aporta nada.
  Se fija un mínimo de repeticiones por curva y un máximo de fotogramas de curva, para que la red no frene de más en rectas.
- Mezcla indicativa por circuito y sentido: 30 % conducción limpia, 25 % con ruido, 45 % con reinicios (la mayoría en
  curvas). A ajustar tras ver las estadísticas.

### Grabación
- Un nodo graba la imagen de `/cam_f1_left/image_raw` y la etiqueta calculada con la pose de `/odom` más cercana al sello
  de tiempo de la imagen.
- **Imagen:** misma operación que la red en simulación: BGR→reducir a 16×12 con `INTER_LINEAR`→RGB, guardada en PNG. *(Decisión
  mía.)* Además se guarda un fotograma de 640×480 cada 50 para revisar a ojo.
- **CSV:** `image_name, v, w` (compatible con el dataset original) y un CSV auxiliar con circuito, sentido, tipo de
  situación (limpio/ruido/reinicio), posición, error lateral y velocidad real.
- **Filtros:** se descartan los fotogramas con el coche parado (v real < 0,3 con v ordenada > 2), error lateral > 1,4 m,
  o los 2 s tras un reinicio.
- Salida **fuera del repositorio** (por tamaño, p. ej. `~/datasets/experto_f1/`). En el repositorio solo se versionan el
  código, la configuración y un informe de estadísticas. *(Decisión mía.)*

### Criterios de éxito del dataset
1. Experto: 2 vueltas sin atascos en cada sentido de cada circuito de entrenamiento.
2. Velocidad: al menos el 15 % de los fotogramas por debajo de 6 m/s; `v` correlaciona con la curvatura que viene (a más
   curvatura, menos `v`); las curvas con |k| > 0,2 se recorren por debajo de 5 m/s. *(Sustituye al criterio de histograma
   plano, que no medía lo que importa; el original: 94 % en `v`=5.)*
3. Giro: `|w|` > 1 en al menos el 10 % de los fotogramas y desviación típica de `w` ≥ 0,6.
4. Formato: un PNG de 16×12 por fila, mismo orden de canales y reducción que el controlador (comprobado comparando contra el
   controlador sobre una misma imagen).
5. Tamaño objetivo: del orden de 150.000 fotogramas (a 20 Hz son ~2 h de simulación en tiempo real).

### Validación posterior (fuera de este diseño)
Reentrenar y ejecutar la red en **Nürburgring**: éxito = una vuelta sin intervención. Comparar con la red actual.

## Restricciones
- La simulación va a tiempo real (factor ≈ 1,0) y la cámara publica a ~20 Hz.
- Disco: 220 GB libres el 20/11/2026.
- Misma imagen Docker y mismo `lanzar_todo.sh`; el modo experto se activa con `EXPERTO=1 MODO=holo`.

## Decisiones que quedan para quien lo construya
- Parámetros finos (ruido, rangos de sorteo, mezcla, periodo de los reinicios).
- Cómo aislar varias simulaciones en paralelo (dominio de ROS y partición de Gazebo) para ir más rápido, si se quiere.
- Pose de salida y ajustes de extracción por circuito (Monaco, Spa).
- Si conviene acelerar la simulación por encima del tiempo real.
- Mínimo de repeticiones por curva y cuota máxima de fotogramas de curva.
- **La separación entre entrenamiento y validación se hace por circuito, no por fotograma** (fotogramas contiguos son casi
  idénticos y mezclarlos falsea la validación).

## Riesgos conocidos
- Monaco y Spa pueden no ser extraíbles con el método actual.
- Una pared de colisión distinta del asfalto en algún circuito (comprobar con `pared.stl` como en Montmeló).
- Que `set_pose` deje velocidad residual en el coche: hay que fijar la velocidad tras recolocar.
