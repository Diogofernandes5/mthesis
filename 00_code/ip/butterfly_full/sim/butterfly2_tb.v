`timescale 1ns / 1ps

module butterfly2_tb();

`define CLK_PERIOD 10
    
reg clk;
reg rstn;
reg CE;

reg [31:0] x0_re_i;
reg [31:0] x0_im_i;
reg [31:0] x1_re_i;
reg [31:0] x1_im_i;
reg [31:0] w_re_i;
reg [31:0] w_im_i;

wire [31:0] X0_re_o;
wire [31:0] X0_im_o;
wire [31:0] X1_re_o;
wire [31:0] X1_im_o;
    
wire [31:0] x1_re_x_w_re;
wire [31:0] x1_im_x_w_im;
wire [31:0] x1_re_x_w_im;
wire [31:0] x1_im_x_w_re;

wire [31:0] z_re_r;
wire [31:0] z_im_r;

wire [31:0] z_re;
wire [31:0] z_im;

wire [31:0] z_re_shifted;
wire [31:0] z_im_shifted;
//    wire X0_re_add_v;
//    wire X0_im_add_v;
//    wire X1_re_sub_v;
//    wire X1_im_sub_v;
//    wire z_re_sub_v;
//    wire z_im_add_v;

always #(`CLK_PERIOD/2) clk = ~clk;
    
initial begin
    clk <= 1;
    rstn <= 0;
        
    #(`CLK_PERIOD*2) rstn <= 1;
end
  
butterfly_full dut (
    .clk(clk),
    .rstn(rstn),
    .CE(CE),
    
    .x0_re_i(x0_re_i),
    .x0_im_i(x0_im_i),
    .x1_re_i(x1_re_i),
    .x1_im_i(x1_im_i),
    .w_re_i(w_re_i),
    .w_im_i(w_im_i),
    
    .X0_re_o(X0_re_o),
    .X0_im_o(X0_im_o),
    .X1_re_o(X1_re_o),
    .X1_im_o(X1_im_o),
    
    .x1_re_x_w_re_r(x1_re_x_w_re),
    .x1_im_x_w_im_r(x1_im_x_w_im),
    .x1_re_x_w_im_r(x1_re_x_w_im),
    .x1_im_x_w_re_r(x1_im_x_w_re),

    .z_re_r(z_re_r),
    .z_im_r(z_im_r),
    
    .z_re(z_re),
    .z_im(z_im),
    
    .z_re_shifted(z_re_shifted),
    .z_im_shifted(z_im_shifted)

//        .X0_re_add_v(X0_re_add_v),
//        .X0_im_add_v(X0_im_add_v),
//        .X1_re_sub_v(X1_re_sub_v),
//        .X1_im_sub_v(X1_im_sub_v),
//        .z_re_sub_v(z_re_sub_v),
//        .z_im_add_v(z_im_add_v)
);


