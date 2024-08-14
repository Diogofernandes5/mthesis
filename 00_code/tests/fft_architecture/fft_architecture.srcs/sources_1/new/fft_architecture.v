`timescale 1ns / 1ps

module fft_architecture(
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
    output wire [31:0] x1_im_o
    );
    
wire src_sel;
wire bram_we;
wire bram_en;
wire bf_ce;
wire [8:0] bram_addr;
wire [8:0] twiddle_addr;

wire [27:0] w;
wire [13:0] w_re;
wire [13:0] w_im;

wire [31:0] x0_re_ram;
wire [31:0] x0_im_ram;
wire [31:0] x1_re_ram;
wire [31:0] x1_im_ram;

wire [31:0] X0_re_bf;
wire [31:0] X0_im_bf;
wire [31:0] X1_re_bf;
wire [31:0] X1_im_bf;

fft_control_unit_0 control_unit (
  .clk(clk),                        // input wire clk
  .rstn(rstn),                      // input wire rstn
  .start_i(start_i),                // input wire start_i
  .src_sel_o(src_sel),            // output wire src_sel_o
  .fft_ready_o(fft_ready_o),        // output wire fft_ready_o
  .bram_we_o(bram_we),            // output wire bram_we_o
  .bram_en_o(bram_en),            // output wire bram_en_o
  .bf_ce_o(bf_ce),                // output wire bf_ce_o
  .bram_addr_o(bram_addr),        // output wire [10 : 0] bram_addr_o
  .twiddle_addr_o(twiddle_addr)  // output wire [10 : 0] twiddle_addr_o
);

fft_data_path_0 data_path (
  .clk(clk),                  // input wire clk
  .rstn(rstn),                // input wire rstn
  .x0_re_i(x0_re_i),          // input wire [31 : 0] x0_re_i
  .x0_im_i(x0_im_i),          // input wire [31 : 0] x0_im_i
  .x1_re_i(x1_re_i),          // input wire [31 : 0] x1_re_i
  .x1_im_i(x1_im_i),          // input wire [31 : 0] x1_im_i
  .bram_addr_i(bram_addr),  // input wire [9 : 0] bram_addr_i
  .w(w),                      // input wire [27 : 0] w
  .src_sel_i(src_sel),      // input wire src_sel_i
  .fft_ready_i(fft_ready_o),  // input wire fft_ready_i
  .bram_we_i(bram_we),      // input wire bram_we_i
  .bram_en_i(bram_en),      // input wire bram_en_i
  .bf_ce_i(bf_ce),          // input wire bf_ce_i
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
