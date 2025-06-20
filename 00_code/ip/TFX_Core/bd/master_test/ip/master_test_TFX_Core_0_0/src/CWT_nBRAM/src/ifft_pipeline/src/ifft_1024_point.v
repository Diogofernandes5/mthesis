`timescale 1ns / 1ps

module ifft_1024_point #(
    parameter N = 1024
) (
    input clk,
    input rstn,
    
    input start_i,
    input dready_i,
    input dl_busy_i,
    
    input [31:0] x0_re_i,
    input [31:0] x0_im_i,
    
    output wire ifft_ready_o,
    output wire ifft_done_o,
    output wire busy_o,
    output wire [31:0] x0_re_o,
    output wire [31:0] x0_im_o
    );

/************* FIRST ARCH ************/
wire [31:0] X0_re_1st;
wire [31:0] X0_im_1st;

wire ifft_ready_1st;
wire ifft_done_1st;
wire busy_stage1;

/************* SECOND ARCH ************/
wire [31:0] X0_re_2nd;
wire [31:0] X0_im_2nd;

wire ifft_ready_2nd;
wire ifft_done_2nd;
wire busy_stage2;

ifft_architecture_0 #(N) stage_0_3 (
    .clk(clk),
    .rstn(rstn),
    
    .start_i(start_i),
    .dready_i(dready_i),

    .dl_busy_i(busy_stage1),
    
    .x0_re_i(x0_re_i),
    .x0_im_i(x0_im_i),
    
    .busy_o(busy_o),

    .ifft_ready_o(ifft_ready_1st),
    .ifft_done_o(ifft_done_1st),

    .x0_re_o(X0_re_1st),
    .x0_im_o(X0_im_1st)
);

ifft_architecture_1 #(N) stage_4_6 (
    .clk(clk),
    .rstn(rstn),
    
    .start_i(ifft_done_1st),
    .dready_i(ifft_ready_1st),
    
    .dl_busy_i(busy_stage2),

    .x0_re_i(X0_re_1st),
    .x0_im_i(X0_im_1st),
    
    .busy_o(busy_stage1),
    
    .ifft_ready_o(ifft_ready_2nd),
    .ifft_done_o(ifft_done_2nd),

    .x0_re_o(X0_re_2nd),
    .x0_im_o(X0_im_2nd)
);

ifft_architecture_2 #(N) stage_7_9 (
    .clk(clk),
    .rstn(rstn),
    
    .start_i(ifft_done_2nd),
    .dready_i(ifft_ready_2nd),

    .dl_busy_i(dl_busy_i),
    
    .x0_re_i(X0_re_2nd),
    .x0_im_i(X0_im_2nd),

    .busy_o(busy_stage2),
    
    .ifft_ready_o(ifft_ready_o),
    .ifft_done_o(ifft_done_o),

    .x0_re_o(x0_re_o),
    .x0_im_o(x0_im_o)
);

endmodule

//`timescale 1ns / 1ps

//module ifft_1024_point #(
//    parameter N = 1024
//) (
//    input clk,
//    input rstn,
    
//    input start_i,
//    input dready_i,
//    input dl_busy_i,
    
//    input [31:0] x0_re_i,
//    input [31:0] x0_im_i,
    
//    output wire ifft_ready_o,
//    output wire ifft_done_o,
//    output wire busy_o,
//    output reg [31:0] x0_re_o,
//    output reg [31:0] x0_im_o
//    );

///************* FIRST ARCH ************/
//wire [31:0] X0_re_1st;
//wire [31:0] X0_im_1st;

//wire ifft_ready_1st;
//wire ifft_done_1st;
//wire busy_stage1;

///************* SECOND ARCH ************/
//wire [31:0] X0_re_2nd;
//wire [31:0] X0_im_2nd;

//wire ifft_ready_2nd;
//wire ifft_done_2nd;
//wire busy_stage2;

//wire [31:0] X_re;
//wire [31:0] X_im;

//ifft_architecture_0 #(N) stage_0_3 (
//    .clk(clk),
//    .rstn(rstn),
    
//    .start_i(start_i),
//    .dready_i(dready_i),

//    .dl_busy_i(busy_stage1),
    
//    .x0_re_i(x0_re_i),
//    .x0_im_i(x0_im_i),
    
//    .busy_o(busy_o),

//    .ifft_ready_o(ifft_ready_1st),
//    .ifft_done_o(ifft_done_1st),

//    .x0_re_o(X0_re_1st),
//    .x0_im_o(X0_im_1st)
//);

//ifft_architecture_1 #(N) stage_4_6 (
//    .clk(clk),
//    .rstn(rstn),
    
//    .start_i(ifft_done_1st),
//    .dready_i(ifft_ready_1st),
    
//    .dl_busy_i(busy_stage2),

//    .x0_re_i(X0_re_1st),
//    .x0_im_i(X0_im_1st),
    
//    .busy_o(busy_stage1),
    
//    .ifft_ready_o(ifft_ready_2nd),
//    .ifft_done_o(ifft_done_2nd),

//    .x0_re_o(X0_re_2nd),
//    .x0_im_o(X0_im_2nd)
//);

//ifft_architecture_2 #(N) stage_7_9 (
//    .clk(clk),
//    .rstn(rstn),
    
//    .start_i(ifft_done_2nd),
//    .dready_i(ifft_ready_2nd),

//    .dl_busy_i(dl_busy_i),
    
//    .x0_re_i(X0_re_2nd),
//    .x0_im_i(X0_im_2nd),

//    .busy_o(busy_stage2),
    
//    .ifft_ready_o(ifft_ready_o),
//    .ifft_done_o(ifft_done_o),

//    .x0_re_o(X_re),
//    .x0_im_o(X_im)
//);

//always @(posedge clk or negedge rstn) begin
//    if(~rstn) begin
//        x0_re_o <= 'd0;
//        x0_im_o <= 'd0;
//    end 
//    else begin
//        x0_re_o <= X_re;
//        x0_im_o <= X_im;    
//    end
//end

//endmodule