/***************** FOR FRAC_LEN = 8 *****************/
initial begin 
    CE <= 0;
    x0_re_i <= 32'h00000000;  // 0
    x0_im_i <= 32'h00000000;  // 0
    
    x1_re_i <= 32'h00000000;  // 0
    x1_im_i <= 32'h00000000;  // 0
    
    w_re_i <= 32'h00000000;   // 0
    w_im_i <= 32'h00000000;   // 0

    #(`CLK_PERIOD*10);
          
    x0_re_i <= 32'h00000100;  // 1.0 in fixed-point (1.0 * 256)
    x0_im_i <= 32'h00000200;  // 2.0 in fixed-point (2.0 * 256)
    
    x1_re_i <= 32'h00000100;  // 1.0 in fixed-point (1.0 * 256)
    x1_im_i <= 32'h00000200;  // 2.0 in fixed-point (2.0 * 256)
    
    w_re_i <= 32'h00000100;   // 1.0 in fixed-point (1.0 * 256)
    w_im_i <= 32'h00000200;   // 2.0 in fixed-point (2.0 * 256)
    
    #(`CLK_PERIOD*8) CE <= 1;
    
    #(`CLK_PERIOD*1) CE <= 0;
    // Expected results:
    // x0_re_o = x0_re_i + ((x1_re_i * w_re_i - x1_im_i * w_im_i) >> 8) = 1 + ((1 * 1 - 2 * 2) >> 8) = 1 + (-3) = -2 in fixed-point (-512 / 256)
    // x0_im_o = x0_im_i + ((x1_re_i * w_im_i + x1_im_i * w_re_i) >> 8) = 2 + ((1 * 2 + 2 * 1) >> 8) = 2 + 4 = 6 in fixed-point (1536 / 256)
    // x1_re_o = x0_re_i - ((x1_re_i * w_re_i - x1_im_i * w_im_i) >> 8) = 1 - ((1 * 1 - 2 * 2) >> 8) = 1 - (-3) = 4 in fixed-point (1024 / 256)
    // x1_im_o = x0_im_i - ((x1_re_i * w_im_i + x1_im_i * w_re_i) >> 8) = 2 - ((1 * 2 + 2 * 1) >> 8) = 2 - 4 = -2 in fixed-point (-512 / 256)

    x0_re_i <= 32'h00000500;  // 5.0 in fixed-point (5.0 * 256)
    x0_im_i <= 32'h00000600;  // 6.0 in fixed-point (6.0 * 256)
    
    x1_re_i <= 32'hFFFFFF00;  // -1.0 in fixed-point (-1.0 * 256)
    x1_im_i <= 32'hFFFFFF00;  // -1.0 in fixed-point (-1.0 * 256)
    
    w_re_i <= 32'h00000200;   // 2.0 in fixed-point (2.0 * 256)
    w_im_i <= 32'hFFFFFE00;   // -2.0 in fixed-point (-2.0 * 256)
    
    #(`CLK_PERIOD*8) CE <= 1;
    
    #(`CLK_PERIOD*1) CE <= 0;
    // Expected results:
    // x0_re_o = 1 in fixed-point (256 / 256)
    // x0_im_o = 6 in fixed-point (1536 / 256)
    // x1_re_o = 9 in fixed-point (2304 / 256)
    // x1_im_o = 6 in fixed-point (1536 / 256)

    x0_re_i <= 32'h00000A00;  // 10.0 in fixed-point (10.0 * 256)
    x0_im_i <= 32'h00000B00;  // 11.0 in fixed-point (11.0 * 256)
    
    x1_re_i <= 32'h00000C00;  // 12.0 in fixed-point (12.0 * 256)
    x1_im_i <= 32'h00000D00;  // 13.0 in fixed-point (13.0 * 256)
    
    w_re_i <= 32'h00000180;   // 1.5 in fixed-point (1.5 * 256)
    w_im_i <= 32'hFFFFFD80;   // -1.5 in fixed-point (-1.5 * 256)
    
    #(`CLK_PERIOD*8) CE <= 1;
    
    #(`CLK_PERIOD*1) CE <= 0;
    // Expected results:
    // x0_re_o ≈ 60.5 in fixed-point (15488 / 256)
    // x0_im_o ≈ 0.5 in fixed-point (128 / 256)
    // x1_re_o ≈ -40.5 in fixed-point (-10368 / 256)
    // x1_im_o ≈ 21.5 in fixed-point (5504 / 256)

    x0_re_i <= 32'h00000000;  // 0
    x0_im_i <= 32'h00000800;  // 8.0 in fixed-point (8.0 * 256)
    
    x1_re_i <= 32'hFFFFF600;  // -10.0 in fixed-point (-10.0 * 256)
    x1_im_i <= 32'hFFFFF400;  // -12.0 in fixed-point (-12.0 * 256)
    
    w_re_i <= 32'h00000400;   // 4.0 in fixed-point (4.0 * 256)
    w_im_i <= 32'hFFFFFB00;   // -5.0 in fixed-point (-5.0 * 256)
    
    #(`CLK_PERIOD*8) CE <= 1;
    
    #(`CLK_PERIOD*1) CE <= 0;
    // Expected results:
    // x0_re_o ≈ -100 in fixed-point (-25600 / 256)
    // x0_im_o ≈ 10 in fixed-point (2560 / 256)
    // x1_re_o ≈ 100 in fixed-point (25600 / 256)
    // x1_im_o ≈ 6 in fixed-point (1536 / 256)

    x0_re_i <= 32'h00000900;  // 9.0 in fixed-point (9.0 * 256)
    x0_im_i <= 32'h00000C00;  // 12.0 in fixed-point (12.0 * 256)
    
    x1_re_i <= 32'h00000300;  // 3.0 in fixed-point (3.0 * 256)
    x1_im_i <= 32'h00000400;  // 4.0 in fixed-point (4.0 * 256)
    
    w_re_i <= 32'hFFFFFB00;   // -5.0 in fixed-point (-5.0 * 256)
    w_im_i <= 32'hFFFFFA00;   // -6.0 in fixed-point (-6.0 * 256)
    
    #(`CLK_PERIOD*8) CE <= 1;
    
    #(`CLK_PERIOD*1) CE <= 0;
    // Expected results:
    // x0_re_o ≈ 18 in fixed-point (4608 / 256)
    // x0_im_o ≈ -26 in fixed-point (6656 / 256)
    // x1_re_o ≈ 0 in fixed-point (0 / 256)
    // x1_im_o ≈ 50 in fixed-point (12800 / 256)
    
    x0_re_i <= -32'd8;  // 9.0 in fixed-point (9.0 * 256)
    x0_im_i <= 32'd19;  // 12.0 in fixed-point (12.0 * 256)
    
    x1_re_i <= -32'd8;  // 3.0 in fixed-point (3.0 * 256)
    x1_im_i <= 32'd19;  // 4.0 in fixed-point (4.0 * 256)
    
    w_re_i <= 32'd237;   // -5.0 in fixed-point (-5.0 * 256)
    w_im_i <= -32'd98;   // -6.0 in fixed-point (-6.0 * 256)
    
    #(`CLK_PERIOD*8) CE <= 1;
    
    #(`CLK_PERIOD*1) CE <= 0;
    // Expected results:
    // x0_re_o ≈ 18 in fixed-point (4608 / 256)
    // x0_im_o ≈ -26 in fixed-point (6656 / 256)
    // x1_re_o ≈ 0 in fixed-point (0 / 256)
    // x1_im_o ≈ 50 in fixed-point (12800 / 256)

