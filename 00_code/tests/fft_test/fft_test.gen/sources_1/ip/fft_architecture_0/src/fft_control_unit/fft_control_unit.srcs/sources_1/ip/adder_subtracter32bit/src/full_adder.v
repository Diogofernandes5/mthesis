`timescale 1ns / 1ps

module full_adder(
    input x,
    input y,
    input c_in,
    output s,
    output c_out
    );
    
    assign s = x ^ y ^ c_in;
    assign c_out = (x & y) + (c_in & (x ^ y));

endmodule 