# Traspaso: validar la cámara Pcam 5C (OV5640) en la Zybo Z7-20

Documento para empezar una sesión nueva sin partir de cero. Al terminar, devolver los resultados (qué funcionó, qué no, logs) a la sesión del TFG.

## Objetivo
Comprobar que la cámara real entrega tramas MIPI/CSI-2 y que llegan al reductor + FINN (camino de captura), antes del robot físico con la línea roja.

## Qué ya está validado (no repetir)
- Camino de la red con imagen de Gazebo: Ethernet -> DDR -> DMA0 -> reductor bilineal -> FINN -> DMA1. Idéntico píxel a píxel a la referencia; 36 vueltas HIL completadas (3 CNN x 2 circuitos x 2 sentidos x 3 semillas).
- Eso NO usa la cámara: la imagen entra por DDR, no por MIPI.

## Qué falla
- La cámara responde por I2C (ID del OV5640 = 0x5640, dirección 0x3C) pero no entrega tramas al reductor, ni siquiera con las barras de color del sensor.
- Falta distinguir: ¿falla el enlace MIPI (D-PHY/CSI-2 RX) o el camino de vídeo hasta el reductor (switches AXIS, TUSER/SOF, contrapresión)?
- Hipótesis del usuario sin verificar: que sin consumidor (VDMA/HDMI) el flujo se bloquee por contrapresión.

## Prueba decisiva pendiente
Cargar el diseño HDMI original de Digilent adaptado a Z7-20 (bit + xsa en `99_hw_project/hw_pcam_5c/`; los bitstreams originales del repo son xc7z010, hay que regenerar para xc7z020) con `hdmi_app.elf`, monitor en HDMI y la cámara apuntando a una línea roja. Si ahí hay imagen, el MIPI funciona y el fallo está en nuestro camino al reductor; si no, es hardware/alimentación/cable.

## Mapa de hardware (diseño sin HDMI, `VARIANTE=sin_hdmi`)
- AXI IIC 0x40800000 (cámara en 0x3C). GPIO PS EMIO 54 = alimentación/reset de la cámara.
- MIPI D-PHY RX 0x43C30000, CSI-2 RX 0x43C20000 (IP de Digilent: solo CR/versión, sin registros de estado útiles).
- Switches AXIS 0x44A00000 y 0x44A10000.
- DMA0 0x40400000 (captura), DMA1 0x41E00000 (salida FINN).
- Reloj de vídeo 150 MHz de `clk_wiz_0`, independiente del HDMI.

## Código y scripts en el repo
- `99_hw_project/zybo_22_2/diagnostico_camara/`: `main_diag.cc` (GPIO, escaneo I2C, ID), `main_diag2.cc` (capturas con timeout, barras de color, registros, reinicio del receptor MIPI), `compilar.sh <xsa> <dir_salida> [main_diag.cc|main_diag2.cc]`, `compilar_hdmi.sh <xsa> <dir_salida>`.
- `99_hw_project/zybo_22_2/software/ov5640/AXI_IIC.h`: `read()` reescrito por registros con timeout (`XIic_DynRecv` se cuelga).
- `99_hw_project/zybo_22_2/crear_proyecto.tcl`: variables `PLACA=z7-20 VARIANTE=sin_hdmi|completa RED=cnn|mlp HIL=0|1 HASTA=impl`.
- `99_hw_project/zybo_22_2/programar.sh`: carga bit + elf con xsct (Vitis/Vivado 2022.2).

## Trampas conocidas
- JTAG: FT2232 0403:6010; hay que `chmod 666` sobre el dispositivo USB tras cada reenumeración; jumper en JTAG para cargar y en SD para arrancar PYNQ.
- `xsct connect`/`programar.sh` se colgaron varias veces (con dos placas distintas) sin causa clara; probar otro puerto USB y matar `hw_server` con `ps -eo pid,comm | awk ... | xargs kill` (NO `pkill -f`, mata la propia shell).
- Lecturas AXI de la PL con xsct: usar `mrd -force`.
- La placa se reinició al conectar el HDMI: sospecha de alimentación/USB. Probar alimentador externo 5 V (JP7).
- `pgrep -f`/`pkill -f` se autocoinciden: usar `[h]il_node.py`.
- Compilar un diseño tarda ~15 min; lo de `/tmp` se pierde al reiniciar.

## Orden sugerido
1. Placa con alimentador externo, jumper en JTAG, `chmod 666` del USB.
2. Cargar el diseño HDMI original + `hdmi_app.elf`, monitor conectado: ¿hay imagen?
3. Si hay imagen: cargar el diseño sin HDMI con `main_diag2.cc` y comparar registros de CSI-2/D-PHY, SOF y TUSER en el camino hasta DMA0 (¿contrapresión? ¿el reductor espera otro formato?).
4. Si no hay imagen: revisar cable FFC, orientación, alimentación de la cámara (GPIO 54) y reloj.
5. Devolver a la sesión del TFG: resultado de cada paso, registros leídos y logs.
