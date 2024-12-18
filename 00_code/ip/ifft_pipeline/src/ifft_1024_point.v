`timescale 1ns / 1ps

module ifft_1024_point #(
    parameter N = 1024
) (
    input clk,
    input rstn,
    input start_i,
    
    input [31:0] x0_re_i,
    input [31:0] x0_im_i,
    input dl_busy_i,

    output wire ifft_ready_o,
    output wire busy_o,
    output wire [31:0] x0_re_o,
    output wire [31:0] x0_im_o,
    
    /**************************************/ 
    output wire [31:0] X0_re_1st,
    output wire [31:0] X0_im_1st,
    
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
    output wire bram_x0_we,    
    output wire bram_x1_we,
    
    output wire [$clog2(N/2)-1:0] twiddle_addr,
    output wire [3:0] state

    /**************************************/
    );

/************* FIRST ARCH ************/
//wire [31:0] X0_re_1st;
//wire [31:0] X0_im_1st;

//wire fft_ready_1st;
wire busy_stage1;

/************* SECOND ARCH ************/
wire [31:0] X0_re_2nd;
wire [31:0] X0_im_2nd;

wire fft_ready_2nd;
wire busy_stage2;

ifft_architecture_0 #(N) stage_0_3 (
    .clk(clk),
    .rstn(rstn),
    .x0_re_i(x0_re_i),
    .x0_im_i(x0_im_i),
    .start_i(start_i),
    .dl_busy_i(busy_stage1),
    
    .ifft_ready_o(fft_ready_1st),
    .busy_o(busy_o),
    .x0_re_o(X0_re_1st),
    .x0_im_o(X0_im_1st),
    
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
    .bram_x0_we(bram_x0_we),
    .bram_x1_we(bram_x1_we),
    .state(state)
);

ifft_architecture_1 #(N) stage_4_6 (
    .clk(clk),
    .rstn(rstn),
    .x0_re_i(X0_re_1st),
    .x0_im_i(X0_im_1st),
    .start_i(fft_ready_1st),
    .dl_busy_i(busy_stage2),
    
    .ifft_ready_o(fft_ready_2nd),
    .busy_o(busy_stage1),
    .x0_re_o(X0_re_2nd),
    .x0_im_o(X0_im_2nd)
);

ifft_architecture_2 #(N) stage_7_9 (
    .clk(clk),
    .rstn(rstn),
    .x0_re_i(X0_re_2nd),
    .x0_im_i(X0_im_2nd),
    .start_i(fft_ready_2nd),
    .dl_busy_i(dl_busy_i),

    .ifft_ready_o(ifft_ready_o),
    .busy_o(busy_stage2),
    .x0_re_o(x0_re_o),
    .x0_im_o(x0_im_o)
);

endmodule
