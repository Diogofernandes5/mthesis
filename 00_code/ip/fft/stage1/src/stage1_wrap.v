module stage1_wrap(
    input wire clk,
    input wire rstn,
    input wire start_i,

    input wire [31:0] x0_re_i,
    input wire [31:0] x0_im_i,
    input wire [31:0] x1_re_i,
    input wire [31:0] x1_im_i,

    output wire [31:0] X0_re_o,
    output wire [31:0] X0_im_o,
    output wire [31:0] X1_re_o,
    output wire [31:0] X1_im_o,

    output wire fft_ready_o,
    
    output wire src_sel,
    output wire bram_we,
    output wire bf_ce,
    output wire [8:0] bram_addr
    );

// wire src_sel;
// wire bram_we;
// wire bf_ce;
// wire [8:0] bram_addr;

wire [8:0] twiddle_addr_o;
wire [27:0] w;

fft_control_unit control_unit (
    .clk(clk),
    .rstn(rstn),
    .start_i(start_i),
    .src_sel_o(src_sel),
    .fft_ready_o(fft_ready_o),
    .bram_we_o(bram_we),
    .bf_ce_o(bf_ce),
    .bram_addr_o(bram_addr),
    .twiddle_addr_o(twiddle_addr_o)
    );

fft_data_path data_path (
    .clk(clk),
    .rstn(rstn),
    .x0_re_i(x0_re_i),
    .x0_im_i(x0_im_i),
    .x1_re_i(x1_re_i),
    .x1_im_i(x1_im_i),
    .bram_addr_i(bram_addr),
    .w(w),
    .src_sel_i(src_sel),
    .fft_ready_i(fft_ready_o),
    .start_i(start_i),        
    .bram_we_i(bram_we),
    .bf_ce_i(bf_ce),
    .x0_re_o(X0_re_o),
    .x0_im_o(X0_im_o),
    .x1_re_o(X1_re_o),
    .x1_im_o(X1_im_o)
    );

stage1_dist_rom rom(
    .clk(clk),
    .addr(twiddle_addr_o),
    .dout(w)
    );

endmodule
