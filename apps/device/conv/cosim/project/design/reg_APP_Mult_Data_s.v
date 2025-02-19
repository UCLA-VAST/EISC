// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.op
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module reg_APP_Mult_Data_s (
        ap_clk,
        ap_rst,
        agg_result_data_V_write,
        agg_result_eop_write,
        ap_return_0,
        ap_return_1,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [511:0] agg_result_data_V_write;
input   agg_result_eop_write;
output  [511:0] ap_return_0;
output  [0:0] ap_return_1;
input   ap_ce;

reg[511:0] ap_return_0;
reg[0:0] ap_return_1;

wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage0;

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        ap_return_0 <= agg_result_data_V_write;
        ap_return_1 <= agg_result_eop_write;
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

endmodule //reg_APP_Mult_Data_s
