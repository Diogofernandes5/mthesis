module mul_ip #(
	parameter N = 1024,
	parameter J1 = 64) (

	input wire clk,
	input wire rstn,

	input wire fft_ready_i,
	input wire dl_busy_i,

	input wire [31:0] x_re_i,
	input wire [31:0] x_im_i,

	output wire mul_done_o,
	output wire busy_o,

	output wire [31:0] X_re_o,
	output wire [31:0] X_im_o,

	/*****************************************/
    output wire bram_res_en,
    output wire bram_res_we,
    output wire [$clog2(N)-1:0] bram_res_addr,
    
    output wire bram_mul_en,
    output wire bram_mul_we,
    output wire [$clog2(N)-1:0] bram_mul_addr,
    
    output wire [$clog2(N*J1)-1:0] daughter_addr,
    
    /*********** TESTS **********/
    output wire [2:0] state,
    output wire [$clog2(N):0] data_counter,
    output wire [$clog2(N):0] counter_n,
    output wire [$clog2(J1):0] counter_j,
    
    output wire [2:0] cycle_counter,

    output wire [31:0] bram_res_re,
    output wire [31:0] bram_res_im,
    output wire [31:0] x_re_m,
    output wire [31:0] x_im_m,
    output wire [31:0] brom_daughter
);

mul_dp #(
		.N(N),
		.J1(J1)
	) datapath (
		.clk(clk),
	    .rstn(rstn),
	    .x_re_i(x_re_i),
	    .x_im_i(x_im_i),    
	    .bram_res_en_i(bram_res_en),
	    .bram_res_we_i(bram_res_we),
	    .bram_res_addr_i(bram_res_addr),	    
	    .bram_mul_en_i(bram_mul_en),
	    .bram_mul_we_i(bram_mul_we),
	    .bram_mul_addr_i(bram_mul_addr),	    
	    .daughter_addr_i(daughter_addr),	    
	    .X_re_o(X_re_o),
	    .X_im_o(X_im_o),

	    .bram_res_re(bram_res_re),
		.bram_res_im(bram_res_im),
		.x_re_m(x_re_m),
		.x_im_m(x_im_m),
		.brom_daughter(brom_daughter)
	);

mul_cu #(
		.N(N),
		.J1(J1)
	) controlunit (
		.clk(clk),
		.rstn(rstn),

		.fft_ready_i(fft_ready_i),
		.dl_busy_i(dl_busy_i),

		.bram_res_en_o(bram_res_en),
		.bram_res_we_o(bram_res_we),
		.bram_res_addr_o(bram_res_addr),
		.bram_mul_en_o(bram_mul_en),
		.bram_mul_we_o(bram_mul_we),
		.bram_mul_addr_o(bram_mul_addr),
		.daughter_addr_o(daughter_addr),
		
		.busy_o(busy_o),
		.start_ifft_o(mul_done_o),

		/*************************/
		.state(state),
		.data_counter(data_counter),
		.counter_n(counter_n),
		.counter_j(counter_j),
		.cycle_counter(cycle_counter)
	);

endmodule