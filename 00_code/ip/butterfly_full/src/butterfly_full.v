`timescale 1ns / 1ps

module butterfly_full(
    input clk,
    input rstn,
    input CE,
  
    input [31:0] x0_re_i,
    input [31:0] x0_im_i,
    input [31:0] x1_re_i,
    input [31:0] x1_im_i,
    
    input [31:0] w_re_i,
    input [31:0] w_im_i,
    
    output reg [31:0] X0_re_o,
    output reg [31:0] X0_im_o,
    output reg [31:0] X1_re_o,
    output reg [31:0] X1_im_o,
    
    /************* TESTS ***************/
    output reg [31:0] x1_re_x_w_re_r,
    output reg [31:0] x1_im_x_w_im_r,
    output reg [31:0] x1_re_x_w_im_r,
    output reg [31:0] x1_im_x_w_re_r,
    
    output wire [31:0] z_re,
    output wire [31:0] z_im,
    
    output reg [31:0] z_re_add_r,
    output reg [31:0] z_im_add_r,
    
    output wire [31:0] z_re_shifted,
    output wire [31:0] z_im_shifted
    
//    output wire X0_re_add_v,
//    output wire X0_im_add_v,
//    output wire X1_re_sub_v,
//    output wire X1_im_sub_v,
//    output wire z_re_sub_v,
//    output wire z_im_add_v
    );
    
    // z
//    wire [31:0] z_re;
//    wire [31:0] z_im;
    
//    wire [31:0] z_re_shifted;
//    wire [31:0] z_im_shifted;
    
//    reg [31:0] z_re_r;
//    reg [31:0] z_im_r;
    
    reg [31:0] x0_re_r;
    reg [31:0] x0_im_r;
    reg [31:0] x1_re_r;
    reg [31:0] x1_im_r;
    
    // auxliary variables
    wire [31:0] x1_re;
    wire [31:0] x1_im;
    wire [31:0] w_re;
    wire [31:0] w_im;

    wire [31:0] X0_re;
    wire [31:0] X0_im;
    wire [31:0] X1_re;
    wire [31:0] X1_im;

    // multiplication results before inversion
    wire [31:0] x1_re_x_w_re_m;
    wire [31:0] x1_im_x_w_im_m;
    wire [31:0] x1_im_x_w_re_m;
    wire [31:0] x1_re_x_w_im_m;
    
    // multiplication results after invert 
    wire [31:0] x1_re_x_w_re;
    wire [31:0] x1_im_x_w_im;
    wire [31:0] x1_re_x_w_im;
    wire [31:0] x1_im_x_w_re;
    
    // registering
//    reg [31:0] x1_re_x_w_re_r;
//    reg [31:0] x1_re_x_w_im_r;
//    reg [31:0] x1_im_x_w_im_r;   
//    reg [31:0] x1_im_x_w_re_r;

    // carry out
//    wire X0_re_co;
//    wire X0_im_co;
//    wire X1_re_co;
//    wire X1_im_co;
//    wire z_re_co;
//    wire z_im_co;
    
    // overflow detection
    wire X0_re_add_v;
    wire X0_im_add_v;
    wire X1_re_sub_v;
    wire X1_im_sub_v;
    wire z_re_sub_v;
    wire z_im_add_v;

    always @(posedge clk or negedge rstn) begin
      if(!rstn) begin
        X0_re_o = 32'd0;
        X0_im_o = 32'd0;
        X1_re_o = 32'd0;
        X1_im_o = 32'd0;  
      end
      else if(CE) begin
        X0_re_o = X0_re;
        X0_im_o = X0_im;
        X1_re_o = X1_re;
        X1_im_o = X1_im;
      end
    end
    
    always @(posedge clk or negedge rstn) begin
      if(!rstn) begin
        x0_re_r = 32'd0;
        x0_im_r = 32'd0;
        x1_re_r = 32'd0;
        x1_im_r = 32'd0;
        
        x1_re_x_w_re_r = 32'd0;
        x1_re_x_w_im_r = 32'd0;
        x1_im_x_w_im_r = 32'd0;   
        x1_im_x_w_re_r = 32'd0;
        
        z_re_add_r = 32'd0;
        z_im_add_r = 32'd0;
        
//        z_re_r = 32'd0;
//        z_im_r = 32'd0;
      end
      else begin
        x0_re_r = x0_re_i;
        x0_im_r = x0_im_i;
        x1_re_r = x1_re_i;
        x1_im_r = x1_im_i;
             
        x1_re_x_w_re_r = x1_re_x_w_re;
        x1_re_x_w_im_r = x1_re_x_w_im;
        x1_im_x_w_im_r = x1_im_x_w_im;   
        x1_im_x_w_re_r = x1_im_x_w_re;
        
        z_re_add_r = z_re;
        z_im_add_r = z_im;
        
//        z_re_r = z_re_shifted;
//        z_im_r = z_im_shifted;
      end
      
    end    

    adder_subtracter32_ip X0_re_add(
      .x(x0_re_r),      
      .y(z_re_shifted),            
      .c_in(1'b0),                 
      // .c_out(X0_re_co), 
      .v(X0_re_add_v), 
      .r(X0_re)         
    );

    adder_subtracter32_ip X0_im_add(
      .x(x0_im_r),      
      .y(z_im_shifted),         
      .c_in(1'b0),   
      // .c_out(X0_im_co), 
      .v(X0_im_add_v), 
      .r(X0_im)        
    );
    
    adder_subtracter32_ip X1_re_sub(
      .x(x0_re_r),    
      .y(z_re_shifted),        
      .c_in(1'b1),        
      // .c_out(X1_re_co),
      .v(X1_re_sub_v), 
      .r(X1_re)       
    );
        
    adder_subtracter32_ip X1_im_sub(
      .x(x0_im_r),    
      .y(z_im_shifted),             
      .c_in(1'b1),            
      // .c_out(X1_im_co),
      .v(X1_im_sub_v),
      .r(X1_im)       
    );
    
    shift_right_fractional_len shift_z_re (
        .clk(clk),
        .rstn(rstn),
        .data_in(z_re_add_r),
        .data_out(z_re_shifted)
    );
    
    shift_right_fractional_len shift_z_im (
        .clk(clk),
        .rstn(rstn),
        .data_in(z_im_add_r),
        .data_out(z_im_shifted)
    );
    
    adder_subtracter32_ip z_re_sub(
      .x(x1_re_x_w_re_r),     
      .y(x1_im_x_w_im_r),
      .c_in(1'b1),   
      // .c_out(z_re_co),
      .v(z_re_sub_v), 
      .r(z_re)         
    );
    
    adder_subtracter32_ip z_im_add(
      .x(x1_re_x_w_im_r),   
      .y(x1_im_x_w_re_r),          
      .c_in(1'b0),    
      // .c_out(z_im_co), 
      .v(z_im_add_v), 
      .r(z_im)       
    );
    
    // ----------- Logic to invert number if it is negative to make multiplication -----------
    
    mux2_0 x1_re_mux ( // if number is negative, invert the number to make the multiplication
      .d0(x1_re_r),  
      .d1(~x1_re_r + 1'b1),
      .s(x1_re_r[31]),
      .y(x1_re)
    );
    
    mux2_0 x1_im_mux ( // if number is negative, invert the number to make the multiplication
      .d0(x1_im_r),  
      .d1(~x1_im_r + 1'b1),
      .s(x1_im_r[31]),
      .y(x1_im)
    );
    
    mux2_0 w_re_mux ( // if number is negative, invert the number to make the multiplication
      .d0(w_re_i),  
      .d1(~w_re_i + 1'b1),
      .s(w_re_i[31]),
      .y(w_re)
    );
    
    mux2_0 w_im_mux ( // if number is negative, invert the number to make the multiplication
      .d0(w_im_i),  
      .d1(~w_im_i + 1'b1),
      .s(w_im_i[31]),
      .y(w_im)
    );
    
    // ----------------------------- Multiplication to determine Z ---------------------------
        
    multiplier x1_re_w_re_mul(
      .CLK(clk),  
      .A(x1_re),     
      .B(w_re),     
//      .CE(CE),
      .P(x1_re_x_w_re_m)    
    ); 
    
    multiplier x1_im_w_im_mul(
      .CLK(clk), 
      .A(x1_im),   
      .B(w_im),   
//      .CE(CE),    
      .P(x1_im_x_w_im_m)      
    );
    
    multiplier x1_re_w_im_mul(
      .CLK(clk), 
      .A(x1_re),    
      .B(w_im),      
//      .CE(CE),
      .P(x1_re_x_w_im_m)    
    ); 
    
    multiplier x1_im_w_re_mul(
      .CLK(clk),  
      .A(x1_im),     
      .B(w_re),     
//      .CE(CE), 
      .P(x1_im_x_w_re_m)   
    );
    
    // ----------- Logic to invert number if multiplication result must be negative -----------
    
    mux2_0 x1_re_w_re_mux ( 
      .d0(x1_re_x_w_re_m),  
      .d1(~x1_re_x_w_re_m + 1'b1),
      .s(x1_re_r[31] ^ w_re_i[31]),
      .y(x1_re_x_w_re)
    );
    
    mux2_0 x1_im_w_im_mux ( 
      .d0(x1_im_x_w_im_m),  
      .d1(~x1_im_x_w_im_m + 1'b1),
      .s(x1_im_r[31] ^ w_im_i[31]),
      .y(x1_im_x_w_im)
    );
    
    mux2_0 x1_re_w_im_mux ( 
      .d0(x1_re_x_w_im_m),  
      .d1(~x1_re_x_w_im_m + 1'b1),
      .s(x1_re_r[31] ^ w_im_i[31]),
      .y(x1_re_x_w_im)
    );
    
    mux2_0 x1_im_w_re ( 
      .d0(x1_im_x_w_re_m),  
      .d1(~x1_im_x_w_re_m + 1'b1),
      .s(x1_im_r[31] ^ w_re_i[31]),
      .y(x1_im_x_w_re)
    );
      
endmodule
