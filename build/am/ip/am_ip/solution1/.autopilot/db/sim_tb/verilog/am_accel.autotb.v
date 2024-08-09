// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      am_accel
`define AUTOTB_DUT_INST AESL_inst_am_accel
`define AUTOTB_TOP      apatb_am_accel_top
`define AUTOTB_LAT_RESULT_FILE "am_accel.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "am_accel.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_am_accel_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_a_V_data_V 1
`define AESL_DEPTH_a_V_keep_V 1
`define AESL_DEPTH_a_V_strb_V 1
`define AESL_DEPTH_a_V_user_V 1
`define AESL_DEPTH_a_V_last_V 1
`define AESL_DEPTH_a_V_id_V 1
`define AESL_DEPTH_a_V_dest_V 1
`define AESL_DEPTH_b_V_data_V 1
`define AESL_DEPTH_b_V_keep_V 1
`define AESL_DEPTH_b_V_strb_V 1
`define AESL_DEPTH_b_V_user_V 1
`define AESL_DEPTH_b_V_last_V 1
`define AESL_DEPTH_b_V_id_V 1
`define AESL_DEPTH_b_V_dest_V 1
`define AESL_DEPTH_out_V_data_V 1
`define AESL_DEPTH_out_V_keep_V 1
`define AESL_DEPTH_out_V_strb_V 1
`define AESL_DEPTH_out_V_user_V 1
`define AESL_DEPTH_out_V_last_V 1
`define AESL_DEPTH_out_V_id_V 1
`define AESL_DEPTH_out_V_dest_V 1
`define AUTOTB_TVIN_a_V_data_V  "./c.am_accel.autotvin_a_V_data_V.dat"
`define AUTOTB_TVIN_a_V_keep_V  "./c.am_accel.autotvin_a_V_keep_V.dat"
`define AUTOTB_TVIN_a_V_strb_V  "./c.am_accel.autotvin_a_V_strb_V.dat"
`define AUTOTB_TVIN_a_V_user_V  "./c.am_accel.autotvin_a_V_user_V.dat"
`define AUTOTB_TVIN_a_V_last_V  "./c.am_accel.autotvin_a_V_last_V.dat"
`define AUTOTB_TVIN_a_V_id_V  "./c.am_accel.autotvin_a_V_id_V.dat"
`define AUTOTB_TVIN_a_V_dest_V  "./c.am_accel.autotvin_a_V_dest_V.dat"
`define AUTOTB_TVIN_b_V_data_V  "./c.am_accel.autotvin_b_V_data_V.dat"
`define AUTOTB_TVIN_b_V_keep_V  "./c.am_accel.autotvin_b_V_keep_V.dat"
`define AUTOTB_TVIN_b_V_strb_V  "./c.am_accel.autotvin_b_V_strb_V.dat"
`define AUTOTB_TVIN_b_V_user_V  "./c.am_accel.autotvin_b_V_user_V.dat"
`define AUTOTB_TVIN_b_V_last_V  "./c.am_accel.autotvin_b_V_last_V.dat"
`define AUTOTB_TVIN_b_V_id_V  "./c.am_accel.autotvin_b_V_id_V.dat"
`define AUTOTB_TVIN_b_V_dest_V  "./c.am_accel.autotvin_b_V_dest_V.dat"
`define AUTOTB_TVIN_out_V_data_V  "./c.am_accel.autotvin_out_V_data_V.dat"
`define AUTOTB_TVIN_out_V_keep_V  "./c.am_accel.autotvin_out_V_keep_V.dat"
`define AUTOTB_TVIN_out_V_strb_V  "./c.am_accel.autotvin_out_V_strb_V.dat"
`define AUTOTB_TVIN_out_V_user_V  "./c.am_accel.autotvin_out_V_user_V.dat"
`define AUTOTB_TVIN_out_V_last_V  "./c.am_accel.autotvin_out_V_last_V.dat"
`define AUTOTB_TVIN_out_V_id_V  "./c.am_accel.autotvin_out_V_id_V.dat"
`define AUTOTB_TVIN_out_V_dest_V  "./c.am_accel.autotvin_out_V_dest_V.dat"
`define AUTOTB_TVIN_a_V_data_V_out_wrapc  "./rtl.am_accel.autotvin_a_V_data_V.dat"
`define AUTOTB_TVIN_a_V_keep_V_out_wrapc  "./rtl.am_accel.autotvin_a_V_keep_V.dat"
`define AUTOTB_TVIN_a_V_strb_V_out_wrapc  "./rtl.am_accel.autotvin_a_V_strb_V.dat"
`define AUTOTB_TVIN_a_V_user_V_out_wrapc  "./rtl.am_accel.autotvin_a_V_user_V.dat"
`define AUTOTB_TVIN_a_V_last_V_out_wrapc  "./rtl.am_accel.autotvin_a_V_last_V.dat"
`define AUTOTB_TVIN_a_V_id_V_out_wrapc  "./rtl.am_accel.autotvin_a_V_id_V.dat"
`define AUTOTB_TVIN_a_V_dest_V_out_wrapc  "./rtl.am_accel.autotvin_a_V_dest_V.dat"
`define AUTOTB_TVIN_b_V_data_V_out_wrapc  "./rtl.am_accel.autotvin_b_V_data_V.dat"
`define AUTOTB_TVIN_b_V_keep_V_out_wrapc  "./rtl.am_accel.autotvin_b_V_keep_V.dat"
`define AUTOTB_TVIN_b_V_strb_V_out_wrapc  "./rtl.am_accel.autotvin_b_V_strb_V.dat"
`define AUTOTB_TVIN_b_V_user_V_out_wrapc  "./rtl.am_accel.autotvin_b_V_user_V.dat"
`define AUTOTB_TVIN_b_V_last_V_out_wrapc  "./rtl.am_accel.autotvin_b_V_last_V.dat"
`define AUTOTB_TVIN_b_V_id_V_out_wrapc  "./rtl.am_accel.autotvin_b_V_id_V.dat"
`define AUTOTB_TVIN_b_V_dest_V_out_wrapc  "./rtl.am_accel.autotvin_b_V_dest_V.dat"
`define AUTOTB_TVIN_out_V_data_V_out_wrapc  "./rtl.am_accel.autotvin_out_V_data_V.dat"
`define AUTOTB_TVIN_out_V_keep_V_out_wrapc  "./rtl.am_accel.autotvin_out_V_keep_V.dat"
`define AUTOTB_TVIN_out_V_strb_V_out_wrapc  "./rtl.am_accel.autotvin_out_V_strb_V.dat"
`define AUTOTB_TVIN_out_V_user_V_out_wrapc  "./rtl.am_accel.autotvin_out_V_user_V.dat"
`define AUTOTB_TVIN_out_V_last_V_out_wrapc  "./rtl.am_accel.autotvin_out_V_last_V.dat"
`define AUTOTB_TVIN_out_V_id_V_out_wrapc  "./rtl.am_accel.autotvin_out_V_id_V.dat"
`define AUTOTB_TVIN_out_V_dest_V_out_wrapc  "./rtl.am_accel.autotvin_out_V_dest_V.dat"
`define AUTOTB_TVOUT_out_V_data_V  "./c.am_accel.autotvout_out_V_data_V.dat"
`define AUTOTB_TVOUT_out_V_keep_V  "./c.am_accel.autotvout_out_V_keep_V.dat"
`define AUTOTB_TVOUT_out_V_strb_V  "./c.am_accel.autotvout_out_V_strb_V.dat"
`define AUTOTB_TVOUT_out_V_user_V  "./c.am_accel.autotvout_out_V_user_V.dat"
`define AUTOTB_TVOUT_out_V_last_V  "./c.am_accel.autotvout_out_V_last_V.dat"
`define AUTOTB_TVOUT_out_V_id_V  "./c.am_accel.autotvout_out_V_id_V.dat"
`define AUTOTB_TVOUT_out_V_dest_V  "./c.am_accel.autotvout_out_V_dest_V.dat"
`define AUTOTB_TVOUT_out_V_data_V_out_wrapc  "./impl_rtl.am_accel.autotvout_out_V_data_V.dat"
`define AUTOTB_TVOUT_out_V_keep_V_out_wrapc  "./impl_rtl.am_accel.autotvout_out_V_keep_V.dat"
`define AUTOTB_TVOUT_out_V_strb_V_out_wrapc  "./impl_rtl.am_accel.autotvout_out_V_strb_V.dat"
`define AUTOTB_TVOUT_out_V_user_V_out_wrapc  "./impl_rtl.am_accel.autotvout_out_V_user_V.dat"
`define AUTOTB_TVOUT_out_V_last_V_out_wrapc  "./impl_rtl.am_accel.autotvout_out_V_last_V.dat"
`define AUTOTB_TVOUT_out_V_id_V_out_wrapc  "./impl_rtl.am_accel.autotvout_out_V_id_V.dat"
`define AUTOTB_TVOUT_out_V_dest_V_out_wrapc  "./impl_rtl.am_accel.autotvout_out_V_dest_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_a_V_data_V = 10;
parameter LENGTH_a_V_keep_V = 10;
parameter LENGTH_a_V_strb_V = 10;
parameter LENGTH_a_V_user_V = 10;
parameter LENGTH_a_V_last_V = 10;
parameter LENGTH_a_V_id_V = 10;
parameter LENGTH_a_V_dest_V = 10;
parameter LENGTH_b_V_data_V = 10;
parameter LENGTH_b_V_keep_V = 10;
parameter LENGTH_b_V_strb_V = 10;
parameter LENGTH_b_V_user_V = 10;
parameter LENGTH_b_V_last_V = 10;
parameter LENGTH_b_V_id_V = 10;
parameter LENGTH_b_V_dest_V = 10;
parameter LENGTH_out_V_data_V = 10;
parameter LENGTH_out_V_keep_V = 10;
parameter LENGTH_out_V_strb_V = 10;
parameter LENGTH_out_V_user_V = 10;
parameter LENGTH_out_V_last_V = 10;
parameter LENGTH_out_V_id_V = 10;
parameter LENGTH_out_V_dest_V = 10;

task read_token;
    input integer fp;
    output reg [191 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [191 : 0] token1;
    reg [191 : 0] token2;
    reg [191 : 0] golden;
    reg [191 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [3 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [3 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire  control_INTERRUPT;
wire [31 : 0] a_TDATA;
wire  a_TVALID;
wire  a_TREADY;
wire [3 : 0] a_TKEEP;
wire [3 : 0] a_TSTRB;
wire [1 : 0] a_TUSER;
wire [0 : 0] a_TLAST;
wire [4 : 0] a_TID;
wire [5 : 0] a_TDEST;
wire [31 : 0] b_TDATA;
wire  b_TVALID;
wire  b_TREADY;
wire [3 : 0] b_TKEEP;
wire [3 : 0] b_TSTRB;
wire [1 : 0] b_TUSER;
wire [0 : 0] b_TLAST;
wire [4 : 0] b_TID;
wire [5 : 0] b_TDEST;
wire [31 : 0] out_r_TDATA;
wire  out_r_TVALID;
wire  out_r_TREADY;
wire [3 : 0] out_r_TKEEP;
wire [3 : 0] out_r_TSTRB;
wire [1 : 0] out_r_TUSER;
wire [0 : 0] out_r_TLAST;
wire [4 : 0] out_r_TID;
wire [5 : 0] out_r_TDEST;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .interrupt(control_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .a_TDATA(a_TDATA),
    .a_TVALID(a_TVALID),
    .a_TREADY(a_TREADY),
    .a_TKEEP(a_TKEEP),
    .a_TSTRB(a_TSTRB),
    .a_TUSER(a_TUSER),
    .a_TLAST(a_TLAST),
    .a_TID(a_TID),
    .a_TDEST(a_TDEST),
    .b_TDATA(b_TDATA),
    .b_TVALID(b_TVALID),
    .b_TREADY(b_TREADY),
    .b_TKEEP(b_TKEEP),
    .b_TSTRB(b_TSTRB),
    .b_TUSER(b_TUSER),
    .b_TLAST(b_TLAST),
    .b_TID(b_TID),
    .b_TDEST(b_TDEST),
    .out_r_TDATA(out_r_TDATA),
    .out_r_TVALID(out_r_TVALID),
    .out_r_TREADY(out_r_TREADY),
    .out_r_TKEEP(out_r_TKEEP),
    .out_r_TSTRB(out_r_TSTRB),
    .out_r_TUSER(out_r_TUSER),
    .out_r_TLAST(out_r_TLAST),
    .out_r_TID(out_r_TID),
    .out_r_TDEST(out_r_TDEST));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status ;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end





















reg [31:0] ap_c_n_tvin_trans_num_a_V_data_V;

reg a_ready_reg; // for self-sync

wire a_ready;
wire a_done;
wire [31:0] a_transaction;
wire axi_s_a_TVALID;
wire axi_s_a_TREADY;

AESL_axi_s_a AESL_AXI_S_a(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_a_TDATA(a_TDATA),
    .TRAN_a_TKEEP(a_TKEEP),
    .TRAN_a_TSTRB(a_TSTRB),
    .TRAN_a_TUSER(a_TUSER),
    .TRAN_a_TLAST(a_TLAST),
    .TRAN_a_TID(a_TID),
    .TRAN_a_TDEST(a_TDEST),
    .TRAN_a_TVALID(axi_s_a_TVALID),
    .TRAN_a_TREADY(axi_s_a_TREADY),
    .ready(a_ready),
    .done(a_done),
    .transaction(a_transaction));

assign a_ready = a_ready_reg | ready_initial;
assign a_done = 0;

assign a_TVALID = axi_s_a_TVALID;

assign axi_s_a_TREADY = a_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_b_V_data_V;

reg b_ready_reg; // for self-sync

wire b_ready;
wire b_done;
wire [31:0] b_transaction;
wire axi_s_b_TVALID;
wire axi_s_b_TREADY;

AESL_axi_s_b AESL_AXI_S_b(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_b_TDATA(b_TDATA),
    .TRAN_b_TKEEP(b_TKEEP),
    .TRAN_b_TSTRB(b_TSTRB),
    .TRAN_b_TUSER(b_TUSER),
    .TRAN_b_TLAST(b_TLAST),
    .TRAN_b_TID(b_TID),
    .TRAN_b_TDEST(b_TDEST),
    .TRAN_b_TVALID(axi_s_b_TVALID),
    .TRAN_b_TREADY(axi_s_b_TREADY),
    .ready(b_ready),
    .done(b_done),
    .transaction(b_transaction));

assign b_ready = b_ready_reg | ready_initial;
assign b_done = 0;

assign b_TVALID = axi_s_b_TVALID;

assign axi_s_b_TREADY = b_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_out_V_data_V;

reg out_r_ready_reg; // for self-sync

wire out_r_ready;
wire out_r_done;
wire [31:0] out_r_transaction;
wire axi_s_out_r_TVALID;
wire axi_s_out_r_TREADY;

AESL_axi_s_out_r AESL_AXI_S_out_r(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_out_r_TDATA(out_r_TDATA),
    .TRAN_out_r_TKEEP(out_r_TKEEP),
    .TRAN_out_r_TSTRB(out_r_TSTRB),
    .TRAN_out_r_TUSER(out_r_TUSER),
    .TRAN_out_r_TLAST(out_r_TLAST),
    .TRAN_out_r_TID(out_r_TID),
    .TRAN_out_r_TDEST(out_r_TDEST),
    .TRAN_out_r_TVALID(axi_s_out_r_TVALID),
    .TRAN_out_r_TREADY(axi_s_out_r_TREADY),
    .ready(out_r_ready),
    .done(out_r_done),
    .transaction(out_r_transaction));

assign out_r_ready = 0;
assign out_r_done = AESL_done;

assign axi_s_out_r_TVALID = out_r_TVALID;

reg reg_out_r_TREADY;
initial begin : gen_reg_out_r_TREADY_process
    integer proc_rand;
    reg_out_r_TREADY = axi_s_out_r_TREADY;
    while(1)
    begin
        @(axi_s_out_r_TREADY);
        reg_out_r_TREADY = axi_s_out_r_TREADY;
    end
end


assign out_r_TREADY = reg_out_r_TREADY;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_interrupt (control_INTERRUPT),
    .TRAN_control_ready_out (AESL_ready),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_out (AESL_slave_output_done),
    .TRAN_control_idle_out (AESL_idle),
    .TRAN_control_write_start_in     (AESL_slave_write_start_in),
    .TRAN_control_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
    fp1 = $fopen("./rtl.am_accel.autotvout_out_V_data_V.dat", "r");
    fp2 = $fopen("./impl_rtl.am_accel.autotvout_out_V_data_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.am_accel.autotvout_out_V_data_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.am_accel.autotvout_out_V_data_V.dat\"!");
    else begin
        $display("Comparing rtl.am_accel.autotvout_out_V_data_V.dat with impl_rtl.am_accel.autotvout_out_V_data_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.am_accel.autotvout_out_V_keep_V.dat", "r");
    fp2 = $fopen("./impl_rtl.am_accel.autotvout_out_V_keep_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.am_accel.autotvout_out_V_keep_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.am_accel.autotvout_out_V_keep_V.dat\"!");
    else begin
        $display("Comparing rtl.am_accel.autotvout_out_V_keep_V.dat with impl_rtl.am_accel.autotvout_out_V_keep_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.am_accel.autotvout_out_V_strb_V.dat", "r");
    fp2 = $fopen("./impl_rtl.am_accel.autotvout_out_V_strb_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.am_accel.autotvout_out_V_strb_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.am_accel.autotvout_out_V_strb_V.dat\"!");
    else begin
        $display("Comparing rtl.am_accel.autotvout_out_V_strb_V.dat with impl_rtl.am_accel.autotvout_out_V_strb_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.am_accel.autotvout_out_V_user_V.dat", "r");
    fp2 = $fopen("./impl_rtl.am_accel.autotvout_out_V_user_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.am_accel.autotvout_out_V_user_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.am_accel.autotvout_out_V_user_V.dat\"!");
    else begin
        $display("Comparing rtl.am_accel.autotvout_out_V_user_V.dat with impl_rtl.am_accel.autotvout_out_V_user_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.am_accel.autotvout_out_V_last_V.dat", "r");
    fp2 = $fopen("./impl_rtl.am_accel.autotvout_out_V_last_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.am_accel.autotvout_out_V_last_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.am_accel.autotvout_out_V_last_V.dat\"!");
    else begin
        $display("Comparing rtl.am_accel.autotvout_out_V_last_V.dat with impl_rtl.am_accel.autotvout_out_V_last_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.am_accel.autotvout_out_V_id_V.dat", "r");
    fp2 = $fopen("./impl_rtl.am_accel.autotvout_out_V_id_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.am_accel.autotvout_out_V_id_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.am_accel.autotvout_out_V_id_V.dat\"!");
    else begin
        $display("Comparing rtl.am_accel.autotvout_out_V_id_V.dat with impl_rtl.am_accel.autotvout_out_V_id_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.am_accel.autotvout_out_V_dest_V.dat", "r");
    fp2 = $fopen("./impl_rtl.am_accel.autotvout_out_V_dest_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.am_accel.autotvout_out_V_dest_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.am_accel.autotvout_out_V_dest_V.dat\"!");
    else begin
        $display("Comparing rtl.am_accel.autotvout_out_V_dest_V.dat with impl_rtl.am_accel.autotvout_out_V_dest_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_a_V_data_V;
reg [31:0] size_a_V_data_V;
reg [31:0] size_a_V_data_V_backup;
reg end_a_V_keep_V;
reg [31:0] size_a_V_keep_V;
reg [31:0] size_a_V_keep_V_backup;
reg end_a_V_strb_V;
reg [31:0] size_a_V_strb_V;
reg [31:0] size_a_V_strb_V_backup;
reg end_a_V_user_V;
reg [31:0] size_a_V_user_V;
reg [31:0] size_a_V_user_V_backup;
reg end_a_V_last_V;
reg [31:0] size_a_V_last_V;
reg [31:0] size_a_V_last_V_backup;
reg end_a_V_id_V;
reg [31:0] size_a_V_id_V;
reg [31:0] size_a_V_id_V_backup;
reg end_a_V_dest_V;
reg [31:0] size_a_V_dest_V;
reg [31:0] size_a_V_dest_V_backup;
reg end_b_V_data_V;
reg [31:0] size_b_V_data_V;
reg [31:0] size_b_V_data_V_backup;
reg end_b_V_keep_V;
reg [31:0] size_b_V_keep_V;
reg [31:0] size_b_V_keep_V_backup;
reg end_b_V_strb_V;
reg [31:0] size_b_V_strb_V;
reg [31:0] size_b_V_strb_V_backup;
reg end_b_V_user_V;
reg [31:0] size_b_V_user_V;
reg [31:0] size_b_V_user_V_backup;
reg end_b_V_last_V;
reg [31:0] size_b_V_last_V;
reg [31:0] size_b_V_last_V_backup;
reg end_b_V_id_V;
reg [31:0] size_b_V_id_V;
reg [31:0] size_b_V_id_V_backup;
reg end_b_V_dest_V;
reg [31:0] size_b_V_dest_V;
reg [31:0] size_b_V_dest_V_backup;
reg end_out_V_data_V;
reg [31:0] size_out_V_data_V;
reg [31:0] size_out_V_data_V_backup;
reg end_out_V_keep_V;
reg [31:0] size_out_V_keep_V;
reg [31:0] size_out_V_keep_V_backup;
reg end_out_V_strb_V;
reg [31:0] size_out_V_strb_V;
reg [31:0] size_out_V_strb_V_backup;
reg end_out_V_user_V;
reg [31:0] size_out_V_user_V;
reg [31:0] size_out_V_user_V_backup;
reg end_out_V_last_V;
reg [31:0] size_out_V_last_V;
reg [31:0] size_out_V_last_V_backup;
reg end_out_V_id_V;
reg [31:0] size_out_V_id_V;
reg [31:0] size_out_V_id_V_backup;
reg end_out_V_dest_V;
reg [31:0] size_out_V_dest_V;
reg [31:0] size_out_V_dest_V_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_a
        a_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_a_V_data_V or a_transaction);
            if (ap_c_n_tvin_trans_num_a_V_data_V > a_transaction) begin
                a_ready_reg = 1;
            end else begin
                a_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_b
        b_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_b_V_data_V or b_transaction);
            if (ap_c_n_tvin_trans_num_b_V_data_V > b_transaction) begin
                b_ready_reg = 1;
            end else begin
                b_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_a_V_data_V "./stream_size_in_a_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_a_V_data_V
        integer fp_a_V_data_V;
        reg [127:0] token_a_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_a_V_data_V = 0;
        end_a_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_a_V_data_V = $fopen(`STREAM_SIZE_IN_a_V_data_V, "r");
        if(fp_a_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_a_V_data_V);
            $finish;
        end
        read_token(fp_a_V_data_V, token_a_V_data_V); // should be [[[runtime]]]
        if (token_a_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_a_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_a_V_data_V = 0;
        size_a_V_data_V_backup = 0;
        while (size_a_V_data_V == 0 && end_a_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_a_V_data_V = ap_c_n_tvin_trans_num_a_V_data_V + 1;
            read_token(fp_a_V_data_V, token_a_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_a_V_data_V == "[[transaction]]") begin
                read_token(fp_a_V_data_V, token_a_V_data_V); // should be transaction number
                read_token(fp_a_V_data_V, token_a_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_a_V_data_V, "%d", size_a_V_data_V);
                if (size_a_V_data_V > 0) begin
                    size_a_V_data_V_backup = size_a_V_data_V;
                end
                read_token(fp_a_V_data_V, token_a_V_data_V); // should be [[/transaction]]
            end else if (token_a_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_a_V_data_V);
                end_a_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_a_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_a_V_data_V == 0) begin
                if ((a_TREADY & a_TVALID) == 1) begin
                    if (size_a_V_data_V > 0) begin
                        size_a_V_data_V = size_a_V_data_V - 1;
                        while (size_a_V_data_V == 0 && end_a_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_a_V_data_V = ap_c_n_tvin_trans_num_a_V_data_V + 1;
                            read_token(fp_a_V_data_V, token_a_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_a_V_data_V == "[[transaction]]") begin
                                read_token(fp_a_V_data_V, token_a_V_data_V); // should be transaction number
                                read_token(fp_a_V_data_V, token_a_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_a_V_data_V, "%d", size_a_V_data_V);
                                if (size_a_V_data_V > 0) begin
                                    size_a_V_data_V_backup = size_a_V_data_V;
                                end
                                read_token(fp_a_V_data_V, token_a_V_data_V); // should be [[/transaction]]
                            end else if (token_a_V_data_V == "[[[/runtime]]]") begin
                                size_a_V_data_V = size_a_V_data_V_backup;
                                $fclose(fp_a_V_data_V);
                                end_a_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_a_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((a_TREADY & a_TVALID) == 1) begin
                    if (size_a_V_data_V > 0) begin
                        size_a_V_data_V = size_a_V_data_V - 1;
                        if (size_a_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_a_V_data_V = ap_c_n_tvin_trans_num_a_V_data_V + 1;
                            size_a_V_data_V = size_a_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_b_V_data_V "./stream_size_in_b_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_b_V_data_V
        integer fp_b_V_data_V;
        reg [127:0] token_b_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_b_V_data_V = 0;
        end_b_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_b_V_data_V = $fopen(`STREAM_SIZE_IN_b_V_data_V, "r");
        if(fp_b_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_b_V_data_V);
            $finish;
        end
        read_token(fp_b_V_data_V, token_b_V_data_V); // should be [[[runtime]]]
        if (token_b_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_b_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_b_V_data_V = 0;
        size_b_V_data_V_backup = 0;
        while (size_b_V_data_V == 0 && end_b_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_b_V_data_V = ap_c_n_tvin_trans_num_b_V_data_V + 1;
            read_token(fp_b_V_data_V, token_b_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_b_V_data_V == "[[transaction]]") begin
                read_token(fp_b_V_data_V, token_b_V_data_V); // should be transaction number
                read_token(fp_b_V_data_V, token_b_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_b_V_data_V, "%d", size_b_V_data_V);
                if (size_b_V_data_V > 0) begin
                    size_b_V_data_V_backup = size_b_V_data_V;
                end
                read_token(fp_b_V_data_V, token_b_V_data_V); // should be [[/transaction]]
            end else if (token_b_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_b_V_data_V);
                end_b_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_b_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_b_V_data_V == 0) begin
                if ((b_TREADY & b_TVALID) == 1) begin
                    if (size_b_V_data_V > 0) begin
                        size_b_V_data_V = size_b_V_data_V - 1;
                        while (size_b_V_data_V == 0 && end_b_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_b_V_data_V = ap_c_n_tvin_trans_num_b_V_data_V + 1;
                            read_token(fp_b_V_data_V, token_b_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_b_V_data_V == "[[transaction]]") begin
                                read_token(fp_b_V_data_V, token_b_V_data_V); // should be transaction number
                                read_token(fp_b_V_data_V, token_b_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_b_V_data_V, "%d", size_b_V_data_V);
                                if (size_b_V_data_V > 0) begin
                                    size_b_V_data_V_backup = size_b_V_data_V;
                                end
                                read_token(fp_b_V_data_V, token_b_V_data_V); // should be [[/transaction]]
                            end else if (token_b_V_data_V == "[[[/runtime]]]") begin
                                size_b_V_data_V = size_b_V_data_V_backup;
                                $fclose(fp_b_V_data_V);
                                end_b_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_b_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((b_TREADY & b_TVALID) == 1) begin
                    if (size_b_V_data_V > 0) begin
                        size_b_V_data_V = size_b_V_data_V - 1;
                        if (size_b_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_b_V_data_V = ap_c_n_tvin_trans_num_b_V_data_V + 1;
                            size_b_V_data_V = size_b_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_out_V_data_V;

initial begin : dump_tvout_runtime_sign_out_V_data_V
    integer fp;
    dump_tvout_finish_out_V_data_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_V_data_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_data_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_V_data_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_data_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_V_data_V = 1;
end


reg dump_tvout_finish_out_V_keep_V;

initial begin : dump_tvout_runtime_sign_out_V_keep_V
    integer fp;
    dump_tvout_finish_out_V_keep_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_V_keep_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_V_keep_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_V_keep_V = 1;
end


reg dump_tvout_finish_out_V_strb_V;

initial begin : dump_tvout_runtime_sign_out_V_strb_V
    integer fp;
    dump_tvout_finish_out_V_strb_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_V_strb_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_V_strb_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_V_strb_V = 1;
end


reg dump_tvout_finish_out_V_user_V;

initial begin : dump_tvout_runtime_sign_out_V_user_V
    integer fp;
    dump_tvout_finish_out_V_user_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_V_user_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_user_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_V_user_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_user_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_V_user_V = 1;
end


reg dump_tvout_finish_out_V_last_V;

initial begin : dump_tvout_runtime_sign_out_V_last_V
    integer fp;
    dump_tvout_finish_out_V_last_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_V_last_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_V_last_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_V_last_V = 1;
end


reg dump_tvout_finish_out_V_id_V;

initial begin : dump_tvout_runtime_sign_out_V_id_V
    integer fp;
    dump_tvout_finish_out_V_id_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_V_id_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_id_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_V_id_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_id_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_V_id_V = 1;
end


reg dump_tvout_finish_out_V_dest_V;

initial begin : dump_tvout_runtime_sign_out_V_dest_V
    integer fp;
    dump_tvout_finish_out_V_dest_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_V_dest_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_dest_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_V_dest_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_V_dest_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_V_dest_V = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
