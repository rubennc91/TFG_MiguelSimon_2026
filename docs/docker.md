# Imágenes de Docker del TFG

El flujo usa dos imágenes. Ninguna se guarda dentro del repositorio (pesan 9-12 GB, y Git no admite ficheros de más de 100 MB).

| Imagen | Para qué | Tamaño | Dónde se obtiene |
|---|---|---|---|
| `jderobot/robotics-academy:6.1.8` | Gazebo + ROS 2 Humble con el circuito de Montmeló | 11,9 GB | Docker Hub (pública). Digest: `sha256:01685aa530faa561d58d22127187b64fb573c6e2e7e446c8bfb8d6cc578c5aee` |
| `xilinx/finn:v0.9-dirty.xrt_202210.2.13.466_18.04-amd64-xrt` | Compilar la red con FINN v0.9 y Verilator 4.224 | 8,75 GB | GitHub Container Registry (ver abajo) o reconstruirla |

## 1. JdeRobot (Gazebo y ROS 2)
```bash
docker pull jderobot/robotics-academy:6.1.8
```
Es la imagen oficial **sin modificar**: su digest coincide con el de Docker Hub. Lo que añadió Miguel (el paquete `f1_neural_controller`) va en `04_ros2_gazebo/f1_ws` y se monta desde fuera con `-v ~/f1_ws:/f1_ws`; no hay nada suyo dentro de la imagen.

## 2. FINN v0.9
Es la imagen estándar de FINN (`docker/Dockerfile.finn` del repositorio de FINN), construida con XRT `xrt_202210.2.13.466_18.04`. El sufijo `-dirty` solo indica que se construyó desde una copia de trabajo con cambios. Contiene Python/conda, Verilator v4.224, XRT y los paquetes de FINN. **No incluye Vivado ni Vitis**: se montan desde el equipo (`/tools/Xilinx`, versión 2022.2), por licencia. Se revisó que no lleve claves, credenciales ni ficheros personales.

Obtenerla:
```bash
docker pull ghcr.io/rubennc91/finn-v0.9-tfg:v0.9-dirty.xrt_202210
docker tag ghcr.io/rubennc91/finn-v0.9-tfg:v0.9-dirty.xrt_202210 \
  xilinx/finn:v0.9-dirty.xrt_202210.2.13.466_18.04-amd64-xrt   # nombre que espera run-docker.sh
```
O reconstruirla desde el repositorio de FINN (https://github.com/rubennc91/FINN-v0.9-Stable):
```bash
docker build -f docker/Dockerfile.finn \
  --build-arg XRT_DEB_VERSION=xrt_202210.2.13.466_18.04-amd64-xrt \
  -t xilinx/finn:v0.9-dirty.xrt_202210.2.13.466_18.04-amd64-xrt .
```
(Una reconstrucción puede traer versiones de paquetes distintas a las de 2026; por eso se conserva la imagen ya construida.)

Después, `./run-docker.sh notebook` en el repositorio de FINN abre Jupyter en el puerto 8898.

## 3. Copia en fichero
Para guardar o mover una imagen sin registro, ver `exportar_imagen_docker.md` (`docker save` / `docker load`).
