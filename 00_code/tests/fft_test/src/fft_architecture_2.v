`timescale 1ns / 1ps

module fft_architecture_2 #(
    parameter N = 1024
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
    
wire src_sel;

//wire bram_en;

wire bram_x0_we;    
wire bram_x1_we;

//wire [$clog2(N)-1:0] bram_addr_x0;
//wire [$clog2(N)-1:0] bram_addr_x1;

//wire [$clog2(N)-1:0] twiddle_addr;

wire [27:0] w;

wire bf_ce;

//wire [13:0] w_re;
//wire [13:0] w_im;

//wire [31:0] x0_re_ram;
//wire [31:0] x0_im_ram;
//wire [31:0] x1_re_ram;
//wire [31:0] x1_im_ram;

//wire [31:0] X0_re_bf;
//wire [31:0] X0_im_bf;
//wire [31:0] X1_re_bf;
//wire [31:0] X1_im_bf;

fft_control_unit_2 control_unit (
    .clk(clk),                        // input wire clk
    .rstn(rstn),                      // input wire rstn
    .start_i(start_i),                // input wire start_i
    
    .src_sel_o(src_sel),            // output wire src_sel_o
    .fft_ready_o(fft_ready_o),        // output wire fft_ready_o
    .bram_addr_x0_o(bram_addr_x0),  // output wire [10 : 0] bram_addr_x0_o
    .bram_addr_x1_o(bram_addr_x1),  // output wire [10 : 0] bram_addr_x1_o
    .bram_x0_we_o(bram_x0_we),      // output wire bram_x0_we_o
    .bram_x1_we_o(bram_x1_we),      // output wire bram_x1_we_o
    .bram_x0_en_o(bram_x0_en),            // output wire bram_en_o
    .bram_x1_en_o(bram_x1_en),            // output wire bram_en_o
    .bf_ce_o(bf_ce),                // output wire bf_ce_o
    .twiddle_addr_o(twiddle_addr),  // output wire [8 : 0] twiddle_addr_o
    
    .state(state)
);

fft_data_path_2 data_path (
    .clk(clk),                  // input wire clk
    .rstn(rstn),                // input wire rstn
    .x0_re_i(x0_re_i),          // input wire [31 : 0] x0_re_i
    .x0_im_i(x0_im_i),          // input wire [31 : 0] x0_im_i
    .x1_re_i(x1_re_i),          // input wire [31 : 0] x1_re_i
    .x1_im_i(x1_im_i),          // input wire [31 : 0] x1_im_i
    .bram_addr_x0_i(bram_addr_x0),  // input wire [10 : 0] bram_addr_x0_i
    .bram_addr_x1_i(bram_addr_x1),  // input wire [10 : 0] bram_addr_x1_i
    .bram_x0_en_i(bram_x0_en),      // input wire bram_en_i
    .bram_x1_en_i(bram_x1_en),      // input wire bram_en_i
    .bram_x0_we_i(bram_x0_we),      // input wire bram_x0_we_i
    .bram_x1_we_i(bram_x1_we),      // input wire bram_x1_we_i
    .w(w),                      // input wire [27 : 0] w
    .src_sel_i(src_sel),      // input wire src_sel_i
    .bf_ce_i(bf_ce),          // input wire bf_ce_i
    .fft_ready_i(fft_ready_o),  // input wire fft_ready_i
    
    .x0_re_o(x0_re_o),          // output wire [31 : 0] x0_re_o
    .x0_im_o(x0_im_o),          // output wire [31 : 0] x0_im_o
    .x1_re_o(x1_re_o),          // output wire [31 : 0] x1_re_o
    .x1_im_o(x1_im_o),          // output wire [31 : 0] x1_im_o
    
    .X0_re_bf(X0_re_bf),        // output wire [31 : 0] X0_re_bf
    .X0_im_bf(X0_im_bf),        // output wire [31 : 0] X0_im_bf
    .X1_re_bf(X1_re_bf),        // output wire [31 : 0] X1_re_bf
    .X1_im_bf(X1_im_bf),        // output wire [31 : 0] X1_im_bf
    .x0_re_ram(x0_re_ram),      // output wire [31 : 0] x0_re_ram
    .x0_im_ram(x0_im_ram),      // output wire [31 : 0] x0_im_ram
    .x1_re_ram(x1_re_ram),      // output wire [31 : 0] x1_re_ram
    .x1_im_ram(x1_im_ram)      // output wire [31 : 0] x1_im_ram
);

w_re_bram twiddle_re (
    .clka(clk),    // input wire clka
    .addra(twiddle_addr),  // input wire [8 : 0] addra
    .douta(w_re)  // output wire [31 : 0] douta
);

w_im_bram twiddle_im (
    .clka(clk),    // input wire clka
    .addra(twiddle_addr),  // input wire [8 : 0] addra
    .douta(w_im)  // output wire [31 : 0] douta
);

assign w = {w_re,w_im};

endmodule
