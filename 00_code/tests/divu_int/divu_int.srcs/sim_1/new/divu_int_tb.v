`timescale 1ns / 1ps
`define CLOCK_PERIOD 10

module divu_int_tb();

    // Parameters
    parameter WIDTH = 10;

    // Testbench signals
    reg clk;
    reg rst;
    reg start;
    wire busy;
    wire done;
    wire valid;
    wire dbz;
    reg [WIDTH-1:0] a;   // Dividend
    reg [WIDTH-1:0] b;   // Divisor
    wire [WIDTH-1:0] val; // Quotient
    wire [WIDTH-1:0] rem; // Remainder

    // Instantiate the module
    divu_int #(.WIDTH(WIDTH)) dut (
        .clk(clk),
        .rst(rst),
        .start(start),
//        .busy(busy),
        .done(done),
//        .valid(valid),
//        .dbz(dbz),
        .a(a),
        .b(b),
        .val(val)
//        .rem(rem)
    );

    // Clock generation
    always #(`CLOCK_PERIOD / 2) clk = ~clk;

    // Test sequence
    initial begin
        // Initialize signals
        clk = 0;
        rst = 0;
        start = 0;
        a = 0;
        b = 0;

        // Apply reset
        rst = 1;
        #(`CLOCK_PERIOD * 1);
        rst = 0;
        
        #(`CLOCK_PERIOD * 0.5);

        // Start test cases
        // Case 1: a = 500, b = 25
        a = 10'd500;
        b = 10'd25;
        start = 1;
        #(`CLOCK_PERIOD * 1);
        start = 0;
        wait (done);
        $display("a = %d, b = %d, Quotient = %d, Remainder = %d", a, b, val, rem);
    
        #(`CLOCK_PERIOD * 3);

        // Case 2: a = 1023, b = 3
        a = 10'd1023;
        b = 10'd3;
        start = 1;
        #(`CLOCK_PERIOD * 1);
        start = 0;
        wait (done);
        $display("a = %d, b = %d, Quotient = %d, Remainder = %d", a, b, val, rem);

        #(`CLOCK_PERIOD * 3);
        // Case 3: a = 655, b = 9
        a = 10'd655;
        b = 10'd9;
        start = 1;
        #(`CLOCK_PERIOD * 1);
        start = 0;
        wait (done);
        $display("a = %d, b = %d, Quotient = %d, Remainder = %d", a, b, val, rem);

        // Add more test cases as needed
        $finish;
    end

endmodule
