# Software de la ARM (Zybo Z7) — diseño sin HDMI con reductor + IP de FINN

Cámara OV5640 (720p60) → … → `axis_switch_0` → reductor 32×24 → `axis_switch_1` → { `axi_dma_0` (captura de depuración) | FINN → `axi_dma_1` }.

## Qué hace
- Inicia la cámara (AXI IIC, gamma 1/1,8, AWB avanzado, 720p60). **El reductor espera 1280×720**: no usar otros modos.
- Deja `axis_switch_0` con la entrada 0 → M1 (reductor) y `axis_switch_1` con la entrada 0 → M1 (FINN). El VDMA queda aislado (no se usa sin HDMI).
- Mantiene `axi_dma_1` armado con 4 bytes: cada trama de la cámara produce un resultado (2 palabras `int16` con signo, v y w en forma entera, sin TLAST; el DMA acaba al recibir los 4 bytes).
- Reescala con `FINN_MUL`/`FINN_ADD` (`finn_params_{cnn,mlp}.h`, generados del modelo padre de FINN con `generar_parametros.py`), satura a [0, 1] y decodifica `v ∈ [-0,6, 13]`, `w ∈ [-π, π]` igual que el servidor del simulador.

## Menú UART (115200 8N1)
`r` salida continua (v, w) a N Hz · `+`/`-` cambia N (1–30, por defecto 10) · `m` última inferencia · `i` captura la imagen reducida (IMG_START … IMG_END, 2304 bytes, para comparar con `capture_hls.py` adaptado a 32×24) · `g` gamma · `s` resultados por segundo.

## Cargar en la placa (sin probar)
`./programar.sh ../resultados/z7-20_cnn_cq4s6` (o `z7-20_mlp_q4s0`) carga el `.bit` y el `finn_app.elf` ya compilados por JTAG; después abre la UART a 115200 8N1.

## Compilar (Vitis 2022.2, sin GUI)
```
./compilar.sh ../resultados/z7-20_cnn_cq4s6/system_v2_wrapper.xsa cnn /tmp/sw_cnn   # o mlp con z7-20_mlp_q4s0
# → /tmp/sw_cnn/ws/finn_app/Debug/finn_app.elf  (se carga con el .bit del mismo directorio de resultados; ya hay uno compilado en cada directorio de resultados)
```

## Diferencias con el software original (`hw_pcam_5c/sw_wspace/pcam_hdmi_finn`)
1. **I2C de la cámara**: el diseño `system_v2` usa el **AXI IIC** (`axi_iic_0`, 0x40800000); el software original (plataforma `hw_pcam`, de otro `.xsa`) usaba el I2C de la PS. Nuevo `ov5640/AXI_IIC.h` (sondeo, `XIic_DynSend/DynRecv`).
2. Sin HDMI ni VDMA (`VideoOutput.h` eliminado del include de `OV5640.h`).
3. Dos DMA y dos conmutadores (`XPAR_AXIDMA_0/1`, `XPAR_AXIS_SWITCH_0/1`).
4. Cámara en 720p60 (el original arrancaba en 1080p).

## Sin probar en placa
Compila y enlaza; **no se ha ejecutado en hardware**. Puntos a vigilar en la primera prueba: que el AXI IIC detecte la OV5640 (ID 0x5640), que `s` dé ~60 resultados/s, orden de colores del reductor (`ENTRADA_ROJO_EN_ALTO`), que la ruta de `axis_switch_1` solo cambie al final de la trama (la captura `i` no desalinee FINN; si pasara, reiniciar la aplicación).
