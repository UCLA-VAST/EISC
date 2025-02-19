// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.op
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="app_conv_dist,hls_ip_2017_4_op,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flgb2104-2-i,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.815000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=716,HLS_SYN_LUT=554}" *)

module app_conv_dist (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
ap_continue,
        ap_idle,
        ap_ready,
        reset_app_conv_dist_V_dout,
        reset_app_conv_dist_V_empty_n,
        reset_app_conv_dist_V_read,
        app_params_V_dout,
        app_params_V_empty_n,
        app_params_V_read,
        app_input_data_V_data_V_dout,
        app_input_data_V_data_V_empty_n,
        app_input_data_V_data_V_read,
        app_input_data_V_len_dout,
        app_input_data_V_len_empty_n,
        app_input_data_V_len_read,
        app_input_data_V_eop_dout,
        app_input_data_V_eop_empty_n,
        app_input_data_V_eop_read,
        app_conv_mult_0_param_V_idx_blk_din,
        app_conv_mult_0_param_V_idx_blk_full_n,
        app_conv_mult_0_param_V_idx_blk_write,
        app_conv_mult_0_param_V_idx_dim_0_din,
        app_conv_mult_0_param_V_idx_dim_0_full_n,
        app_conv_mult_0_param_V_idx_dim_0_write,
        app_conv_mult_0_param_V_idx_dim_1_din,
        app_conv_mult_0_param_V_idx_dim_1_full_n,
        app_conv_mult_0_param_V_idx_dim_1_write,
        app_conv_mult_0_param_V_val_din,
        app_conv_mult_0_param_V_val_full_n,
        app_conv_mult_0_param_V_val_write,
        app_conv_mult_0_input_data_V_data_V_din,
        app_conv_mult_0_input_data_V_data_V_full_n,
        app_conv_mult_0_input_data_V_data_V_write,
        app_conv_mult_0_input_data_V_eop_din,
        app_conv_mult_0_input_data_V_eop_full_n,
        app_conv_mult_0_input_data_V_eop_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output ap_ready; output ap_continue;
input   reset_app_conv_dist_V_dout;
input   reset_app_conv_dist_V_empty_n;
output   reset_app_conv_dist_V_read;
input  [31:0] app_params_V_dout;
input   app_params_V_empty_n;
output   app_params_V_read;
input  [511:0] app_input_data_V_data_V_dout;
input   app_input_data_V_data_V_empty_n;
output   app_input_data_V_data_V_read;
input  [15:0] app_input_data_V_len_dout;
input   app_input_data_V_len_empty_n;
output   app_input_data_V_len_read;
input   app_input_data_V_eop_dout;
input   app_input_data_V_eop_empty_n;
output   app_input_data_V_eop_read;
output  [7:0] app_conv_mult_0_param_V_idx_blk_din;
input   app_conv_mult_0_param_V_idx_blk_full_n;
output   app_conv_mult_0_param_V_idx_blk_write;
output  [7:0] app_conv_mult_0_param_V_idx_dim_0_din;
input   app_conv_mult_0_param_V_idx_dim_0_full_n;
output   app_conv_mult_0_param_V_idx_dim_0_write;
output  [7:0] app_conv_mult_0_param_V_idx_dim_1_din;
input   app_conv_mult_0_param_V_idx_dim_1_full_n;
output   app_conv_mult_0_param_V_idx_dim_1_write;
output  [7:0] app_conv_mult_0_param_V_val_din;
input   app_conv_mult_0_param_V_val_full_n;
output   app_conv_mult_0_param_V_val_write;
output  [511:0] app_conv_mult_0_input_data_V_data_V_din;
input   app_conv_mult_0_input_data_V_data_V_full_n;
output   app_conv_mult_0_input_data_V_data_V_write;
output   app_conv_mult_0_input_data_V_eop_din;
input   app_conv_mult_0_input_data_V_eop_full_n;
output   app_conv_mult_0_input_data_V_eop_write;

reg ap_idle;
reg reset_app_conv_dist_V_read;
reg app_params_V_read;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    app_conv_mult_0_param_V_idx_blk_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] reset_reg_296;
reg   [0:0] empty_n_5_reg_517;
reg   [0:0] param_ready_reg_272;
reg   [0:0] empty_n_4_reg_522;
reg    app_conv_mult_0_param_V_idx_dim_0_blk_n;
reg    app_conv_mult_0_param_V_idx_dim_1_blk_n;
reg    app_conv_mult_0_param_V_val_blk_n;
reg    app_conv_mult_0_input_data_V_data_V_blk_n;
reg   [0:0] empty_n_3_reg_544;
reg    app_conv_mult_0_input_data_V_eop_blk_n;
reg   [63:0] count_reg_284;
wire   [0:0] empty_n_5_fu_381_p1;
wire    ap_block_state2_pp0_stage0_iter0;
wire    app_conv_mult_0_param_V_val1_status;
reg    ap_predicate_op59_write_state3;
wire    app_conv_mult_0_input_data_V_eop1_status;
reg    ap_predicate_op63_write_state3;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ap_phi_mux_reset_phi_fu_300_p4;
wire   [0:0] empty_n_4_fu_385_p1;
reg   [0:0] ap_phi_mux_param_ready_phi_fu_276_p4;
reg   [31:0] tmp_reg_526;
wire   [63:0] count_2_fu_393_p2;
wire   [0:0] tmp_3_fu_399_p2;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [511:0] grp_reg_APP_Mult_Data_s_fu_417_ap_return_0;
wire   [0:0] grp_reg_APP_Mult_Data_s_fu_417_ap_return_1;
reg    grp_reg_APP_Mult_Data_s_fu_417_ap_ce;
reg    ap_predicate_op49_call_state2;
reg   [0:0] ap_phi_mux_param_ready_be_phi_fu_342_p4;
reg   [63:0] ap_phi_mux_count_phi_fu_288_p4;
reg   [63:0] ap_phi_mux_count_be_phi_fu_355_p4;
reg   [0:0] ap_phi_mux_reset_be_phi_fu_368_p4;
reg   [0:0] ap_phi_mux_param_ready_2_phi_fu_311_p4;
reg   [0:0] ap_phi_reg_pp0_iter1_param_ready_2_reg_308;
wire   [0:0] ap_phi_reg_pp0_iter0_param_ready_2_reg_308;
reg   [63:0] ap_phi_mux_count_1_phi_fu_321_p4;
reg   [63:0] ap_phi_reg_pp0_iter1_count_1_reg_318;
wire   [63:0] ap_phi_reg_pp0_iter0_count_1_reg_318;
wire   [0:0] ap_phi_reg_pp0_iter0_reset_1_reg_328;
reg   [0:0] ap_phi_reg_pp0_iter1_reset_1_reg_328;
wire   [0:0] ap_phi_reg_pp0_iter1_param_ready_be_reg_338;
wire   [63:0] ap_phi_reg_pp0_iter1_count_be_reg_351;
wire   [0:0] p_reset_1_fu_490_p2;
wire   [0:0] ap_phi_reg_pp0_iter1_reset_be_reg_364;
reg    app_input_data_V_len0_update;
wire   [0:0] grp_nbread_fu_236_p4_0;
reg    app_conv_mult_0_param_V_val1_update;
reg    ap_block_pp0_stage0_01001;
reg    app_conv_mult_0_input_data_V_eop1_update;
reg   [31:0] reset_cnt_fu_220;
wire   [31:0] p_s_fu_497_p3;
wire   [31:0] reset_cnt_1_fu_472_p2;
wire   [0:0] tmp_4_fu_478_p2;
wire   [0:0] not_s_fu_484_p2;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_79;
reg    ap_condition_155;
reg    ap_condition_198;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

