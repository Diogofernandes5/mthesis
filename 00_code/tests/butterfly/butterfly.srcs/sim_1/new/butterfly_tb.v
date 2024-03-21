`timescale 1ns / 1ps

module butterfly_tb();
    
    reg clk;
    reg rstn;
    reg CE;
    
    reg [15:0] x0_re_i;
    reg [15:0] x0_im_i;
    reg [15:0] x1_re_i;
    reg [15:0] x1_im_i;
    reg [15:0] w_re_i;
    reg [15:0] w_im_i;
    
    wire [31:0] X0_re_o;
    wire [31:0] X0_im_o;
    wire [31:0] X1_re_o;
    wire [31:0] X1_im_o;
    
    wire [31:0] x1_re_x_w_re;
    wire [31:0] x1_im_x_w_im;
    wire [31:0] x1_re_x_w_im;
    wire [31:0] x1_im_x_w_re;
    
    wire [31:0] z_re;
    wire [31:0] z_im;
    
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
    
    butterfly_full dut (
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
        .x1_im_x_w_re(x1_im_x_w_re),
        
        .z_re(z_re),
        .z_im(z_im)
    );

    initial begin  
        #(10)
        CE = 1;
    
        #(30);
        
        x0_re_i <= 16'h1;
        x0_im_i <= 16'h2;
        
        x1_re_i <= 16'h1;
        x1_im_i <= 16'h2;
        
        w_re_i <= 16'h1;
        w_im_i <= 16'h2;
        
        #(200);
        
        x0_re_i <= 16'h1;
        x0_im_i <= 16'hFFFE;
        
        x1_re_i <= 16'h1;
        x1_im_i <= 16'hFFFE;
        
        w_re_i <= 16'h1;
        w_im_i <= 16'hFFFE;
  
    end
     
endmodule