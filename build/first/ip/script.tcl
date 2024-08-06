############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project first_ip
set_top example
add_files src/top.cpp
add_files -tb src/top_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu5eg-sfvc784-1-e}
create_clock -period 10 -name default
config_export -display_name {example ip} -format ip_catalog -output /home/danishkb8/Projects/first_ip/example.zip -rtl verilog
#source "./first_ip/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -display_name "example ip" -output /home/danishkb8/Projects/first_ip/example.zip
