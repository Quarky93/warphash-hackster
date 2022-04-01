############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hash_controller
set_top hash_controller
add_files hash_controller/hash_controller.cpp
open_solution "solution1" -flow_target vivado
set_part {xcvu35p-fsvh2892-2L-e}
create_clock -period 2.22 -name default
config_export -format ip_catalog -rtl verilog -version 1.0.0
#source "./hash_controller/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
