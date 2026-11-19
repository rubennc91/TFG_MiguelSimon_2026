#!/bin/bash 
cd /tmp/FINN_build_mlp27k_w4a8_ft_clean/code_gen_ipgen_StreamingFIFO_0_1_y03kxkv1/project_StreamingFIFO_0_1/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /home/miguel_tfg/FINN-v0.9-Stable
