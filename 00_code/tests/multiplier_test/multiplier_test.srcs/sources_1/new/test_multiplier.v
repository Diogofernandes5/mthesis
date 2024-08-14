`timescale 1ns / 1ps

module test_multiplier(
    input clk,
    input [31:0] A,
    input [31:0] B,
    output [31:0] P
    );
    
mult_gen_0 dut (
  .CLK(clk),  // input wire CLK
  .A(A),      // input wire [31 : 0] A
  .B(B),      // input wire [31 : 0] B
  .P(P)      // output wire [31 : 0] P
);


endmodule
