`timescale 1ns / 1ps

module fft_1024_point #(
    parameter N = 256
) (
    input clk,
    input rstn,
    
    input start_i,
    input dready_i,

    input dl_busy_i,
    
    input [31:0] x0_re_i,
    input [31:0] x0_im_i,
    
    output wire busy_o,

    output wire fft_ready_o,
    output wire fft_done_o,
    
    output wire [31:0] x0_re_o,
    output wire [31:0] x0_im_o
    );

localparam TWIDDLE_WIDTH = 10;

/************* FIRST ARCH ************/
wire [31:0] X0_re_1st;
wire [31:0] X0_im_1st;

wire fft_ready_1st;
wire fft_done_1st;
wire busy_stage1;

/************* SECOND ARCH ************/
wire [31:0] X0_re_2nd;
wire [31:0] X0_im_2nd;

wire fft_ready_2nd;
wire fft_done_2nd;
wire busy_stage2;

fft_architecture_0 #(
    .N(N),
    .TWIDDLE_WIDTH(TWIDDLE_WIDTH))
stage_0_2 (
    .clk(clk),
    .rstn(rstn),
    
    .x0_re_i(x0_re_i),
    .x0_im_i(x0_im_i),
    
    .start_i(start_i),
    .dready_i(dready_i),
    .dl_busy_i(busy_stage1),
    
    .fft_ready_o(fft_ready_1st),
    .fft_done_o(fft_done_1st),
    .busy_o(busy_o),
    .x0_re_o(X0_re_1st),
    .x0_im_o(X0_im_1st)
);

fft_architecture_1 #(
    .N(N),
    .TWIDDLE_WIDTH(TWIDDLE_WIDTH))
stage_3_6 (
    .clk(clk),
    .rstn(rstn),
    
    .x0_re_i(X0_re_1st),
    .x0_im_i(X0_im_1st),
    
    .start_i(fft_done_1st),
    .dready_i(fft_ready_1st),
    .dl_busy_i(busy_stage2),
    
    .fft_ready_o(fft_ready_2nd),
    .fft_done_o(fft_done_2nd),
    .busy_o(busy_stage1),
    .x0_re_o(X0_re_2nd),
    .x0_im_o(X0_im_2nd)
);

fft_architecture_2 #(
    .N(N),
    .TWIDDLE_WIDTH(TWIDDLE_WIDTH)) 
stage_7_9 (
    .clk(clk),
    .rstn(rstn),
    
    .x0_re_i(X0_re_2nd),
    .x0_im_i(X0_im_2nd),
    
    .start_i(fft_done_2nd),
    .dready_i(fft_ready_2nd),
    .dl_busy_i(dl_busy_i),
    
    .fft_ready_o(fft_ready_o),
    .fft_done_o(fft_done_o),
    .busy_o(busy_stage2),
    .x0_re_o(x0_re_o),
    .x0_im_o(x0_im_o)
);

endmodule