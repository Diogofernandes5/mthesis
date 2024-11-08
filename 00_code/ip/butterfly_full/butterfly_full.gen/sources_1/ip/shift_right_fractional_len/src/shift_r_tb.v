`timescale 1ns / 1ps

module tb_shift_right;

reg [7:0] data_in;
wire [7:0] data_out;

localparam width = 8;
localparam shift_num = 4; 

// Instantiate the shift_right module
shift_right #(
    .width(width),
    .s_num(shift_num))
dut 
(
    .data_in(data_in),
    .data_out(data_out)
);

initial begin
    // Apply test vectors
    data_in = 8'b00010000;  // Example: 16
    #10;  // Wait for 10 time units
    $display("data_in: %b, data_out: %b", data_in, data_out);  // Expected: 00000001

    data_in = 8'b00100000;  // Example: 32
    #10;
    $display("data_in: %b, data_out: %b", data_in, data_out);  // Expected: 00000010

    data_in = 8'b01000000;  // Example: 64
    #10;
    $display("data_in: %b, data_out: %b", data_in, data_out);  // Expected: 00000100

    data_in = 8'b10000000;  // Example: 128
    #10;
    $display("data_in: %b, data_out: %b", data_in, data_out);  // Expected: 00001000

    data_in = 8'b11111110;  // Example: 128
    #10;
    $display("data_in: %b, data_out: %b", data_in, data_out);  // Expected: 00001000

    $finish;
end

endmodule