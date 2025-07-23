`timescale 1ns / 1ps

module shift_right #(
    parameter SHIFT_NUM = 7, // 128
    parameter WIDTH = 32
)(
    input signed [WIDTH-1:0] data_in,
    output signed [WIDTH-1:0] data_out
);

wire signed [WIDTH-1:0] bias;
wire [WIDTH-1:0] shift_mask = (1 << SHIFT_NUM) - 1;

// Add a bias of 127 for negative numbers to round toward zero
assign bias = (data_in < 0) ? shift_mask : 0;

// Perform the division by shifting
assign data_out = (data_in + bias) >>> SHIFT_NUM;

endmodule

/********** OLD IMPLEMENTATION - WRONG **********/
//wire [WIDTH-1:0] aux;

//localparam data_in_mask = (1 << SHIFT_NUM) - 1;

//assign aux = $signed(data_in) >>> SHIFT_NUM;

//always @(posedge clk or negedge rstn) begin
//    if(~rstn)
//        data_out = 32'd0;
    
//    // Perform arithmetic shift right by 8 bits and round towards zero
//    else if (data_in[WIDTH-1] && ((data_in & data_in_mask) != 0)) begin
//        // If negative and remainder exists, shift and add 1 to round towards zero
//        data_out = aux + 1;
//    end else begin
//        // Direct arithmetic shift for positive or exactly divisible values
//        data_out = $signed(data_in) >>> shift_num;
//    end
    
//end