module test_ifft_with_mul(
	 parameter N = 1024,
	 parameter J1 = 64
) (
    input clk,
    input rstn,
    input start_i,
    
    input [31:0] x_re_i,
    input [31:0] x_im_i,
    input dl_busy_i,

    output wire ifft_ready_o,
    output wire busy_o,
    output wire [31:0] x_re_o,
    output wire [31:0] x_im_o,
    
    /**************************************/ 
    output wire mul_done,
    output wire [31:0] mul_re,
	output wire [31:0] mul_im,
	output wire [$clog2(N)-1:0] bram_mul_addr,

	output wire [31:0] x_re_div,
	output wire [31:0] x_im_div,
	output wire start_ifft,

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

wire mul_busy;

mul_ip #(
	.N(N),
	.J1(J1)) mul (
	.clk(clk),
	.rstn(rstn),
	.fft_ready_i(start_i),
	.dl_busy_i(ifft_busy),
	.x_re_i(x_re_i),
	.x_im_i(x_im_i),
	.mul_done_o(mul_done),
	.busy_o(mul_busy),
	.X_re_o(mul_re),
	.X_im_o(mul_im),
	
	.bram_mul_addr(bram_mul_addr)
);

divide_mul_res divide_mul (
	.clk(clk),
	.rstn(rstn),
	.x_re_i(mul_re),
	.x_im_i(mul_im),
	.start_i(mul_done),
	.x_re_o(x_re_div),
	.x_im_o(x_im_div),
	.start_o(start_ifft)
);

ifft_pipeline ifft (
	.clk(clk),            
	.rstn(rstn),
	.start_i(start_ifft),
	.dl_busy_i(dl_busy_i),   
	.x0_re_i(mul_re),
	.x0_im_i(mul_im),
	.ifft_ready_o(ifft_ready),  
	.busy_o(ifft_busy),
	.x0_re_o(ifft_re),
	.x0_im_o(ifft_im),
	
	/******************************/
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
    .bram_x1_en(bram_x1_en)
);

endmodule