reg_APP_Mult_Data_s grp_reg_APP_Mult_Data_s_fu_417(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .agg_result_data_V_write(app_input_data_V_data_V_dout),
    .agg_result_eop_write(app_input_data_V_eop_dout),
    .ap_return_0(grp_reg_APP_Mult_Data_s_fu_417_ap_return_0),
    .ap_return_1(grp_reg_APP_Mult_Data_s_fu_417_ap_return_1),
    .ap_ce(grp_reg_APP_Mult_Data_s_fu_417_ap_ce)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_198)) begin
        if ((1'b1 == ap_condition_155)) begin
            ap_phi_reg_pp0_iter1_count_1_reg_318 <= count_2_fu_393_p2;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_count_1_reg_318 <= ap_phi_reg_pp0_iter0_count_1_reg_318;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_198)) begin
        if ((1'b1 == ap_condition_155)) begin
            ap_phi_reg_pp0_iter1_param_ready_2_reg_308 <= tmp_3_fu_399_p2;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_param_ready_2_reg_308 <= ap_phi_reg_pp0_iter0_param_ready_2_reg_308;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_198)) begin
        if (((empty_n_5_fu_381_p1 == 1'd1) & (ap_phi_mux_reset_phi_fu_300_p4 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_reset_1_reg_328 <= reset_app_conv_dist_V_empty_n;
        end else if ((ap_phi_mux_reset_phi_fu_300_p4 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_reset_1_reg_328 <= ap_phi_mux_reset_phi_fu_300_p4;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_reset_1_reg_328 <= ap_phi_reg_pp0_iter0_reset_1_reg_328;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        count_reg_284 <= ap_phi_mux_count_be_phi_fu_355_p4;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        count_reg_284 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        param_ready_reg_272 <= ap_phi_mux_param_ready_be_phi_fu_342_p4;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        param_ready_reg_272 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & ((empty_n_5_reg_517 == 1'd1) | (reset_reg_296 == 1'd1)))) begin
        reset_cnt_fu_220 <= p_s_fu_497_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        reset_cnt_fu_220 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        reset_reg_296 <= ap_phi_mux_reset_be_phi_fu_368_p4;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        reset_reg_296 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_param_ready_phi_fu_276_p4 == 1'd1) & (ap_phi_mux_reset_phi_fu_300_p4 == 1'd0) & (empty_n_5_fu_381_p1 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_n_3_reg_544 <= grp_nbread_fu_236_p4_0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_param_ready_phi_fu_276_p4 == 1'd0) & (ap_phi_mux_reset_phi_fu_300_p4 == 1'd0) & (empty_n_5_fu_381_p1 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_n_4_reg_522 <= app_params_V_empty_n;
        tmp_reg_526 <= app_params_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_reset_phi_fu_300_p4 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_n_5_reg_517 <= reset_app_conv_dist_V_empty_n;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((param_ready_reg_272 == 1'd1) & (empty_n_5_reg_517 == 1'd0) & (reset_reg_296 == 1'd0)) | ((empty_n_4_reg_522 == 1'd0) & (empty_n_5_reg_517 == 1'd0) & (reset_reg_296 == 1'd0))))) begin
        ap_phi_mux_count_1_phi_fu_321_p4 = count_reg_284;
    end else begin
        ap_phi_mux_count_1_phi_fu_321_p4 = ap_phi_reg_pp0_iter1_count_1_reg_318;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_79)) begin
        if (((empty_n_5_reg_517 == 1'd0) & (reset_reg_296 == 1'd0))) begin
            ap_phi_mux_count_be_phi_fu_355_p4 = ap_phi_mux_count_1_phi_fu_321_p4;
        end else if (((empty_n_5_reg_517 == 1'd1) | (reset_reg_296 == 1'd1))) begin
            ap_phi_mux_count_be_phi_fu_355_p4 = 64'd0;
        end else begin
            ap_phi_mux_count_be_phi_fu_355_p4 = ap_phi_reg_pp0_iter1_count_be_reg_351;
        end
    end else begin
        ap_phi_mux_count_be_phi_fu_355_p4 = ap_phi_reg_pp0_iter1_count_be_reg_351;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_count_phi_fu_288_p4 = ap_phi_mux_count_be_phi_fu_355_p4;
    end else begin
        ap_phi_mux_count_phi_fu_288_p4 = count_reg_284;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((param_ready_reg_272 == 1'd1) & (empty_n_5_reg_517 == 1'd0) & (reset_reg_296 == 1'd0)) | ((empty_n_4_reg_522 == 1'd0) & (empty_n_5_reg_517 == 1'd0) & (reset_reg_296 == 1'd0))))) begin
        ap_phi_mux_param_ready_2_phi_fu_311_p4 = param_ready_reg_272;
    end else begin
        ap_phi_mux_param_ready_2_phi_fu_311_p4 = ap_phi_reg_pp0_iter1_param_ready_2_reg_308;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_79)) begin
        if (((empty_n_5_reg_517 == 1'd0) & (reset_reg_296 == 1'd0))) begin
            ap_phi_mux_param_ready_be_phi_fu_342_p4 = ap_phi_mux_param_ready_2_phi_fu_311_p4;
        end else if (((empty_n_5_reg_517 == 1'd1) | (reset_reg_296 == 1'd1))) begin
            ap_phi_mux_param_ready_be_phi_fu_342_p4 = 1'd0;
        end else begin
            ap_phi_mux_param_ready_be_phi_fu_342_p4 = ap_phi_reg_pp0_iter1_param_ready_be_reg_338;
        end
    end else begin
        ap_phi_mux_param_ready_be_phi_fu_342_p4 = ap_phi_reg_pp0_iter1_param_ready_be_reg_338;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_param_ready_phi_fu_276_p4 = ap_phi_mux_param_ready_be_phi_fu_342_p4;
    end else begin
        ap_phi_mux_param_ready_phi_fu_276_p4 = param_ready_reg_272;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_79)) begin
        if (((empty_n_5_reg_517 == 1'd0) & (reset_reg_296 == 1'd0))) begin
            ap_phi_mux_reset_be_phi_fu_368_p4 = 1'd0;
        end else if (((empty_n_5_reg_517 == 1'd1) | (reset_reg_296 == 1'd1))) begin
            ap_phi_mux_reset_be_phi_fu_368_p4 = p_reset_1_fu_490_p2;
        end else begin
            ap_phi_mux_reset_be_phi_fu_368_p4 = ap_phi_reg_pp0_iter1_reset_be_reg_364;
        end
    end else begin
        ap_phi_mux_reset_be_phi_fu_368_p4 = ap_phi_reg_pp0_iter1_reset_be_reg_364;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_reset_phi_fu_300_p4 = ap_phi_mux_reset_be_phi_fu_368_p4;
    end else begin
        ap_phi_mux_reset_phi_fu_300_p4 = reset_reg_296;
    end
