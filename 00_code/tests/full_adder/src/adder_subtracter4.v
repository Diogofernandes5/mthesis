`timescale 1ns / 1ps

// To perform subtraction is used the c_in input 
//      If c_in = 1 subtraction (make 2's complement of y)
//      If c_in = 0 summation
module adder_subtracter4(
    input [3:0] x,      // first operand
    input [3:0] y,      // second operand
    input c_in,         // carry in
    output [3:0] s,     // result
    output v            // overflow
    );
    
    wire [3:0] c_out;
    
    full_adder add0(
        .x(x[0]),
        .y(y[0] ^ c_in),    // 2's complement of y if c_in is asserted
        .c_in(c_in),
        .s(s[0]),
        .c_out(c_out[0]));
    
    full_adder add1(
        .x(x[1]),
        .y(y[1] ^ c_in),
        .c_in(c_out[0]),
        .s(s[1]),
        .c_out(c_out[1]));
        
    full_adder add2(
        .x(x[2]),
        .y(y[2] ^ c_in),
        .c_in(c_out[1]),
        .s(s[2]),
        .c_out(c_out[2]));
        
    full_adder add3(
        .x(x[3]),
        .y(y[3] ^ c_in),
        .c_in(c_out[2]),
        .s(s[3]),
        .c_out(c_out[3]));
        
    assign v = c_out[3] ^ c_out[2];
        
endmodule
