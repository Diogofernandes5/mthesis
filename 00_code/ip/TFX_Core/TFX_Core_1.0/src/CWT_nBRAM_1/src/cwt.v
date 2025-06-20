module cwt #(
    parameter N = 1024,
    parameter J1 = 64)(
	input wire clk,
	input wire rstn,

	input wire start_i,
	input wire dready_i,
	input wire dl_busy_i,

	input wire [31:0] x_re_i,
	input wire [31:0] x_im_i,

	output wire busy_o,

	output wire cwt_row_done_o,
	output wire cwt_row_ready_o,

	output wire [31:0] X_re_o,
	output wire [31:0] X_im_o,

	/********* for the TB *********/
	output wire fft_ready,
	output wire fft_done,
	output wire [31:0] fft_re,
	output wire [31:0] fft_im,

	output wire mul_ready,
	output wire mul_done,
	output wire [31:0] mul_re,
	output wire [31:0] mul_im,

	output wire [31:0] div_re,
	output wire [31:0] div_im
);

// wire fft_ready;
// wire fft_done;
// wire [31:0] fft_re;
// wire [31:0] fft_im;

// wire mul_ready;
// wire mul_done;
// wire [31:0] mul_re;
// wire [31:0] mul_im;

// wire div_ready;
// wire div_done;
// wire [31:0] div_re;
// wire [31:0] div_im;

wire mul_busy;
wire ifft_busy;

// wire bram_en;
// wire bram_we;
// wire [$clog2(N*J1)-1:0] bram_addr;

fft_pipeline_ip fft (
	.clk(clk),                      
	.rstn(rstn), 
	                   
	.dl_busy_i(mul_busy),          
	
	.start_i(start_i),
	.dready_i(dready_i),              
	
	.x0_re_i(x_re_i),              
	.x0_im_i(x_im_i),  
	            
	.busy_o(busy_o),       

	.fft_ready_o(fft_ready),
	.fft_done_o(fft_done),
	
	.x0_re_o(fft_re),             
	.x0_im_o(fft_im)              
);

mul_ip #(
	.N(N),
	.J1(J1)) mul (
	.clk(clk),
	.rstn(rstn),

	.dl_busy_i(ifft_busy),
	
	.fft_ready_i(fft_ready),
	.fft_done_i(fft_done),
	
	.x_re_i(fft_re),
	.x_im_i(fft_im),
	
	.busy_o(mul_busy),
	
	.mul_done_o(mul_done),
	.mul_ready_o(mul_ready),
	
	.X_re_o(mul_re),
	.X_im_o(mul_im)
);

divide_mul_res divide_mul (
	.clk(clk),
	.rstn(rstn),
	
	.x_re_i(mul_re),
	.x_im_i(mul_im),
	
	.x_re_o(div_re),
	.x_im_o(div_im)
);

ifft_pipeline ifft (
	.clk(clk),            
	.rstn(rstn),
	
	.start_i(mul_done),
	.dready_i(mul_ready),
	.dl_busy_i(dl_busy_i),  

	.x0_re_i(div_re),
	.x0_im_i(div_im),
	
	.busy_o(ifft_busy),

	.ifft_done_o(cwt_row_done_o),  
	.ifft_ready_o(cwt_row_ready_o),  
	
	.x0_re_o(X_re_o),
	.x0_im_o(X_im_o)
);

endmodule