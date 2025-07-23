module data_path #(
    parameter N = 1024
) (
	input wire clk,
	input wire rstn,
	
	input wire [31:0] x0_re_i,
	input wire [31:0] x0_im_i,
	
    input wire [$clog2(N)-1:0] bram_addr_x0_i,
    input wire [$clog2(N)-1:0] bram_addr_x1_i,
    
    input wire bram_x0_en_i,
    input wire bram_x1_en_i,
    
    input wire bram_x0_we_i,
    input wire bram_x1_we_i,
    
    input wire src_sel_i,
    
    input wire bf_ce_i,

    input wire [9:0] w_re_i,
    input wire [9:0] w_im_i,

    // input wire [27:0] w,
	
    input wire fft_ready_i,
    
    output wire [31:0] x0_re_o,
    output wire [31:0] x0_im_o
);

wire [31:0] x1_re_i;
wire [31:0] x1_im_i;

wire [31:0] x1_re_o;
wire [31:0] x1_im_o;
	

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
wire [31:0] X0_re_bf;
wire [31:0] X0_im_bf;
wire [31:0] X1_re_bf;
wire [31:0] X1_im_bf;

// /* ----- twiddle auxili -----*/
// wire [17:0] w_re;
// wire [17:0] w_im;

wire rst;

assign rst = ~rstn;

/* --------------- Source select -------------- */
mux2_0 x0_re_mux (
    .d0(x0_re_i), 
    .d1(X0_re_bf),
    .s(src_sel_i),  
    .y(x0_re_sel) 
);

mux2_0 x0_im_mux (
    .d0(x0_im_i), 
    .d1(X0_im_bf), 
    .s(src_sel_i), 
    .y(x0_im_sel) 
);

mux2_0 x1_re_mux (
    .d0(x1_re_i),  
    .d1(X1_re_bf), 
    .s(src_sel_i),  
    .y(x1_re_sel) 
);

mux2_0 x1_im_mux (
    .d0(x1_im_i), 
    .d1(X1_im_bf),  
    .s(src_sel_i),   
    .y(x1_im_sel)  
);

bram_results x_re_bram (
    .clka(~clk),                    // input wire clka
    .rsta(rst),                     // input wire rsta
    .ena(bram_x0_en_i),             // input wire ena
    .wea(bram_x0_we_i),             // input wire [0 : 0] wea
    .addra(bram_addr_x0_i),         // input wire [9 : 0] addra
    .dina(x0_re_sel),               // input wire [31 : 0] dina
    .douta(x0_re_ram),              // output wire [31 : 0] douta
    
    .clkb(~clk),                    // input wire clkb
    .rstb(rst),                     // input wire rstb
    .enb(bram_x1_en_i),             // input wire enb
    .web(bram_x1_we_i),             // input wire [0 : 0] web
    .addrb(bram_addr_x1_i),         // input wire [9 : 0] addrb
    .dinb(x1_re_sel),               // input wire [31 : 0] dinb
    .doutb(x1_re_ram)               // output wire [31 : 0] doutb
);

bram_results x_im_bram (
    .clka(~clk),                    // input wire clka
    .rsta(rst),                     // input wire rsta
    .ena(bram_x0_en_i),             // input wire ena
    .wea(bram_x0_we_i),             // input wire [0 : 0] wea
    .addra(bram_addr_x0_i),         // input wire [9 : 0] addra
    .dina(x0_im_sel),               // input wire [31 : 0] dina
    .douta(x0_im_ram),              // output wire [31 : 0] douta
    
    .clkb(~clk),                    // input wire clkb
    .rstb(rst),                     // input wire rstb
    .enb(bram_x1_en_i),             // input wire enb
    .web(bram_x1_we_i),             // input wire [0 : 0] web
    .addrb(bram_addr_x1_i),         // input wire [9 : 0] addrb
    .dinb(x1_im_sel),               // input wire [31 : 0] dinb
    .doutb(x1_im_ram)               // output wire [31 : 0] doutb
);

/* --------------- FFT ready demux -------------- */
demux2_0 x0_re_demux (
    .d(x0_re_ram),
    .s(~fft_ready_i),
    .y0(x0_re_o),
    .y1(x0_re)
);

demux2_0 x0_im_demux (
    .d(x0_im_ram),
    .s(~fft_ready_i),
    .y0(x0_im_o),
    .y1(x0_im)
);

demux2_0 x1_re_demux (
    .d(x1_re_ram),
    .s(~fft_ready_i),
    .y0(x1_re_o),
    .y1(x1_re)
);

demux2_0 x1_im_demux (
    .d(x1_im_ram),
    .s(~fft_ready_i),
    .y0(x1_im_o),
    .y1(x1_im)
);

/* --------- butterfly unit --------- */
butterfly_full_ip_0 butterfly_unit (
    .clk(clk),
    .rstn(rstn),
    .CE(bf_ce_i),

    .x0_re_i(x0_re),
    .x0_im_i(x0_im),
    .x1_re_i(x1_re),
    .x1_im_i(x1_im),

    // .w_re_i({w_re, w[27:14]}),  
    // .w_im_i({w_im, w[13:0]}),  

    .w_re_i(w_re_i),  
    .w_im_i(w_im_i),  
    
    .X0_re_o(X0_re_bf),
    .X0_im_o(X0_im_bf),
    .X1_re_o(X1_re_bf),
    .X1_im_o(X1_im_bf) 
);

/* --- Twiddle factors(re and im) --- */
// mux2_twiddle twiddle_re (
//     .d0({18{1'b0}}), 
//     .d1({18{1'b1}}),
//     .s(w[27]),  
//     .y(w_re) 
// );

// mux2_twiddle twiddle_im (
//     .d0({18{1'b0}}), 
//     .d1({18{1'b1}}),
//     .s(w[13]),  
//     .y(w_im) 
// );

endmodule