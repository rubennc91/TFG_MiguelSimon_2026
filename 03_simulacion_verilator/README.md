# 03 · Simulación con Verilator
- `salida_finn_mlp27k_w4a8/`: salida de FINN (`output_rebuild_mlp27k_w4a8_ft_clean`): IP, informes, modelos intermedios. La simulación está en `stitched_ip/verilator_sim/`: `main.cpp` (servidor UDP, puerto 5005, usado por el controlador ROS), `main_original_antes_udp.cpp` (recorre el dataset y escribe `resultados_verilator.csv`) y `obj_dir/` (se regenera con `make`).
- `bancos_prueba_anteriores/`: bancos de prueba `main.cpp` de intentos previos (`v1`, `v2`), con el wrapper Verilog.

Compilar y ejecutar: ver el apartado 3 y 4 de `../GUIA_EJECUCION.md`.
