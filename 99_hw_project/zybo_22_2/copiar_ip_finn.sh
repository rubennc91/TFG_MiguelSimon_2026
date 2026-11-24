#!/bin/bash
# Copia a fuentes/ip_repo/finn_<red> el IP unido de FINN y los IP de HLS de cada capa de los que depende (están en el directorio de construcción de FINN y se perderían).
# Uso: ./copiar_ip_finn.sh <red: cnn|mlp> <directorio salida/stitched_ip de la construcción de FINN>
set -e
red=$1; S=$2; D="$(cd "$(dirname "$0")" && pwd)/fuentes/ip_repo/finn_$red"
rm -rf "$D"; mkdir -p "$D/subip"; cp -r "$S/ip/." "$D/"
# los repositorios de IP de las capas están en la línea 'set_property ip_repo_paths [list ...]' de make_project.tcl
grep -m1 "ip_repo_paths" "$S/make_project.tcl" | tr ' ' '\n' | grep "^/" | tr -d '[]' | while read p; do
  [ -d "$p" ] || { echo "falta $p"; continue; }
  n=$(echo "$p" | sed 's#.*/\(code_gen_ipgen_[A-Za-z0-9_]*\)/.*#\1#; s#.*/finn-rtllib/#finn-rtllib_#')
  mkdir -p "$D/subip/$n"; cp -r "$p/." "$D/subip/$n/"
done
du -sh "$D"; find "$D" -name component.xml | wc -l
