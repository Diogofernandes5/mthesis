`timescale 1ns / 1ps

module mul_dp #(
    parameter N = 1024,
    parameter J1 = 256 )
(
    input wire clk,
    input wire rstn,
    
    input wire [31:0] x_re_i,
    input wire [31:0] x_im_i,
    
    input wire src_sel_i,
    
    input wire bram_en_i,
    input wire bram_we_i,
    input wire [$clog2(N)-1:0] bram_addr_i,
    
    input wire [$clog2(N*J1)-1:0] daughter_addr_i,
    
    output wire [31:0] X_re_o,
    output wire [31:0] X_im_o,

    /************************************/
    output wire [31:0] x_re_bram,
    output wire [31:0] x_im_bram,
    output wire [31:0] x_re_m,
    output wire [31:0] x_im_m,
    output wire [31:0] brom_daughter
);

wire rst;

/* Output of the fft results BRAM */
// wire [31:0] bram_res_re;
// wire [31:0] bram_res_im;

/* Invert results before multiplication*/
wire [31:0] x_re;
wire [31:0] x_im;

/* Results of multiplication before inverting */
wire [31:0] mult_res_x_re;
wire [31:0] mult_res_x_im;

/* Results of multiplication after inverting */
// wire [31:0] x_re_m;
// wire [31:0] x_im_m;

// wire [31:0] brom_daughter;

// src_sel mux
wire [31:0] x_re_src;
wire [31:0] x_im_src;

//wire [31:0] x_re_bram;
//wire [31:0] x_im_bram;

assign rst = ~rstn;

/* Daughter wavelet coeficients to multiply by the fft results */ 
brom_daughter daughter_wave (
    .clka(~clk),    // input wire clka
    .addra(daughter_addr_i),  // input wire [15 : 0] addra
    .douta(brom_daughter)  // output wire [31 : 0] douta
);

/* Mux to select if the input to the BRAM is the input port or the multiplication result */
mux2_0 x_re_src_mux (
    .d0(x_re_i),    // FFT result
    .d1(x_re_m),    // MUL result
    .s(src_sel_i),
    .y(x_re_src)
);

mux2_0 x_im_src_mux (
    .d0(x_im_i),    // FFT result
    .d1(x_im_m),    // MUL result
    .s(src_sel_i),
    .y(x_im_src)
);

/********* BRAM to store the FFT and MUL results ***********/
bram_N_point bram_re (
    .clka(~clk),    // input wire clka
    .rsta(rst),
    .ena(bram_en_i),      // input wire ena
    .wea(bram_we_i),      // input wire [0 : 0] wea
    .addra(bram_addr_i),  // input wire [9 : 0] addra
    .dina(x_re_src),    // input wire [31 : 0] dina
    .douta(x_re_bram)  // output wire [31 : 0] douta
);

bram_N_point bram_im (
    .clka(~clk),    // input wire clka
    .rsta(rst),
    .ena(bram_en_i),      // input wire ena
    .wea(bram_we_i),      // input wire [0 : 0] wea
    .addra(bram_addr_i),  // input wire [9 : 0] addra
    .dina(x_im_src),    // input wire [31 : 0] dina
    .douta(x_im_bram)  // output wire [31 : 0] douta
);

/********* Logic to invert number if it is negative to make multiplication ***********/
mux2_0 x_re_mux ( // if number is negative, invert the number to make the multiplication
    .d0(x_re_bram),  
    .d1(~x_re_bram + 1'b1),
    .s(x_re_bram[31]),
    .y(x_re)
);

mux2_0 x_im_mux ( // if number is negative, invert the number to make the multiplication
    .d0(x_im_bram),  
    .d1(~x_im_bram + 1'b1),
    .s(x_im_bram[31]),
    .y(x_im)
);

/********* Multiplication ***********/
multiplier_ip mult_x_re_mul (
    .CLK(clk),  // input wire CLK
    .A(x_re),      // input wire [31 : 0] A
    .B(brom_daughter),      // input wire [31 : 0] B
    .P(mult_res_x_re)      // output wire [31 : 0] P
);

multiplier_ip mult_x_im_mul (
    .CLK(clk),  // input wire CLK
    .A(x_im),      // input wire [31 : 0] A
    .B(brom_daughter),      // input wire [31 : 0] B
    .P(mult_res_x_im)      // output wire [31 : 0] P
);
 
/********* Logic to invert number if multiplication result must be negative ***********/
mux2_0 mult_x_re_mux ( // if number is negative, invert the number to make the multiplication
    .d0(mult_res_x_re),  
    .d1(~mult_res_x_re + 1'b1),
    .s(x_re_bram[31] ^ brom_daughter[31]),
    .y(x_re_m)
);

mux2_0 mult_x_im_mux ( // if number is negative, invert the number to make the multiplication
    .d0(mult_res_x_im),  
    .d1(~mult_res_x_im + 1'b1),
    .s(x_im_bram[31] ^ brom_daughter[31]),
    .y(x_im_m)
);

assign X_re_o = x_re_bram;
assign X_im_o = x_im_bram;
 
endmodule