end

//initial begin 
//    CE <= 0;
//    x0_re_i <= 32'h00000000;  // 0
//    x0_im_i <= 32'h00000000;  // 0
    
//    x1_re_i <= 32'h00000000;  // 0
//    x1_im_i <= 32'h00000000;  // 0
    
//    w_re_i <= 32'h00000000;   // 0
//    w_im_i <= 32'h00000000;   // 0

//    #(`CLK_PERIOD*10);
          
//    x0_re_i <= 32'h00000100;  // 1.0 in fixed-point (1.0 * 256)
//    x0_im_i <= 32'h00000200;  // 2.0 in fixed-point (2.0 * 256)
    
//    x1_re_i <= 32'h00000100;  // 1.0 in fixed-point (1.0 * 256)
//    x1_im_i <= 32'h00000200;  // 2.0 in fixed-point (2.0 * 256)
    
//    w_re_i <= 32'h00000100;   // 1.0 in fixed-point (1.0 * 256)
//    w_im_i <= 32'h00000200;   // 2.0 in fixed-point (2.0 * 256)
    
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;
//    // Expected results:
//    // x0_re_o = x0_re_i + ((x1_re_i * w_re_i - x1_im_i * w_im_i) >> 8) = 1 + ((1 * 1 - 2 * 2) >> 8) = 1 + (-3) = -2 in fixed-point (-2.0 / 256)
//    // x0_im_o = x0_im_i + ((x1_re_i * w_im_i + x1_im_i * w_re_i) >> 8) = 2 + ((1 * 2 + 2 * 1) >> 8) = 2 + 4 = 6 in fixed-point (6.0 / 256)
//    // x1_re_o = x0_re_i - ((x1_re_i * w_re_i - x1_im_i * w_im_i) >> 8) = 1 - ((1 * 1 - 2 * 2) >> 8) = 1 - (-3) = 4 in fixed-point (4.0 / 256)
//    // x1_im_o = x0_im_i - ((x1_re_i * w_im_i + x1_im_i * w_re_i) >> 8) = 2 - ((1 * 2 + 2 * 1) >> 8) = 2 - 4 = -2 in fixed-point (-2.0 / 256)

