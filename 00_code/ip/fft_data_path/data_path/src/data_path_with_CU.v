module data_path_with_CU(
	input wire clk,
	input wire rstn,
	
	input wire start_i,
	
	input wire [31:0] x0_re_i,
	input wire [31:0] x0_im_i,
	input wire [31:0] x1_re_i,
	input wire [31:0] x1_im_i,
	
    input wire [27:0] w,

    output wire [31:0] x0_re_o,
    output wire [31:0] x0_im_o,
    output wire [31:0] x1_re_o,
    output wire [31:0] x1_im_o,
    

    output wire [2:0] state,
    output wire fft_ready_o,
    output wire [9:0] bram_addr,
    
    output wire bram_we,
    output wire bram_en,
    output wire bf_ce,
    
    output wire [31:0] X0_re_bf,
    output wire [31:0] X0_im_bf,
    output wire [31:0] X1_re_bf,
    output wire [31:0] X1_im_bf,
    
    output wire [31:0] x0_re_ram,
    output wire [31:0] x0_im_ram,
    output wire [31:0] x1_re_ram,
    output wire [31:0] x1_im_ram
);

wire src_sel;

/* ----- demux 1 output -----*/
wire [31:0] x0_re;
wire [31:0] x0_im;
wire [31:0] x1_re;
wire [31:0] x1_im;

data_path dut (
  .clk(clk),                  // input wire clk
  .rstn(rstn),                // input wire rstn
  .x0_re_i(x0_re_i),          // input wire [31 : 0] x0_re_i
  .x0_im_i(x0_im_i),          // input wire [31 : 0] x0_im_i
  .x1_re_i(x1_re_i),          // input wire [31 : 0] x1_re_i
  .x1_im_i(x1_im_i),          // input wire [31 : 0] x1_im_i
  .bram_addr_i(bram_addr),  // input wire [9 : 0] bram_addr_i
  .w(28'h4001),                      // input wire [27 : 0] w
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
  .twiddle_addr_o(twiddle_addr),  // output wire [10 : 0] twiddle_addr_o
  
  .state(state)
);

endmodule