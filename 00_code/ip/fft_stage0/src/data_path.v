module data_path(
	input wire clk,
	input rstn,
	
	input wire [31:0] x0_re_i,
	input wire [31:0] x0_im_i,
	input wire [31:0] x1_re_i,
	input wire [31:0] x1_im_i,
	
    input wire [8:0] bram_addr_i,
	
    input wire src_sel_i,
	input wire fft_ready_i,

    input wire bram_we_i,
    input wire bf_ce_i,

    output wire [31:0] x0_re_o,
    output wire [31:0] x0_im_o,
    output wire [31:0] x1_re_o,
    output wire [31:0] x1_im_o
);

/* ------- mux output -------*/
wire [31:0] x0_re_sel;
wire [31:0] x0_im_sel;
wire [31:0] x1_re_sel;
wire [31:0] x1_im_sel;

/* ------- ram output -------*/
wire [31:0] x0_re_ram;
wire [31:0] x0_im_ram;
wire [31:0] x1_re_ram;
wire [31:0] x1_im_ram;

/* ----- demux 1 output -----*/
wire [31:0] x0_re;
wire [31:0] x0_im;
wire [31:0] x1_re;
wire [31:0] x1_im;

/* ---- butterfly output ----*/
wire [31:0] X0_re;
wire [31:0] X0_im;
wire [31:0] X1_re;
wire [31:0] X1_im;

/* ----- twiddle factor -----*/
// w_re for stage0 is always 1 (4096 in fixed-point Q2.12)
reg [31:0] w_re = 32'd67108864;

/* --------------- Source select -------------- */
mux2_0 x0_re_mux (
    .d0(x0_re_i), 
    .d1(X0_re),
    .s(src_sel),  
    .y(x0_re_sel) 
);

mux2_0 x0_im_mux (
    .d0(x0_im_i), 
    .d1(X0_im), 
    .s(src_sel), 
    .y(x0_im_sel) 
);

mux2_0 x1_re_mux (
    .d0(x1_re_i),  
    .d1(X1_re), 
    .s(src_sel),  
    .y(x1_re_sel) 
);

mux2_0 x1_im_mux (
    .d0(x1_im_i), 
    .d1(X1_im),  
    .s(src_sel),   
    .y(x1_im_sel)  
);

/* ----- N/2 Brams for x0 and x1 (re and im) ----- */
bram_results x0_re_bram (
    .clka(clk),         
    .ena(1'b1),  
    .wea(bram_we_i),      
    .addra(bram_addr_i),
    .dina(x0_re_sel),  
    .douta(x0_re_ram) 
);

bram_results x0_im_bram (
    .clka(clk),    
    .ena(1'b1),   
    .wea(bram_we_i),        
    .addra(bram_addr_i), 
    .dina(x0_im_sel),  
    .douta(x0_im_ram)    
);

bram_results x1_re_bram (
    .clka(clk),    
    .ena(1'b1),
    .wea(bram_we_i),       
    .addra(bram_addr_i), 
    .dina(x1_re_sel),     
    .douta(x1_re_ram)         
);

bram_results x1_im_bram (
    .clka(clk),       
    .ena(1'b1),    
    .wea(bram_we_i),        
    .addra(bram_addr_i), 
    .dina(x1_im_sel),    
    .douta(x1_im_ram)     
);

/* --------------- FFT ready demux -------------- */
demux2_0 x0_re_demux (
    .d(x0_re_ram),
    .s(!fft_ready_i),
    .y0(x0_re_o),
    .y1(x0_re)
);

demux2_0 x0_im_demux (
    .d(x0_im_ram),
    .s(!fft_ready_i),
    .y0(x0_im_o),
    .y1(x0_im)
);

demux2_0 x1_re_demux (
    .d(x1_re_ram),
    .s(!fft_ready_i),
    .y0(x1_re_o),
    .y1(x1_re)
);

demux2_0 x1_im_demux (
    .d(x1_im_ram),
    .s(!fft_ready_i),
    .y0(x1_im_o),
    .y1(x1_im)
);

/* --------- butterfly unit --------- */
butterfly_stage0 butterfly_unit (
    .clk(clk),
    .CE(bf_ce_i),

    .x0_re_i(x0_re),
    .x0_im_i(x0_im),
    .x1_re_i(x1_re),
    .x1_im_i(x1_im),
    
    .w_re_i(w_re),  
    
    .X0_re_o(X0_re),
    .X0_im_o(X0_im),
    .X1_re_o(X1_re),
    .X1_im_o(X1_im) 
);

endmodule