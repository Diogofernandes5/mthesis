`timescale 1ns / 1ps

module fft_1024_point #(
    parameter N = 8
) (
    input clk,
    input rstn,
    input start_i,
    
    input [31:0] x0_re_i,
    input [31:0] x0_im_i,
    input [31:0] x1_re_i,
    input [31:0] x1_im_i,

    output wire fft_ready_o,
    output wire [31:0] x0_re_o,
    output wire [31:0] x0_im_o,
    output wire [31:0] x1_re_o,
    output wire [31:0] x1_im_o,
    
    /**************************************/ 
    output wire [31:0] X0_re_1st,
    output wire [31:0] X0_im_1st,
    output wire [31:0] X1_re_1st,
    output wire [31:0] X1_im_1st,
    
    output wire fft_ready_1st,

    output wire [31:0] x0_re_ram,
    output wire [31:0] x0_im_ram,
    output wire [31:0] x1_re_ram,
    output wire [31:0] x1_im_ram,
    
    output wire [31:0] X0_re_bf,
    output wire [31:0] X0_im_bf,
    output wire [31:0] X1_re_bf,
    output wire [31:0] X1_im_bf,
    
    output wire [13:0] w_re,
    output wire [13:0] w_im,
    
    output wire [$clog2(N)-1:0] bram_addr_x0,
    output wire [$clog2(N)-1:0] bram_addr_x1,
    
    output wire bram_x0_en,
    output wire bram_x1_en,
    
    output wire [$clog2(N/2)-1:0] twiddle_addr,
    output wire [3:0] state
    /**************************************/
    );

/************* FIRST ARCH ************/
wire [31:0] X0_re_1st;
wire [31:0] X0_im_1st;
wire [31:0] X1_re_1st;
wire [31:0] X1_im_1st;

wire fft_ready_1st;

/************* SECOND ARCH ************/
 wire [31:0] X0_re_2st;
 wire [31:0] X0_im_2st;
 wire [31:0] X1_re_2st;
 wire [31:0] X1_im_2st;

 wire fft_ready_2st;

fft_architecture_0 #(N) stage_0_2(
    .clk(clk),
    .rstn(rstn),
    .x0_re_i(x0_re_i),
    .x0_im_i(x0_im_i),
    .x1_re_i(x1_re_i),
    .x1_im_i(x1_im_i),
    .start_i(start_i),
    
    .fft_ready_o(fft_ready_1st),
    .x0_re_o(X0_re_1st),
    .x0_im_o(X0_im_1st),
    .x1_re_o(X1_re_1st),
    .x1_im_o(X1_im_1st),
        
    .x0_re_ram(x0_re_ram),
    .x0_im_ram(x0_im_ram),
    .x1_re_ram(x1_re_ram),
    .x1_im_ram(x1_im_ram),
    
    .X0_re_bf(X0_re_bf),
    .X0_im_bf(X0_im_bf),
    .X1_re_bf(X1_re_bf),
    .X1_im_bf(X1_im_bf),
    
    .w_re(w_re),
    .w_im(w_im),
    
    .bram_addr_x0(bram_addr_x0),
    .bram_addr_x1(bram_addr_x1),
    .twiddle_addr(twiddle_addr),
    .bram_x0_en(bram_x0_en),
    .bram_x1_en(bram_x1_en),
    .state(state)
);

 fft_architecture_1 #(N) stage_3_3(
    .clk(clk),
    .rstn(rstn),
    .x0_re_i(X0_re_1st),
    .x0_im_i(X0_im_1st),
    .x1_re_i(X1_re_1st),
    .x1_im_i(X1_im_1st),
    .start_i(fft_ready_1st),
    
    .fft_ready_o(fft_ready_2st),
    .x0_re_o(X0_re_2st),
    .x0_im_o(X0_im_2st),
    .x1_re_o(X1_re_2st),
    .x1_im_o(X1_im_2st)
 );

 fft_architecture_2 #(N) stage_7_9(
    .clk(clk),
    .rstn(rstn),
    .x0_re_i(X0_re_2st),
    .x0_im_i(X0_im_2st),
    .x1_re_i(X1_re_2st),
    .x1_im_i(X1_im_2st),
    .start_i(fft_ready_2st),
    
    .fft_ready_o(fft_ready_o),
    .x0_re_o(x0_re_o),
    .x0_im_o(x0_im_o),
    .x1_re_o(x1_re_o),
    .x1_im_o(x1_im_o)
 );


endmodule
