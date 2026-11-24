# Estimación de recursos FINN de la MLP (21/11/2026)

Método: `lanzar_estimacion.sh` (FINN v0.9 en su imagen Docker, Vitis HLS 2022.2), MLP w4a8 / w4a4 con **pesos aleatorios**
(los recursos no dependen de los pesos), folding mínimo (PE=1; SIMD=1, y SIMD=4 en la primera capa con 2304 entradas porque
FINN exige SIMD ≥ MW/1024), reloj de 10 ns. **Calibración:** la red de 576 entradas w4a8 reproduce exactamente el informe
original (37.387 LUT analíticas, 27.712 ciclos).

Las cifras son la **suma de las estimaciones tras síntesis HLS por capa** (`estimate_layer_resources_hls.json`). No incluyen
FIFOs, conversores de ancho ni el envoltorio AXI, ni el pipeline de visión, y no son post-implementación (Vivado, place & route).
La estimación analítica de FINN (`estimate_layer_resources.json`) difiere hasta 10× de la de HLS y no debe usarse.

| Entrada | Activaciones | Memoria | LUT | FF | BRAM18 | Latencia |
|---|---|---|---|---|---|---|
| 16×12 (576) | 8 bits (diseño actual) | auto | 31.366 | 12.837 | 266 | 277 µs |
| 16×12 (576) | 4 bits | auto | 16.904 | 7.807 | 26 | 277 µs |
| 32×24 (2304) | 8 bits | auto | 52.504 | 27.198 | 290 | 294 µs |
| 32×24 (2304) | 4 bits | auto | 37.920 | 21.860 | 50 | 294 µs |
| 16×12 | 8 bits | forzar BRAM | 24.445 | 12.113 | 393 | 277 µs |
| 16×12 | 4 bits | forzar BRAM | 9.983 | 7.083 | 153 | 277 µs |
| 32×24 | 8 bits | forzar BRAM | 24.820 | 26.474 | 521 | 294 µs |
| 32×24 | 4 bits | forzar BRAM | 10.236 | 21.136 | 281 | 294 µs |

Capacidad: Z7-10 = 17.600 LUT, 35.200 FF, 120 BRAM18, 80 DSP. Z7-20 = 53.200 LUT, 106.400 FF, 280 BRAM18, 220 DSP.

Desglose del diseño 32×24 a 4 bits: la **capa de umbrales de entrada** ocupa 30.956 de 37.920 LUT (82 %); las tres capas
de cálculo suman 6.964 LUT.
