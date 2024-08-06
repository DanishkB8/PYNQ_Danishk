
set vitis_lib_include [lindex $argv 2]

open_project resize
set_top resize_accel
add_files src/xf_resize_accel_stream.cpp -cflags "-I${vitis_lib_include} -D__XF__AXI_SDATA__"
open_solution "resize" -flow_target vivado
set_part {xczu5eg-sfvc784-1-e}
create_clock -period 10 -name default
set_clock_uncertainty 27.0%

#Synthesize and export IP using Vivado flow
config_export -format ip_catalog -rtl verilog
csynth_design
export_design -format ip_catalog -description "Image resizing IP" -display_name "resize_accel"
exit