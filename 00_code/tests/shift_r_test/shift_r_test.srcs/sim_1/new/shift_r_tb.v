`timescale 1ns / 1ps

module tb_shift_right;

reg [31:0] data_in;
wire [31:0] data_out;

wire [width-1:0] aux;

localparam width = 32;
localparam shift_num = 12; 

// Instantiate the shift_right module
shift_right #(
    .width(width),
    .shift_num(shift_num))
dut 
(
    .data_in(data_in),
    .data_out(data_out)
);

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