end

always @ (*) begin
    if (((empty_n_3_reg_544 == 1'd1) & (param_ready_reg_272 == 1'd1) & (empty_n_5_reg_517 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        app_conv_mult_0_input_data_V_data_V_blk_n = app_conv_mult_0_input_data_V_data_V_full_n;
    end else begin
        app_conv_mult_0_input_data_V_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op63_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        app_conv_mult_0_input_data_V_eop1_update = 1'b1;
    end else begin
        app_conv_mult_0_input_data_V_eop1_update = 1'b0;
    end
end

always @ (*) begin
    if (((empty_n_3_reg_544 == 1'd1) & (param_ready_reg_272 == 1'd1) & (empty_n_5_reg_517 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        app_conv_mult_0_input_data_V_eop_blk_n = app_conv_mult_0_input_data_V_eop_full_n;
    end else begin
        app_conv_mult_0_input_data_V_eop_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((empty_n_4_reg_522 == 1'd1) & (param_ready_reg_272 == 1'd0) & (empty_n_5_reg_517 == 1'd0) & (reset_reg_296 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        app_conv_mult_0_param_V_idx_blk_blk_n = app_conv_mult_0_param_V_idx_blk_full_n;
    end else begin
        app_conv_mult_0_param_V_idx_blk_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((empty_n_4_reg_522 == 1'd1) & (param_ready_reg_272 == 1'd0) & (empty_n_5_reg_517 == 1'd0) & (reset_reg_296 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        app_conv_mult_0_param_V_idx_dim_0_blk_n = app_conv_mult_0_param_V_idx_dim_0_full_n;
    end else begin
        app_conv_mult_0_param_V_idx_dim_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((empty_n_4_reg_522 == 1'd1) & (param_ready_reg_272 == 1'd0) & (empty_n_5_reg_517 == 1'd0) & (reset_reg_296 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        app_conv_mult_0_param_V_idx_dim_1_blk_n = app_conv_mult_0_param_V_idx_dim_1_full_n;
    end else begin
        app_conv_mult_0_param_V_idx_dim_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op59_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        app_conv_mult_0_param_V_val1_update = 1'b1;
    end else begin
        app_conv_mult_0_param_V_val1_update = 1'b0;
    end
end

always @ (*) begin
    if (((empty_n_4_reg_522 == 1'd1) & (param_ready_reg_272 == 1'd0) & (empty_n_5_reg_517 == 1'd0) & (reset_reg_296 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        app_conv_mult_0_param_V_val_blk_n = app_conv_mult_0_param_V_val_full_n;
    end else begin
        app_conv_mult_0_param_V_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((app_input_data_V_len_empty_n & app_input_data_V_eop_empty_n & app_input_data_V_data_V_empty_n) == 1'b1) & (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & ((ap_phi_mux_reset_phi_fu_300_p4 == 1'd1) | (empty_n_5_fu_381_p1 == 1'd1))) | ((ap_phi_mux_param_ready_phi_fu_276_p4 == 1'd1) & (ap_phi_mux_reset_phi_fu_300_p4 == 1'd0) & (empty_n_5_fu_381_p1 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))))) begin
        app_input_data_V_len0_update = 1'b1;
    end else begin
        app_input_data_V_len0_update = 1'b0;
    end
end

always @ (*) begin
    if (((app_params_V_empty_n == 1'b1) & (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & ((ap_phi_mux_reset_phi_fu_300_p4 == 1'd1) | (empty_n_5_fu_381_p1 == 1'd1))) | ((ap_phi_mux_param_ready_phi_fu_276_p4 == 1'd0) & (ap_phi_mux_reset_phi_fu_300_p4 == 1'd0) & (empty_n_5_fu_381_p1 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (app_params_V_empty_n == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))))) begin
        app_params_V_read = 1'b1;
    end else begin
        app_params_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_reg_APP_Mult_Data_s_fu_417_ap_ce = 1'b1;
    end else begin
        grp_reg_APP_Mult_Data_s_fu_417_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_phi_mux_reset_phi_fu_300_p4 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (reset_app_conv_dist_V_empty_n == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        reset_app_conv_dist_V_read = 1'b1;
    end else begin
        reset_app_conv_dist_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((app_conv_mult_0_input_data_V_eop1_status == 1'b0) & (ap_predicate_op63_write_state3 == 1'b1)) | ((app_conv_mult_0_param_V_val1_status == 1'b0) & (ap_predicate_op59_write_state3 == 1'b1))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((app_conv_mult_0_input_data_V_eop1_status == 1'b0) & (ap_predicate_op63_write_state3 == 1'b1)) | ((app_conv_mult_0_param_V_val1_status == 1'b0) & (ap_predicate_op59_write_state3 == 1'b1))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((app_conv_mult_0_input_data_V_eop1_status == 1'b0) & (ap_predicate_op63_write_state3 == 1'b1)) | ((app_conv_mult_0_param_V_val1_status == 1'b0) & (ap_predicate_op59_write_state3 == 1'b1))));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (((app_conv_mult_0_input_data_V_eop1_status == 1'b0) & (ap_predicate_op63_write_state3 == 1'b1)) | ((app_conv_mult_0_param_V_val1_status == 1'b0) & (ap_predicate_op59_write_state3 == 1'b1)));
end

always @ (*) begin
    ap_condition_155 = ((empty_n_4_fu_385_p1 == 1'd1) & (ap_phi_mux_param_ready_phi_fu_276_p4 == 1'd0) & (ap_phi_mux_reset_phi_fu_300_p4 == 1'd0) & (empty_n_5_fu_381_p1 == 1'd0));
end

always @ (*) begin
    ap_condition_198 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_79 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_done = 1'b0;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_count_1_reg_318 = 'bx;

assign ap_phi_reg_pp0_iter0_param_ready_2_reg_308 = 'bx;

assign ap_phi_reg_pp0_iter0_reset_1_reg_328 = 'bx;

assign ap_phi_reg_pp0_iter1_count_be_reg_351 = 'bx;

assign ap_phi_reg_pp0_iter1_param_ready_be_reg_338 = 'bx;

assign ap_phi_reg_pp0_iter1_reset_be_reg_364 = 'bx;

always @ (*) begin
    ap_predicate_op49_call_state2 = ((grp_nbread_fu_236_p4_0 == 1'd1) & (ap_phi_mux_param_ready_phi_fu_276_p4 == 1'd1) & (ap_phi_mux_reset_phi_fu_300_p4 == 1'd0) & (empty_n_5_fu_381_p1 == 1'd0));
end

always @ (*) begin
    ap_predicate_op59_write_state3 = ((empty_n_4_reg_522 == 1'd1) & (param_ready_reg_272 == 1'd0) & (empty_n_5_reg_517 == 1'd0) & (reset_reg_296 == 1'd0));
end

always @ (*) begin
    ap_predicate_op63_write_state3 = ((empty_n_3_reg_544 == 1'd1) & (param_ready_reg_272 == 1'd1) & (empty_n_5_reg_517 == 1'd0));
end

assign ap_ready = 1'b0;

assign app_conv_mult_0_input_data_V_data_V_din = grp_reg_APP_Mult_Data_s_fu_417_ap_return_0;

assign app_conv_mult_0_input_data_V_data_V_write = app_conv_mult_0_input_data_V_eop1_update;

assign app_conv_mult_0_input_data_V_eop1_status = (app_conv_mult_0_input_data_V_eop_full_n & app_conv_mult_0_input_data_V_data_V_full_n);

assign app_conv_mult_0_input_data_V_eop_din = grp_reg_APP_Mult_Data_s_fu_417_ap_return_1;

assign app_conv_mult_0_input_data_V_eop_write = app_conv_mult_0_input_data_V_eop1_update;

assign app_conv_mult_0_param_V_idx_blk_din = {{tmp_reg_526[31:24]}};

assign app_conv_mult_0_param_V_idx_blk_write = app_conv_mult_0_param_V_val1_update;

assign app_conv_mult_0_param_V_idx_dim_0_din = {{tmp_reg_526[23:16]}};

assign app_conv_mult_0_param_V_idx_dim_0_write = app_conv_mult_0_param_V_val1_update;

assign app_conv_mult_0_param_V_idx_dim_1_din = {{tmp_reg_526[15:8]}};

assign app_conv_mult_0_param_V_idx_dim_1_write = app_conv_mult_0_param_V_val1_update;

assign app_conv_mult_0_param_V_val1_status = (app_conv_mult_0_param_V_val_full_n & app_conv_mult_0_param_V_idx_dim_1_full_n & app_conv_mult_0_param_V_idx_dim_0_full_n & app_conv_mult_0_param_V_idx_blk_full_n);

assign app_conv_mult_0_param_V_val_din = tmp_reg_526[7:0];

assign app_conv_mult_0_param_V_val_write = app_conv_mult_0_param_V_val1_update;

assign app_input_data_V_data_V_read = app_input_data_V_len0_update;

assign app_input_data_V_eop_read = app_input_data_V_len0_update;

assign app_input_data_V_len_read = app_input_data_V_len0_update;

assign count_2_fu_393_p2 = (64'd1 + ap_phi_mux_count_phi_fu_288_p4);

assign empty_n_4_fu_385_p1 = app_params_V_empty_n;

assign empty_n_5_fu_381_p1 = reset_app_conv_dist_V_empty_n;

assign grp_nbread_fu_236_p4_0 = (app_input_data_V_len_empty_n & app_input_data_V_eop_empty_n & app_input_data_V_data_V_empty_n);

assign not_s_fu_484_p2 = (tmp_4_fu_478_p2 ^ 1'd1);

assign p_reset_1_fu_490_p2 = (not_s_fu_484_p2 & ap_phi_reg_pp0_iter1_reset_1_reg_328);

assign p_s_fu_497_p3 = ((tmp_4_fu_478_p2[0:0] === 1'b1) ? 32'd0 : reset_cnt_1_fu_472_p2);

assign reset_cnt_1_fu_472_p2 = (reset_cnt_fu_220 + 32'd1);

assign tmp_3_fu_399_p2 = ((count_2_fu_393_p2 == 64'd2048) ? 1'b1 : 1'b0);

assign tmp_4_fu_478_p2 = ((reset_cnt_1_fu_472_p2 == 32'd2048) ? 1'b1 : 1'b0);

endmodule //app_conv_dist
