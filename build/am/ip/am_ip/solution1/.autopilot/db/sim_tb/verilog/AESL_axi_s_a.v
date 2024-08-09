// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_a_TDATA "./c.am_accel.autotvin_a_V_data_V.dat"
`define INGRESS_STATUS_a_TDATA "./stream_ingress_status_a_V_data_V.dat"
`define TV_IN_a_TKEEP "./c.am_accel.autotvin_a_V_keep_V.dat"
`define INGRESS_STATUS_a_TKEEP "./stream_ingress_status_a_V_keep_V.dat"
`define TV_IN_a_TSTRB "./c.am_accel.autotvin_a_V_strb_V.dat"
`define INGRESS_STATUS_a_TSTRB "./stream_ingress_status_a_V_strb_V.dat"
`define TV_IN_a_TUSER "./c.am_accel.autotvin_a_V_user_V.dat"
`define INGRESS_STATUS_a_TUSER "./stream_ingress_status_a_V_user_V.dat"
`define TV_IN_a_TLAST "./c.am_accel.autotvin_a_V_last_V.dat"
`define INGRESS_STATUS_a_TLAST "./stream_ingress_status_a_V_last_V.dat"
`define TV_IN_a_TID "./c.am_accel.autotvin_a_V_id_V.dat"
`define INGRESS_STATUS_a_TID "./stream_ingress_status_a_V_id_V.dat"
`define TV_IN_a_TDEST "./c.am_accel.autotvin_a_V_dest_V.dat"
`define INGRESS_STATUS_a_TDEST "./stream_ingress_status_a_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_a (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_a_TDATA,
    output [4 - 1:0] TRAN_a_TKEEP,
    output [4 - 1:0] TRAN_a_TSTRB,
    output [2 - 1:0] TRAN_a_TUSER,
    output TRAN_a_TLAST,
    output [5 - 1:0] TRAN_a_TID,
    output [6 - 1:0] TRAN_a_TDEST,
    output TRAN_a_TVALID,
    input TRAN_a_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_a_TVALID_temp;
    wire a_TDATA_full;
    wire a_TDATA_empty;
    reg a_TDATA_write_en;
    reg [32 - 1:0] a_TDATA_write_data;
    reg a_TDATA_read_en;
    wire [32 - 1:0] a_TDATA_read_data;
    
    fifo #(10, 32) fifo_a_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(a_TDATA_write_en),
        .write_data(a_TDATA_write_data),
        .read_clock(clk),
        .read_en(a_TDATA_read_en),
        .read_data(a_TDATA_read_data),
        .full(a_TDATA_full),
        .empty(a_TDATA_empty));
    
    always @ (*) begin
        a_TDATA_write_en <= 0;
        a_TDATA_read_en <= TRAN_a_TREADY & TRAN_a_TVALID;
    end
    
    assign TRAN_a_TDATA = a_TDATA_read_data;
    wire a_TKEEP_full;
    wire a_TKEEP_empty;
    reg a_TKEEP_write_en;
    reg [4 - 1:0] a_TKEEP_write_data;
    reg a_TKEEP_read_en;
    wire [4 - 1:0] a_TKEEP_read_data;
    
    fifo #(10, 4) fifo_a_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(a_TKEEP_write_en),
        .write_data(a_TKEEP_write_data),
        .read_clock(clk),
        .read_en(a_TKEEP_read_en),
        .read_data(a_TKEEP_read_data),
        .full(a_TKEEP_full),
        .empty(a_TKEEP_empty));
    
    always @ (*) begin
        a_TKEEP_write_en <= 0;
        a_TKEEP_read_en <= TRAN_a_TREADY & TRAN_a_TVALID;
    end
    
    assign TRAN_a_TKEEP = a_TKEEP_read_data;
    wire a_TSTRB_full;
    wire a_TSTRB_empty;
    reg a_TSTRB_write_en;
    reg [4 - 1:0] a_TSTRB_write_data;
    reg a_TSTRB_read_en;
    wire [4 - 1:0] a_TSTRB_read_data;
    
    fifo #(10, 4) fifo_a_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(a_TSTRB_write_en),
        .write_data(a_TSTRB_write_data),
        .read_clock(clk),
        .read_en(a_TSTRB_read_en),
        .read_data(a_TSTRB_read_data),
        .full(a_TSTRB_full),
        .empty(a_TSTRB_empty));
    
    always @ (*) begin
        a_TSTRB_write_en <= 0;
        a_TSTRB_read_en <= TRAN_a_TREADY & TRAN_a_TVALID;
    end
    
    assign TRAN_a_TSTRB = a_TSTRB_read_data;
    wire a_TUSER_full;
    wire a_TUSER_empty;
    reg a_TUSER_write_en;
    reg [2 - 1:0] a_TUSER_write_data;
    reg a_TUSER_read_en;
    wire [2 - 1:0] a_TUSER_read_data;
    
    fifo #(10, 2) fifo_a_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(a_TUSER_write_en),
        .write_data(a_TUSER_write_data),
        .read_clock(clk),
        .read_en(a_TUSER_read_en),
        .read_data(a_TUSER_read_data),
        .full(a_TUSER_full),
        .empty(a_TUSER_empty));
    
    always @ (*) begin
        a_TUSER_write_en <= 0;
        a_TUSER_read_en <= TRAN_a_TREADY & TRAN_a_TVALID;
    end
    
    assign TRAN_a_TUSER = a_TUSER_read_data;
    wire a_TLAST_full;
    wire a_TLAST_empty;
    reg a_TLAST_write_en;
    reg [1 - 1:0] a_TLAST_write_data;
    reg a_TLAST_read_en;
    wire [1 - 1:0] a_TLAST_read_data;
    
    fifo #(10, 1) fifo_a_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(a_TLAST_write_en),
        .write_data(a_TLAST_write_data),
        .read_clock(clk),
        .read_en(a_TLAST_read_en),
        .read_data(a_TLAST_read_data),
        .full(a_TLAST_full),
        .empty(a_TLAST_empty));
    
    always @ (*) begin
        a_TLAST_write_en <= 0;
        a_TLAST_read_en <= TRAN_a_TREADY & TRAN_a_TVALID;
    end
    
    assign TRAN_a_TLAST = a_TLAST_read_data;
    wire a_TID_full;
    wire a_TID_empty;
    reg a_TID_write_en;
    reg [5 - 1:0] a_TID_write_data;
    reg a_TID_read_en;
    wire [5 - 1:0] a_TID_read_data;
    
    fifo #(10, 5) fifo_a_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(a_TID_write_en),
        .write_data(a_TID_write_data),
        .read_clock(clk),
        .read_en(a_TID_read_en),
        .read_data(a_TID_read_data),
        .full(a_TID_full),
        .empty(a_TID_empty));
    
    always @ (*) begin
        a_TID_write_en <= 0;
        a_TID_read_en <= TRAN_a_TREADY & TRAN_a_TVALID;
    end
    
    assign TRAN_a_TID = a_TID_read_data;
    wire a_TDEST_full;
    wire a_TDEST_empty;
    reg a_TDEST_write_en;
    reg [6 - 1:0] a_TDEST_write_data;
    reg a_TDEST_read_en;
    wire [6 - 1:0] a_TDEST_read_data;
    
    fifo #(10, 6) fifo_a_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(a_TDEST_write_en),
        .write_data(a_TDEST_write_data),
        .read_clock(clk),
        .read_en(a_TDEST_read_en),
        .read_data(a_TDEST_read_data),
        .full(a_TDEST_full),
        .empty(a_TDEST_empty));
    
    always @ (*) begin
        a_TDEST_write_en <= 0;
        a_TDEST_read_en <= TRAN_a_TREADY & TRAN_a_TVALID;
    end
    
    assign TRAN_a_TDEST = a_TDEST_read_data;
    assign TRAN_a_TVALID = TRAN_a_TVALID_temp;

    
    reg a_TDATA_valid = 0; // ingress buffer indicator: a_TDATA
    reg a_TKEEP_valid = 0; // ingress buffer indicator: a_TKEEP
    reg a_TSTRB_valid = 0; // ingress buffer indicator: a_TSTRB
    reg a_TUSER_valid = 0; // ingress buffer indicator: a_TUSER
    reg a_TLAST_valid = 0; // ingress buffer indicator: a_TLAST
    reg a_TID_valid = 0; // ingress buffer indicator: a_TID
    reg a_TDEST_valid = 0; // ingress buffer indicator: a_TDEST
    
    assign TRAN_a_TVALID_temp = ~(a_TDATA_empty || a_TKEEP_empty || a_TSTRB_empty || a_TUSER_empty || a_TLAST_empty || a_TID_empty || a_TDEST_empty) || (a_TDATA_valid && a_TKEEP_valid && a_TSTRB_valid && a_TUSER_valid && a_TLAST_valid && a_TID_valid && a_TDEST_valid);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [191:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [191:0] rm_0x(input [191:0] token);
        reg [191:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg [31:0] transaction_load_a_TDATA;
    
    assign transaction = transaction_load_a_TDATA;
    
    initial begin : AXI_stream_driver_a_TDATA
        integer fp;
        reg [191:0] token;
        reg [32 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_a_TDATA = 0;
        fifo_a_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_a_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_a_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_a_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_a_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_a_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_a_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_a_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    a_TDATA_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_a_TDATA = transaction_load_a_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_a_TKEEP;
    
    initial begin : AXI_stream_driver_a_TKEEP
        integer fp;
        reg [191:0] token;
        reg [4 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_a_TKEEP = 0;
        fifo_a_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_a_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_a_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_a_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_a_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_a_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_a_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_a_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    a_TKEEP_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_a_TKEEP = transaction_load_a_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_a_TSTRB;
    
    initial begin : AXI_stream_driver_a_TSTRB
        integer fp;
        reg [191:0] token;
        reg [4 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_a_TSTRB = 0;
        fifo_a_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_a_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_a_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_a_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_a_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_a_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_a_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_a_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    a_TSTRB_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_a_TSTRB = transaction_load_a_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_a_TUSER;
    
    initial begin : AXI_stream_driver_a_TUSER
        integer fp;
        reg [191:0] token;
        reg [2 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_a_TUSER = 0;
        fifo_a_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_a_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_a_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_a_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_a_TUSER);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_a_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_a_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_a_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    a_TUSER_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_a_TUSER = transaction_load_a_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_a_TLAST;
    
    initial begin : AXI_stream_driver_a_TLAST
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_a_TLAST = 0;
        fifo_a_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_a_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_a_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_a_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_a_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_a_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_a_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_a_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    a_TLAST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_a_TLAST = transaction_load_a_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_a_TID;
    
    initial begin : AXI_stream_driver_a_TID
        integer fp;
        reg [191:0] token;
        reg [5 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_a_TID = 0;
        fifo_a_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_a_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_a_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_a_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_a_TID);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_a_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_a_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_a_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    a_TID_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_a_TID = transaction_load_a_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_a_TDEST;
    
    initial begin : AXI_stream_driver_a_TDEST
        integer fp;
        reg [191:0] token;
        reg [6 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_a_TDEST = 0;
        fifo_a_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_a_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_a_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_a_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_a_TDEST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_a_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_a_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_a_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    a_TDEST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_a_TDEST = transaction_load_a_TDEST + 1;
            end
        end
    end

endmodule
