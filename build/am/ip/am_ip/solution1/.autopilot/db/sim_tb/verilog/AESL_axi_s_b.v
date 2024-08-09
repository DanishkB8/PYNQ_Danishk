// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_b_TDATA "./c.am_accel.autotvin_b_V_data_V.dat"
`define INGRESS_STATUS_b_TDATA "./stream_ingress_status_b_V_data_V.dat"
`define TV_IN_b_TKEEP "./c.am_accel.autotvin_b_V_keep_V.dat"
`define INGRESS_STATUS_b_TKEEP "./stream_ingress_status_b_V_keep_V.dat"
`define TV_IN_b_TSTRB "./c.am_accel.autotvin_b_V_strb_V.dat"
`define INGRESS_STATUS_b_TSTRB "./stream_ingress_status_b_V_strb_V.dat"
`define TV_IN_b_TUSER "./c.am_accel.autotvin_b_V_user_V.dat"
`define INGRESS_STATUS_b_TUSER "./stream_ingress_status_b_V_user_V.dat"
`define TV_IN_b_TLAST "./c.am_accel.autotvin_b_V_last_V.dat"
`define INGRESS_STATUS_b_TLAST "./stream_ingress_status_b_V_last_V.dat"
`define TV_IN_b_TID "./c.am_accel.autotvin_b_V_id_V.dat"
`define INGRESS_STATUS_b_TID "./stream_ingress_status_b_V_id_V.dat"
`define TV_IN_b_TDEST "./c.am_accel.autotvin_b_V_dest_V.dat"
`define INGRESS_STATUS_b_TDEST "./stream_ingress_status_b_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_b (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_b_TDATA,
    output [4 - 1:0] TRAN_b_TKEEP,
    output [4 - 1:0] TRAN_b_TSTRB,
    output [2 - 1:0] TRAN_b_TUSER,
    output TRAN_b_TLAST,
    output [5 - 1:0] TRAN_b_TID,
    output [6 - 1:0] TRAN_b_TDEST,
    output TRAN_b_TVALID,
    input TRAN_b_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_b_TVALID_temp;
    wire b_TDATA_full;
    wire b_TDATA_empty;
    reg b_TDATA_write_en;
    reg [32 - 1:0] b_TDATA_write_data;
    reg b_TDATA_read_en;
    wire [32 - 1:0] b_TDATA_read_data;
    
    fifo #(10, 32) fifo_b_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(b_TDATA_write_en),
        .write_data(b_TDATA_write_data),
        .read_clock(clk),
        .read_en(b_TDATA_read_en),
        .read_data(b_TDATA_read_data),
        .full(b_TDATA_full),
        .empty(b_TDATA_empty));
    
    always @ (*) begin
        b_TDATA_write_en <= 0;
        b_TDATA_read_en <= TRAN_b_TREADY & TRAN_b_TVALID;
    end
    
    assign TRAN_b_TDATA = b_TDATA_read_data;
    wire b_TKEEP_full;
    wire b_TKEEP_empty;
    reg b_TKEEP_write_en;
    reg [4 - 1:0] b_TKEEP_write_data;
    reg b_TKEEP_read_en;
    wire [4 - 1:0] b_TKEEP_read_data;
    
    fifo #(10, 4) fifo_b_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(b_TKEEP_write_en),
        .write_data(b_TKEEP_write_data),
        .read_clock(clk),
        .read_en(b_TKEEP_read_en),
        .read_data(b_TKEEP_read_data),
        .full(b_TKEEP_full),
        .empty(b_TKEEP_empty));
    
    always @ (*) begin
        b_TKEEP_write_en <= 0;
        b_TKEEP_read_en <= TRAN_b_TREADY & TRAN_b_TVALID;
    end
    
    assign TRAN_b_TKEEP = b_TKEEP_read_data;
    wire b_TSTRB_full;
    wire b_TSTRB_empty;
    reg b_TSTRB_write_en;
    reg [4 - 1:0] b_TSTRB_write_data;
    reg b_TSTRB_read_en;
    wire [4 - 1:0] b_TSTRB_read_data;
    
    fifo #(10, 4) fifo_b_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(b_TSTRB_write_en),
        .write_data(b_TSTRB_write_data),
        .read_clock(clk),
        .read_en(b_TSTRB_read_en),
        .read_data(b_TSTRB_read_data),
        .full(b_TSTRB_full),
        .empty(b_TSTRB_empty));
    
    always @ (*) begin
        b_TSTRB_write_en <= 0;
        b_TSTRB_read_en <= TRAN_b_TREADY & TRAN_b_TVALID;
    end
    
    assign TRAN_b_TSTRB = b_TSTRB_read_data;
    wire b_TUSER_full;
    wire b_TUSER_empty;
    reg b_TUSER_write_en;
    reg [2 - 1:0] b_TUSER_write_data;
    reg b_TUSER_read_en;
    wire [2 - 1:0] b_TUSER_read_data;
    
    fifo #(10, 2) fifo_b_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(b_TUSER_write_en),
        .write_data(b_TUSER_write_data),
        .read_clock(clk),
        .read_en(b_TUSER_read_en),
        .read_data(b_TUSER_read_data),
        .full(b_TUSER_full),
        .empty(b_TUSER_empty));
    
    always @ (*) begin
        b_TUSER_write_en <= 0;
        b_TUSER_read_en <= TRAN_b_TREADY & TRAN_b_TVALID;
    end
    
    assign TRAN_b_TUSER = b_TUSER_read_data;
    wire b_TLAST_full;
    wire b_TLAST_empty;
    reg b_TLAST_write_en;
    reg [1 - 1:0] b_TLAST_write_data;
    reg b_TLAST_read_en;
    wire [1 - 1:0] b_TLAST_read_data;
    
    fifo #(10, 1) fifo_b_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(b_TLAST_write_en),
        .write_data(b_TLAST_write_data),
        .read_clock(clk),
        .read_en(b_TLAST_read_en),
        .read_data(b_TLAST_read_data),
        .full(b_TLAST_full),
        .empty(b_TLAST_empty));
    
    always @ (*) begin
        b_TLAST_write_en <= 0;
        b_TLAST_read_en <= TRAN_b_TREADY & TRAN_b_TVALID;
    end
    
    assign TRAN_b_TLAST = b_TLAST_read_data;
    wire b_TID_full;
    wire b_TID_empty;
    reg b_TID_write_en;
    reg [5 - 1:0] b_TID_write_data;
    reg b_TID_read_en;
    wire [5 - 1:0] b_TID_read_data;
    
    fifo #(10, 5) fifo_b_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(b_TID_write_en),
        .write_data(b_TID_write_data),
        .read_clock(clk),
        .read_en(b_TID_read_en),
        .read_data(b_TID_read_data),
        .full(b_TID_full),
        .empty(b_TID_empty));
    
    always @ (*) begin
        b_TID_write_en <= 0;
        b_TID_read_en <= TRAN_b_TREADY & TRAN_b_TVALID;
    end
    
    assign TRAN_b_TID = b_TID_read_data;
    wire b_TDEST_full;
    wire b_TDEST_empty;
    reg b_TDEST_write_en;
    reg [6 - 1:0] b_TDEST_write_data;
    reg b_TDEST_read_en;
    wire [6 - 1:0] b_TDEST_read_data;
    
    fifo #(10, 6) fifo_b_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(b_TDEST_write_en),
        .write_data(b_TDEST_write_data),
        .read_clock(clk),
        .read_en(b_TDEST_read_en),
        .read_data(b_TDEST_read_data),
        .full(b_TDEST_full),
        .empty(b_TDEST_empty));
    
    always @ (*) begin
        b_TDEST_write_en <= 0;
        b_TDEST_read_en <= TRAN_b_TREADY & TRAN_b_TVALID;
    end
    
    assign TRAN_b_TDEST = b_TDEST_read_data;
    assign TRAN_b_TVALID = TRAN_b_TVALID_temp;

    
    reg b_TDATA_valid = 0; // ingress buffer indicator: b_TDATA
    reg b_TKEEP_valid = 0; // ingress buffer indicator: b_TKEEP
    reg b_TSTRB_valid = 0; // ingress buffer indicator: b_TSTRB
    reg b_TUSER_valid = 0; // ingress buffer indicator: b_TUSER
    reg b_TLAST_valid = 0; // ingress buffer indicator: b_TLAST
    reg b_TID_valid = 0; // ingress buffer indicator: b_TID
    reg b_TDEST_valid = 0; // ingress buffer indicator: b_TDEST
    
    assign TRAN_b_TVALID_temp = ~(b_TDATA_empty || b_TKEEP_empty || b_TSTRB_empty || b_TUSER_empty || b_TLAST_empty || b_TID_empty || b_TDEST_empty) || (b_TDATA_valid && b_TKEEP_valid && b_TSTRB_valid && b_TUSER_valid && b_TLAST_valid && b_TID_valid && b_TDEST_valid);
    
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
    
    reg [31:0] transaction_load_b_TDATA;
    
    assign transaction = transaction_load_b_TDATA;
    
    initial begin : AXI_stream_driver_b_TDATA
        integer fp;
        reg [191:0] token;
        reg [32 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_b_TDATA = 0;
        fifo_b_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_b_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_b_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_b_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_b_TDATA);
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
                    fifo_b_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_b_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_b_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    b_TDATA_valid = (ingress_status > 0);
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
                transaction_load_b_TDATA = transaction_load_b_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_b_TKEEP;
    
    initial begin : AXI_stream_driver_b_TKEEP
        integer fp;
        reg [191:0] token;
        reg [4 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_b_TKEEP = 0;
        fifo_b_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_b_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_b_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_b_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_b_TKEEP);
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
                    fifo_b_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_b_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_b_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    b_TKEEP_valid = (ingress_status > 0);
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
                transaction_load_b_TKEEP = transaction_load_b_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_b_TSTRB;
    
    initial begin : AXI_stream_driver_b_TSTRB
        integer fp;
        reg [191:0] token;
        reg [4 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_b_TSTRB = 0;
        fifo_b_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_b_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_b_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_b_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_b_TSTRB);
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
                    fifo_b_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_b_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_b_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    b_TSTRB_valid = (ingress_status > 0);
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
                transaction_load_b_TSTRB = transaction_load_b_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_b_TUSER;
    
    initial begin : AXI_stream_driver_b_TUSER
        integer fp;
        reg [191:0] token;
        reg [2 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_b_TUSER = 0;
        fifo_b_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_b_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_b_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_b_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_b_TUSER);
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
                    fifo_b_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_b_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_b_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    b_TUSER_valid = (ingress_status > 0);
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
                transaction_load_b_TUSER = transaction_load_b_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_b_TLAST;
    
    initial begin : AXI_stream_driver_b_TLAST
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_b_TLAST = 0;
        fifo_b_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_b_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_b_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_b_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_b_TLAST);
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
                    fifo_b_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_b_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_b_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    b_TLAST_valid = (ingress_status > 0);
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
                transaction_load_b_TLAST = transaction_load_b_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_b_TID;
    
    initial begin : AXI_stream_driver_b_TID
        integer fp;
        reg [191:0] token;
        reg [5 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_b_TID = 0;
        fifo_b_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_b_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_b_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_b_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_b_TID);
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
                    fifo_b_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_b_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_b_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    b_TID_valid = (ingress_status > 0);
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
                transaction_load_b_TID = transaction_load_b_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_b_TDEST;
    
    initial begin : AXI_stream_driver_b_TDEST
        integer fp;
        reg [191:0] token;
        reg [6 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_b_TDEST = 0;
        fifo_b_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_b_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_b_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_b_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_b_TDEST);
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
                    fifo_b_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_b_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_b_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    b_TDEST_valid = (ingress_status > 0);
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
                transaction_load_b_TDEST = transaction_load_b_TDEST + 1;
            end
        end
    end

endmodule
