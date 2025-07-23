`timescale 1ns / 1ps

module ifft_architecture_1 #(
    parameter N = 1024,
    parameter TWIDDLE_WIDTH = 10
) (
    input clk,
    input rstn,
    
    input start_i,
    input dready_i,
    
    input dl_busy_i,
    
    input [31:0] x0_re_i,
    input [31:0] x0_im_i,
    
    output wire busy_o,

    output wire ifft_ready_o,
    output wire ifft_done_o,

    output wire [31:0] x0_re_o,
    output wire [31:0] x0_im_o
    );
    
wire src_sel;

wire bram_x0_en;
wire bram_x1_en;
wire bram_x0_we;    
wire bram_x1_we;
wire [$clog2(N)-1:0] bram_addr_x0;
wire [$clog2(N)-1:0] bram_addr_x1;

wire [$clog2(N/2)-1:0] twiddle_addr;

wire bf_ce;

wire [TWIDDLE_WIDTH-1:0] w_re;
wire [TWIDDLE_WIDTH-1:0] w_im;

ifft_control_unit_1 control_unit (
    .clk(clk),                        // input wire clk
    .rstn(rstn),                      // input wire rstn
    
    .start_i(start_i),                // input wire start_i
    .dready_i(dready_i),
    .dl_busy_i(dl_busy_i),
    
    .src_sel_o(src_sel),            // output wire src_sel_o
    .fft_ready_o(ifft_ready_o),        // output wire ifft_ready_o
    .fft_done_o(ifft_done_o),
    .busy_o(busy_o),
    .bram_addr_x0_o(bram_addr_x0),  // output wire [10 : 0] bram_addr_x0_o
    .bram_addr_x1_o(bram_addr_x1),  // output wire [10 : 0] bram_addr_x1_o
    .bram_x0_we_o(bram_x0_we),      // output wire bram_x0_we_o
    .bram_x1_we_o(bram_x1_we),      // output wire bram_x1_we_o
    .bram_x0_en_o(bram_x0_en),            // output wire bram_en_o
    .bram_x1_en_o(bram_x1_en),            // output wire bram_en_o
    .bf_ce_o(bf_ce),                // output wire bf_ce_o
    .twiddle_addr_o(twiddle_addr)
);

fft_data_path_1 data_path (
    .clk(clk),                  // input wire clk
    .rstn(rstn),                // input wire rstn
    
    .x0_re_i(x0_re_i),          // input wire [31 : 0] x0_re_i
    .x0_im_i(x0_im_i),          // input wire [31 : 0] x0_im_i
    
    .bram_addr_x0_i(bram_addr_x0),  // input wire [10 : 0] bram_addr_x0_i
    .bram_addr_x1_i(bram_addr_x1),  // input wire [10 : 0] bram_addr_x1_i
    .bram_x0_en_i(bram_x0_en),      // input wire bram_en_i
    .bram_x1_en_i(bram_x1_en),      // input wire bram_en_i
    .bram_x0_we_i(bram_x0_we),      // input wire bram_x0_we_i
    .bram_x1_we_i(bram_x1_we),      // input wire bram_x1_we_i
    .w_re_i(w_re),                      // input wire [27 : 0] w
    .w_im_i(w_im),                      // input wire [27 : 0] w
    .src_sel_i(src_sel),      // input wire src_sel_i
    .bf_ce_i(bf_ce),          // input wire bf_ce_i
    .fft_ready_i(ifft_ready_o),  // input wire fft_ready_i
    
    .x0_re_o(x0_re_o),          // output wire [31 : 0] x0_re_o
    .x0_im_o(x0_im_o)         // output wire [31 : 0] x0_im_o
);

ifft_w_re_brom twiddle_re (
    .clka(clk),    // input wire clka
    .addra(twiddle_addr),  // input wire [8 : 0] addra
    .douta(w_re)  // output wire [31 : 0] douta
);

ifft_w_im_brom twiddle_im (
    .clka(clk),    // input wire clka
    .addra(twiddle_addr),  // input wire [8 : 0] addra
    .douta(w_im)  // output wire [31 : 0] douta
);

endmodule
