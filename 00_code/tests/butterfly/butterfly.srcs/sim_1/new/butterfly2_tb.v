`timescale 1ns / 1ps

module butterfly2_tb();
    
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
    
//    wire [31:0] z_re;
//    wire [31:0] z_im;

//    wire X0_re_add_v;
//    wire X0_im_add_v;
//    wire X1_re_sub_v;
//    wire X1_im_sub_v;
//    wire z_re_sub_v;
//    wire z_im_add_v;
    
    initial begin
        rstn <= 0;
        #(10)
            ;
        rstn <= 1;
    end

    always begin
        clk <= 0;
        #(10)
            ;
        clk <= 1;
        #(10)
            ;
    end
    
    butterfly_full1 dut (
        .clk(clk),
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
        
        .x1_re_x_w_re(x1_re_x_w_re),
        .x1_im_x_w_im(x1_im_x_w_im),
        .x1_re_x_w_im(x1_re_x_w_im),
        .x1_im_x_w_re(x1_im_x_w_re)
        
//        .z_re(z_re),
//        .z_im(z_im),

//        .X0_re_add_v(X0_re_add_v),
//        .X0_im_add_v(X0_im_add_v),
//        .X1_re_sub_v(X1_re_sub_v),
//        .X1_im_sub_v(X1_im_sub_v),
//        .z_re_sub_v(z_re_sub_v),
//        .z_im_add_v(z_im_add_v)
    );

    initial begin 
        #(5)
        CE = 1;
        
        x0_re_i <= 32'h1;
        x0_im_i <= 32'h2;
        
        x1_re_i <= 32'h1;
        x1_im_i <= 32'h2;
        
        w_re_i <= 32'h1;
        w_im_i <= 32'h2;
               
        #(40);
        
        x0_re_i <= 32'h1;
        x0_im_i <= 32'h7FFF;
        
        x1_re_i <= 32'hCC;
        x1_im_i <= 32'hFFFFFF34;
        
        w_re_i <= 32'h333;
        w_im_i <= 32'h333;
        
        #(40);
        
        x0_re_i <= 32'h1;
        x0_im_i <= 32'h7FFF;
        
        x1_re_i <= 32'hCC;       // 0.2
        x1_im_i <= 32'hFFFFFF34; // -0.2
        
        w_re_i <= 32'h333;      // 0.2
        w_im_i <= 32'hFFFFFCCD; // -0.2
  
    end
     
endmodule