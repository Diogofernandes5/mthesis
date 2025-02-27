`timescale 1ns / 1ps

module mul_dp #(
    parameter N = 1024,
    parameter J1 = 256 )
(
    input wire clk,
    input wire rstn,
    
    input wire [31:0] x_re_i,
    input wire [31:0] x_im_i,
    
    input wire bram_res_en_i,
    input wire bram_res_we_i,
    input wire [$clog2(N)-1:0] bram_res_addr_i,
    
    input wire bram_mul_en_i,
    input wire bram_mul_we_i,
    input wire [$clog2(N)-1:0] bram_mul_addr_i,
    
    input wire [$clog2(N*J1)-1:0] daughter_addr_i,
    
    output wire [31:0] X_re_o,
    output wire [31:0] X_im_o,

    /************************************/
    output wire [31:0] bram_res_re,
    output wire [31:0] bram_res_im,
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

assign rst = ~rstn;

/* Daughter wavelet coeficients to multiply by the fft results */ 
brom_daughter daughter_wave (
    .clka(~clk),    // input wire clka
    .addra(daughter_addr_i),  // input wire [15 : 0] addra
    .douta(brom_daughter)  // output wire [31 : 0] douta
);

/********* BRAM to Store the FFT results ***********/
bram_N_point bram_fft_res_re (
    .clka(~clk),    // input wire clka
    .rsta(rst),
    .ena(bram_res_en_i),      // input wire ena
    .wea(bram_res_we_i),      // input wire [0 : 0] wea
    .addra(bram_res_addr_i),  // input wire [9 : 0] addra
    .dina(x_re_i),    // input wire [31 : 0] dina
    .douta(bram_res_re)  // output wire [31 : 0] douta
);

bram_N_point bram_fft_res_im (
    .clka(~clk),    // input wire clka
    .rsta(rst),
    .ena(bram_res_en_i),      // input wire ena
    .wea(bram_res_we_i),      // input wire [0 : 0] wea
    .addra(bram_res_addr_i),  // input wire [9 : 0] addra
    .dina(x_im_i),    // input wire [31 : 0] dina
    .douta(bram_res_im)  // output wire [31 : 0] douta
);

/********* Logic to invert number if it is negative to make multiplication ***********/
mux2_0 x_re_mux ( // if number is negative, invert the number to make the multiplication
    .d0(bram_res_re),  
    .d1(~bram_res_re + 1'b1),
    .s(bram_res_re[31]),
    .y(x_re)
);

mux2_0 x_im_mux ( // if number is negative, invert the number to make the multiplication
    .d0(bram_res_im),  
    .d1(~bram_res_im + 1'b1),
    .s(bram_res_im[31]),
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
    .s(bram_res_re[31] ^ brom_daughter[31]),
    .y(x_re_m)
);

mux2_0 mult_x_im_mux ( // if number is negative, invert the number to make the multiplication
    .d0(mult_res_x_im),  
    .d1(~mult_res_x_im + 1'b1),
    .s(bram_res_im[31] ^ brom_daughter[31]),
    .y(x_im_m)
);

/* Store multiplication results */ 
bram_N_point bram_mult_res_x_re (
    .clka(~clk),    // input wire clka
    .rsta(rst),
    .ena(bram_mul_en_i),      // input wire ena
    .wea(bram_mul_we_i),      // input wire [0 : 0] wea
    .addra(bram_mul_addr_i),  // input wire [9 : 0] addra
    .dina(x_re_m),    // input wire [31 : 0] dina
    .douta(X_re_o)  // output wire [31 : 0] douta
);

bram_N_point bram_mult_res_x_im (
    .clka(~clk),    // input wire clka
    .rsta(rst),
    .ena(bram_mul_en_i),      // input wire ena
    .wea(bram_mul_we_i),      // input wire [0 : 0] wea
    .addra(bram_mul_addr_i),  // input wire [9 : 0] addra
    .dina(x_im_m),    // input wire [31 : 0] dina
    .douta(X_im_o)  // output wire [31 : 0] douta
);
 
endmodule
