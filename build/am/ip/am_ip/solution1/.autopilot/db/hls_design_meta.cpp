#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("a_TDATA", 32, hls_in, 0, "axis", "in_data", 1),
	Port_Property("a_TVALID", 1, hls_in, 6, "axis", "in_vld", 1),
	Port_Property("a_TREADY", 1, hls_out, 6, "axis", "in_acc", 1),
	Port_Property("a_TKEEP", 4, hls_in, 1, "axis", "in_data", 1),
	Port_Property("a_TSTRB", 4, hls_in, 2, "axis", "in_data", 1),
	Port_Property("a_TUSER", 2, hls_in, 3, "axis", "in_data", 1),
	Port_Property("a_TLAST", 1, hls_in, 4, "axis", "in_data", 1),
	Port_Property("a_TID", 5, hls_in, 5, "axis", "in_data", 1),
	Port_Property("a_TDEST", 6, hls_in, 6, "axis", "in_data", 1),
	Port_Property("b_TDATA", 32, hls_in, 7, "axis", "in_data", 1),
	Port_Property("b_TVALID", 1, hls_in, 13, "axis", "in_vld", 1),
	Port_Property("b_TREADY", 1, hls_out, 13, "axis", "in_acc", 1),
	Port_Property("b_TKEEP", 4, hls_in, 8, "axis", "in_data", 1),
	Port_Property("b_TSTRB", 4, hls_in, 9, "axis", "in_data", 1),
	Port_Property("b_TUSER", 2, hls_in, 10, "axis", "in_data", 1),
	Port_Property("b_TLAST", 1, hls_in, 11, "axis", "in_data", 1),
	Port_Property("b_TID", 5, hls_in, 12, "axis", "in_data", 1),
	Port_Property("b_TDEST", 6, hls_in, 13, "axis", "in_data", 1),
	Port_Property("out_r_TDATA", 32, hls_out, 14, "axis", "out_data", 1),
	Port_Property("out_r_TVALID", 1, hls_out, 20, "axis", "out_vld", 1),
	Port_Property("out_r_TREADY", 1, hls_in, 20, "axis", "out_acc", 1),
	Port_Property("out_r_TKEEP", 4, hls_out, 15, "axis", "out_data", 1),
	Port_Property("out_r_TSTRB", 4, hls_out, 16, "axis", "out_data", 1),
	Port_Property("out_r_TUSER", 2, hls_out, 17, "axis", "out_data", 1),
	Port_Property("out_r_TLAST", 1, hls_out, 18, "axis", "out_data", 1),
	Port_Property("out_r_TID", 5, hls_out, 19, "axis", "out_data", 1),
	Port_Property("out_r_TDEST", 6, hls_out, 20, "axis", "out_data", 1),
	Port_Property("s_axi_control_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_AWADDR", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_ARADDR", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "am_accel";