//    x0_re_i <= 32'h00000500;  // 5.0 in fixed-point (5.0 * 256)
//    x0_im_i <= 32'h00000600;  // 6.0 in fixed-point (6.0 * 256)
    
//    x1_re_i <= 32'hFFFFFF00;  // -1.0 in fixed-point (-1.0 * 256)
//    x1_im_i <= 32'hFFFFFF00;  // -1.0 in fixed-point (-1.0 * 256)
    
//    w_re_i <= 32'h00000200;   // 2.0 in fixed-point (2.0 * 256)
//    w_im_i <= 32'hFFFFFE00;   // -2.0 in fixed-point (-2.0 * 256)
    
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;
//    // Expected results:
//    // x0_re_o = x0_re_i + ((x1_re_i * w_re_i - x1_im_i * w_im_i) >> 8) = 5 + ((-1 * 2 - (-1) * (-2)) >> 8) = 5 + ((-2 - 2) >> 8) = 5 - 4 >> 8 = 5 - 0 = 5 in fixed-point (5.0 / 256)
//    // x0_im_o = x0_im_i + ((x1_re_i * w_im_i + x1_im_i * w_re_i) >> 8) = 6 + ((-1 * (-2) + (-1) * 2) >> 8) = 6 + ((2 - 2) >> 8) = 6 - 0 = 6 in fixed-point (6.0 / 256)
//    // x1_re_o = x0_re_i - ((x1_re_i * w_re_i - x1_im_i * w_im_i) >> 8) = 5 - ((-1 * 2 - (-1) * (-2)) >> 8) = 5 - ((-2 - 2) >> 8) = 5 - (-4 >> 8) = 5 + 0 = 5 in fixed-point (5.0 / 256)
//    // x1_im_o = x0_im_i - ((x1_re_i * w_im_i + x1_im_i * w_re_i) >> 8) = 6 - ((-1 * (-2) + (-1) * 2) >> 8) = 6 - ((2 - 2) >> 8) = 6 - 0 = 6 in fixed-point (6.0 / 256)

//    x0_re_i <= 32'h00000A00;  // 10.0 in fixed-point (10.0 * 256)
//    x0_im_i <= 32'h00000B00;  // 11.0 in fixed-point (11.0 * 256)
    
//    x1_re_i <= 32'h00000C00;  // 12.0 in fixed-point (12.0 * 256)
//    x1_im_i <= 32'h00000D00;  // 13.0 in fixed-point (13.0 * 256)
    
//    w_re_i <= 32'h00000180;   // 1.5 in fixed-point (1.5 * 256)
//    w_im_i <= 32'hFFFFFD80;   // -1.5 in fixed-point (-1.5 * 256)
    
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;
//    // Expected results:
//    // x0_re_o = 10 + ((12 * 1.5 - 13 * (-1.5)) >> 8) = 10 + 37.5/256 ≈ 10
//    // x0_im_o = 11 + ((12 * (-1.5) + 13 * 1.5) >> 8) = 11 + 1.5/256 ≈ 11
//    // x1_re_o = 10 - ((12 * 1.5 - 13 * (-1.5)) >> 8) = 10 - 37.5/256 ≈ 9
//    // x1_im_o = 11 - ((12 * (-1.5) + 13 * 1.5) >> 8) = 11 - 1.5/256 ≈ 11

//    x0_re_i <= 32'h00000000;  // 0
//    x0_im_i <= 32'h00000800;  // 8.0 in fixed-point (8.0 * 256)
    
//    x1_re_i <= 32'hFFFFF600;  // -10.0 in fixed-point (-10.0 * 256)
//    x1_im_i <= 32'hFFFFF400;  // -12.0 in fixed-point (-12.0 * 256)
    
//    w_re_i <= 32'h00000400;   // 4.0 in fixed-point (4.0 * 256)
//    w_im_i <= 32'hFFFFFB00;   // -5.0 in fixed-point (-5.0 * 256)
    
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;
//    // Expected results:
//    // x0_re_o = 0 + ((-10 * 4 - (-12) * (-5)) >> 8) = -128
//    // x0_im_o = 8 + ((-10 * (-5) + (-12) * 4) >> 8) = 8 + 32 = 40
//    // x1_re_o = 0 - ((-10 * 4 - (-12) * (-5)) >> 8) = 128
//    // x1_im_o = 8 - ((-10 * (-5) + (-12) * 4) >> 8) = 8 - 32 = -24

