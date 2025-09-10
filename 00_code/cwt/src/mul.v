module mul_ip #(
	parameter N = 1024,
	parameter J1 = 64) (

	input wire clk,
	input wire rstn,

	input wire fft_ready_i,
	input wire fft_done_i,
	input wire dl_busy_i,

	input wire [31:0] x_re_i,
	input wire [31:0] x_im_i,

	output wire mul_done_o,
	output wire mul_ready_o,
	output wire busy_o,

	output wire [31:0] X_re_o,
	output wire [31:0] X_im_o
);

wire bram_fft_en;
wire bram_fft_we;
wire [$clog2(N)-1:0] bram_fft_addr;

wire bram_mul_en;
wire bram_mul_we;
wire [$clog2(N)-1:0] bram_mul_addr;

wire [$clog2(N*J1)-1:0] daughter_addr;  

mul_dp #(
		.N(N),
		.J1(J1)
	) datapath (
		.clk(clk),
	    .rstn(rstn),
	    
	    .x_re_i(x_re_i),
	    .x_im_i(x_im_i), 

	    .bram_fft_en_i(bram_fft_en),
	    .bram_fft_we_i(bram_fft_we),
	    .bram_fft_addr_i(bram_fft_addr),	       
	    
	    .bram_mul_en_i(bram_mul_en),
	    .bram_mul_we_i(bram_mul_we),
	    .bram_mul_addr_i(bram_mul_addr),	       
	    
	    .daughter_addr_i(daughter_addr),	
	        
	    .X_re_o(X_re_o),
	    .X_im_o(X_im_o)
	);

mul_cu #(
		.N(N),
		.J1(J1)
	) controlunit (
		.clk(clk),
		.rstn(rstn),

		.fft_ready_i(fft_ready_i),
		.fft_done_i(fft_done_i),
		.dl_busy_i(dl_busy_i),

		.bram_fft_en_o(bram_fft_en),
		.bram_fft_we_o(bram_fft_we),
		.bram_fft_addr_o(bram_fft_addr),
		
		.bram_mul_en_o(bram_mul_en),
		.bram_mul_we_o(bram_mul_we),
		.bram_mul_addr_o(bram_mul_addr),
		
		.daughter_addr_o(daughter_addr),
		
		.busy_o(busy_o),
		.mul_done_o(mul_done_o),
		.mul_ready_o(mul_ready_o)
	);

endmodule