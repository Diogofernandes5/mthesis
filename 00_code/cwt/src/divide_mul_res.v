module divide_mul_res (
    input clk,
    input rstn,

    input [31:0] x_re_i,
    input [31:0] x_im_i,

    input start_i,

    output reg [31:0] x_re_o,
    output reg [31:0] x_im_o,
    
    output reg start_o
    );

wire [31:0] x_re;
wire [31:0] x_im;

shift_right_input shift_x_re_i (
  .clk(~clk),            // input wire clk
  .rstn(rstn),          // input wire rstn
  .data_in(x_re_i),    // input wire [31 : 0] data_in
  .data_out(x_re)  // output wire [31 : 0] data_out
);

shift_right_input shift_x_im_i (
  .clk(~clk),            // input wire clk
  .rstn(rstn),          // input wire rstn
  .data_in(x_im_i),    // input wire [31 : 0] data_in
  .data_out(x_im)  // output wire [31 : 0] data_out
);

always @(posedge clk or negedge rstn) begin
    if(~rstn) begin
        start_o <= 0;
        x_re_o <= 0;
        x_im_o <= 0;
    end
    else begin 
        start_o <= start_i;
        x_re_o <= x_re;
        x_im_o <= x_im;
    end
end

endmodule