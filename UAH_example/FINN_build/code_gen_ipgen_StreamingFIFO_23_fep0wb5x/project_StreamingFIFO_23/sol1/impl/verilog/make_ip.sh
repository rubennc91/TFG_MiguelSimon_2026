#!/bin/bash 
cd /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_23_fep0wb5x/project_StreamingFIFO_23/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /home/miguel_tfg/FINN-v0.9-Stable
