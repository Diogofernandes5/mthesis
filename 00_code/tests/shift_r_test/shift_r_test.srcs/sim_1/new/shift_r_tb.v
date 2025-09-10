`timescale 1ns / 1ps

`define CLK_PERIOD 10   // nanoseconds

module tb_shift_right;

reg clk;
reg rstn;

reg [31:0] data_in;
wire [31:0] data_out;

localparam width = 32;
localparam shift_num = 7; 

// Instantiate the shift_right module
shift_right #(
    .width(width),
    .shift_num(shift_num))
dut 
(
    .clk(clk),
    .rstn(rstn),

    .data_in(data_in),
    .data_out(data_out)
);

always #(`CLK_PERIOD/2) clk = ~clk;

initial begin
    clk <= 1;
    rstn <= 0;
        
    #(`CLK_PERIOD*10) rstn <= 1;
end

initial begin
    // Test cases
    data_in = -52;  // -52 in decimal (or -34h)
    #10;
    $display("data_in: %d, data_out: %d", data_in, data_out);  // Expected: data_out = 0

    data_in = -256;  // -256 in decimal
    #10;
    $display("data_in: %d, data_out: %d", data_in, data_out);  // Expected: data_out = -1

    data_in = 256;  // 256 in decimal
    #10;
    $display("data_in: %d, data_out: %d", data_in, data_out);  // Expected: data_out = 1

    data_in = 34;  // 34 in decimal
    #10;
    $display("data_in: %d, data_out: %d", data_in, data_out);  // Expected: data_out = 0

    data_in = -1;  // -1 in decimal
    #10;
    $display("data_in: %d, data_out: %d", data_in, data_out);  // Expected: data_out = 0

    data_in = -1024;  // -1024 in decimal
    #10;
    $display("data_in: %d, data_out: %d", data_in, data_out);  // Expected: data_out = -4

    data_in = 1024;  // -1024 in decimal
    #10;
    $display("data_in: %d, data_out: %d", data_in, data_out);  // Expected: data_out = -
    
    $finish;
end

endmodule