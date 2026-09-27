#!/bin/bash 
cd /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_18_5sx_vt1j/project_StreamingFIFO_18/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /home/miguel_tfg/FINN-v0.9-Stable
