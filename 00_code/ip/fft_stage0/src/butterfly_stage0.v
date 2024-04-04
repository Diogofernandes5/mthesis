module butterfly_stage0(
    input clk,
    input CE,
	
    input wire [31:0] x0_re_i,
    input wire [31:0] x0_im_i,
    input wire [31:0] x1_re_i,
    input wire [31:0] x1_im_i,

    input wire [31:0] w_re_i, 

    output wire [31:0] X0_re_o,
    output wire [31:0] X0_im_o,
    output wire [31:0] X1_re_o,
    output wire [31:0] X1_im_o
    );
    
    // z
    wire [31:0] z_re;
    wire [31:0] z_im;
    
    // auxliary variables
    wire [31:0] x1_re;
    wire [31:0] x1_im;
    // wire [31:0] w_re;
    // wire [31:0] w_im;
    
    // multiplication results before inversion
    wire [31:0] x1_re_x_w_re_m;
    // wire [31:0] x1_im_x_w_im_m;
    wire [31:0] x1_im_x_w_re_m;
    // wire [31:0] x1_re_x_w_im_m;
    
    // overflow detection
    wire X0_re_add_v;
    wire X0_im_add_v;
    wire X1_re_sub_v;
    wire X1_im_sub_v;

    adder_subtracter32_ip X0_re_add(
      .x({16'b0, x0_re_i}),      
      .y(z_re),            
      .c_in(0),                 
      // .c_out(X0_re_co), 
      .v(X0_re_add_v), 
      .r(X0_re_o)         
    );

    adder_subtracter32_ip X0_im_add(
      .x({16'b0, x0_im_i}),      
      .y(z_im),         
      .c_in(0),   
      // .c_out(X0_im_co), 
      .v(X0_im_add_v), 
      .r(X0_im_o)        
    );
    
    adder_subtracter32_ip X1_re_sub(
      .x({16'b0, x0_re_i}),    
      .y(z_re),        
      .c_in(1),        
      // .c_out(X1_re_co),
      .v(X1_re_sub_v), 
      .r(X1_re_o)       
    );
        
    adder_subtracter32_ip X1_im_sub(
      .x({16'b0, x0_im_i}),    
      .y(z_im),             
      .c_in(1),            
      // .c_out(X1_im_co),
      .v(X1_im_sub_v),
      .r(X1_im_o)       
    );
    
    // adder_subtracter32_ip z_re_sub(
    //   .x(x1_re_x_w_re),     
    //   .y(x1_im_x_w_im),
    //   .c_in(1),   
    //   // .c_out(z_re_co),
    //   .v(z_re_sub_v), 
    //   .r(z_re)         
    // );
    
    // adder_subtracter32_ip z_im_add(
    //   .x(x1_re_x_w_im),   
    //   .y(x1_im_x_w_re),          
    //   .c_in(0),    
    //   // .c_out(z_im_co), 
    //   .v(z_im_add_v), 
    //   .r(z_im)       
    // );
    
    // ----------- Logic to invert number if it is negative to make multiplication -----------
    
    mux2_0 x1_re_mux ( // if number is negative, invert the number to make the multiplication
      .d0(x1_re_i),  
      .d1(~x1_re_i + 1'b1),
      .s(x1_re_i[31]),
      .y(x1_re)
    );
    
    mux2_0 x1_im_mux ( // if number is negative, invert the number to make the multiplication
      .d0(x1_im_i),  
      .d1(~x1_im_i + 1'b1),
      .s(x1_im_i[31]),
      .y(x1_im)
    );
    
    // mux2_0 w_re_mux ( // if number is negative, invert the number to make the multiplication
    //   .d0(w_re_i),  
    //   .d1(~w_re_i + 1'b1),
    //   .s(w_re_i[31]),
    //   .y(w_re)
    // );
    
    // mux2_0 w_im_mux ( // if number is negative, invert the number to make the multiplication
    //   .d0(w_im_i),  
    //   .d1(~w_im_i + 1'b1),
    //   .s(w_im_i[31]),
    //   .y(w_im)
    // );
    
    // ----------------------------- Multiplication to determine Z ---------------------------
        
    multiplier x1_re_w_re_mul(
      .CLK(clk),  
      .A(x1_re),     
      .B(w_re_i),     
      .CE(CE),
      .P(x1_re_x_w_re_m)    
    ); 
    
    // multiplier x1_im_w_im_mul(
    //   .CLK(clk), 
    //   .A(x1_im),   
    //   .B(w_im),   
    //   .CE(CE),    
    //   .P(x1_im_x_w_im_m)      
    // );
    
    // multiplier x1_re_w_im_mul(
    //   .CLK(clk), 
    //   .A(x1_re),    
    //   .B(w_im),      
    //   .CE(CE),
    //   .P(x1_re_x_w_im_m)    
    // ); 
    
    multiplier x1_im_w_re_mul(
      .CLK(clk),  
      .A(x1_im),     
      .B(w_re_i),     
      .CE(CE), 
      .P(x1_im_x_w_re_m)   
    );
    
    // ----------- Logic to invert number if multiplication result must be negative -----------
    
    mux2_0 x1_re_w_re_mux ( 
      .d0(x1_re_x_w_re_m),  
      .d1(~x1_re_x_w_re_m + 1'b1),
      .s(x1_re_i[31] ^ w_re_i[31]),
      .y(z_re)
    );
    
    // mux2_0 x1_im_w_im_mux ( 
    //   .d0(x1_im_x_w_im_m),  
    //   .d1(~x1_im_x_w_im_m + 1'b1),
    //   .s(x1_im_i[31] ^ w_im_i[31]),
    //   .y(x1_im_x_w_im)
    // );
    
    // mux2_0 x1_re_w_im_mux ( 
    //   .d0(x1_re_x_w_im_m),  
    //   .d1(~x1_re_x_w_im_m + 1'b1),
    //   .s(x1_re_i[31] ^ w_im_i[31]),
    //   .y(x1_re_x_w_im)
    // );
    
    mux2_0 x1_im_w_re ( 
      .d0(x1_im_x_w_re_m),  
      .d1(~x1_im_x_w_re_m + 1'b1),
      .s(x1_im_i[31] ^ w_re_i[31]),
      .y(z_im)
    );
      
endmodule