//    x0_re_i <= 32'h00000900;  // 9.0 in fixed-point (9.0 * 256)
//    x0_im_i <= 32'h00000700;  // 7.0 in fixed-point (7.0 * 256)
    
//    x1_re_i <= 32'hFFFFFF00;  // -1.0 in fixed-point (-1.0 * 256)
//    x1_im_i <= 32'hFFFFFF00;  // -1.0 in fixed-point (-1.0 * 256)
    
//    w_re_i <= 32'h00000300;   // 3.0 in fixed-point (3.0 * 256)
//    w_im_i <= 32'h00000300;   // 3.0 in fixed-point (3.0 * 256)
    
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;

//end

//initial begin 
//    CE <= 0;
//    x0_re_i <= 32'h0;
//    x0_im_i <= 32'h0;
    
//    x1_re_i <= 32'h0;
//    x1_im_i <= 32'h0;
    
//    w_re_i <= 32'h0;
//    w_im_i <= 32'h0;

//    #(`CLK_PERIOD*15);
          
//    x0_re_i <= 32'h1;
//    x0_im_i <= 32'h2;
    
//    x1_re_i <= 32'h1;
//    x1_im_i <= 32'h2;
    
//    w_re_i <= 32'h1;
//    w_im_i <= 32'h2;
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;
    
//    x0_re_i <= 32'h1;
//    x0_im_i <= 32'h7FFF;
    
//    x1_re_i <= 32'hCC;
//    x1_im_i <= 32'hFFFFFF34;
    
//    w_re_i <= 32'h333;
//    w_im_i <= 32'h333;
    
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;
    
//    x0_re_i <= 32'h1;
//    x0_im_i <= 32'h7FFF;
    
//    x1_re_i <= 32'hCC;       // 0.2
//    x1_im_i <= 32'hFFFFFF34; // -0.2
    
//    w_re_i <= 32'h333;      // 0.2
//    w_im_i <= 32'hFFFFFCCD; // -0.2
    
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;
    
//    x0_re_i <= 32'h1;
//    x0_im_i <= 32'h7FFF;
    
//    x1_re_i <= 32'hCD;      
//    x1_im_i <= 32'hFFFFFF35; 
  
//    w_re_i <= 32'h334;      
//    w_im_i <= 32'hFFFFFCCE; 
    
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;
    
//    x0_re_i <= 32'h1;
//    x0_im_i <= 32'h2;
    
//    x1_re_i <= 32'h1;
//    x1_im_i <= 32'h2;
    
//    w_re_i <= 32'h1;
//    w_im_i <= 32'h2;
    
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;
    
//    /* x0_re = 0; x1_re = -6*/
//    x0_re_i <= 32'hFFFFFFFD; //-3
//    x0_im_i <= 32'h0;
    
//    x1_re_i <= 32'h3; //3
//    x1_im_i <= 32'h0;
    
//    w_re_i <= 32'h1;
//    w_im_i <= 32'h1;
    
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;
    
//    /* x0_re = -6; x1_re = 0*/
//    x0_re_i <= 32'hFFFFFFFD; //-3
//    x0_im_i <= 32'h0;
    
//    x1_re_i <= 32'hFFFFFFFD; //-3
//    x1_im_i <= 32'h0;
    
//    w_re_i <= 32'h1;
//    w_im_i <= 32'h1;
    
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;
    
//    /* x0_re = 6; x1_re = 0*/
//    x0_re_i <= 32'h3; //3
//    x0_im_i <= 32'h0;
    
//    x1_re_i <= 32'h3; //3
//    x1_im_i <= 32'h0;
    
//    w_re_i <= 32'h1;
//    w_im_i <= 32'h1;
    
//    #(`CLK_PERIOD*8) CE <= 1;
    
//    #(`CLK_PERIOD*1) CE <= 0;
//end
     
endmodule