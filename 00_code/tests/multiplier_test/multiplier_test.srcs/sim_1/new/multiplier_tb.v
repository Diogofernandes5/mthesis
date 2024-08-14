`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2024 02:38:03 PM
// Design Name: 
// Module Name: multiplier_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiplier_tb(

    );
   
// clock period in nanoseconds
`define CLK_PERIOD 10

reg clk;
reg [31:0] A;
reg [31:0] B;
wire [31:0] P;

always #(`CLK_PERIOD/2) clk = ~clk;
 
initial clk <= 1;
    
test_multiplier dut (
  .clk(clk),  // input wire CLK
  .A(A),      // input wire [31 : 0] A
  .B(B),      // input wire [31 : 0] B
  .P(P)      // output wire [31 : 0] P
);

initial begin

    A = 32'd0;
    B = 32'd0;
    
    #(`CLK_PERIOD*10); // 3 clk cycles
    A = 32'd5;
    B = 32'd6;
    
    #(`CLK_PERIOD*5); // 3 clk cycles
    A = 32'd10;
    B = 32'd8;
    
    #(`CLK_PERIOD*5); // 3 clk cycles
    A = 32'd11;
    B = 32'd7;
    
    #(`CLK_PERIOD*5); // 3 clk cycles
    A = 32'd12;
    B = 32'd5;


end


endmodule
