module cwt #(
    parameter N = 1024,
    parameter J1 = 64)(
	input wire clk,
	input wire rstn,

	input wire start_i,
	input wire dl_busy_i,

	input wire [31:0] x_re_i,
	input wire [31:0] x_im_i,

	output wire busy_o,

	output wire [31:0] X_re_o,
	output wire [31:0] X_im_o,

	output wire cwt_done_o,

    /******************************/
	output wire fft_ready,
	output wire mul_busy,
	output wire mul_done,
	output wire ifft_busy,
	output wire ifft_ready,
	output wire store_busy,

	output wire [31:0] fft_re,
	output wire [31:0] fft_im,
	output wire [31:0] mul_re,
	output wire [31:0] mul_im,
	output wire [31:0] ifft_re,
	output wire [31:0] ifft_im,

	output wire bram_en,
	output wire bram_we,
	output wire [$clog2(N*J1)-1:0] bram_addr,

	output wire [1:0] state,
	
	/***************************/
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

    output wire [31:0] x_re_div,
	output wire [31:0] x_im_div,
	output wire start_ifft,
	
	output wire [$clog2(N)-1:0] bram_mul_addr,
	
	output wire [$clog2(J1):0] counter_j_mul,
	output wire [$clog2(J1):0] counter_j_cwt
);

// wire [31:0] fft_re;
// wire [31:0] fft_im;
// wire fft_ready;

// wire mul_busy;
// wire mul_done;
// wire [31:0] mul_re;
// wire [31:0] mul_im;

// wire [31:0] x_re_div;
// wire [31:0] x_im_div;
// wire start_ifft;

// wire ifft_busy;
// wire ifft_ready;
// wire [31:0] ifft_re;
// wire [31:0] ifft_im;

// wire bram_en;
// wire bram_we;
// wire [$clog2(N*J1)-1:0] bram_addr;

// wire store_busy;

wire rst;

fft_pipeline_ip fft (
	.clk(clk),                      
	.rstn(rstn),                    
	.start_i(start_i),              
	.dl_busy_i(mul_busy),          
	.x0_re_i(x_re_i),              
	.x0_im_i(x_im_i),              
	.fft_ready_o(fft_ready),      
	.busy_o(busy_o),                
	.x0_re_o(fft_re),             
	.x0_im_o(fft_im)              
);

mul_ip #(
	.N(N),
	.J1(J1)) mul (
	.clk(clk),
	.rstn(rstn),
	.fft_ready_i(fft_ready),
	.dl_busy_i(ifft_busy),
	.x_re_i(fft_re),
	.x_im_i(fft_im),
	.mul_done_o(mul_done),
	.busy_o(mul_busy),
	.X_re_o(mul_re),
	.X_im_o(mul_im),
	
	.bram_mul_addr(bram_mul_addr),
	
	.counter_j(counter_j_mul)
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
	.dl_busy_i(store_busy),   
	.x0_re_i(x_re_div),
	.x0_im_i(x_im_div),
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

cwt_cu #(
	.N(N),
	.J1(J1)) control_unit (
	.clk(clk),
	.rstn(rstn),
	.ifft_ready_i(ifft_ready),
	.dl_busy_i(dl_busy_i),
	.bram_en_o(bram_en),
	.bram_we_o(bram_we),
	.bram_addr_o(bram_addr),
	.cwt_done_o(cwt_done_o),
	.busy_o(store_busy),

	.state(state),
	
	.counter_j(counter_j_cwt)
);

assign rst = ~rstn;

bram_cwt_res cwt_re_res (
	.clka(~clk),             
	.rsta(rst),            
	.ena(bram_en),              
	.wea(bram_we),              
	.addra(bram_addr),          
	.dina(ifft_re),            
	.douta(X_re_o) 
);

bram_cwt_res cwt_im_res (
	.clka(~clk),             
	.rsta(rst),            
	.ena(bram_en),              
	.wea(bram_we),              
	.addra(bram_addr),          
	.dina(ifft_im),            
	.douta(X_im_o)   
);

endmodule