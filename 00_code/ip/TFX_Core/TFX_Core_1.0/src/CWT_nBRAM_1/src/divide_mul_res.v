module divide_mul_res (
    input clk,
    input rstn,

    input [31:0] x_re_i,
    input [31:0] x_im_i,

    output wire [31:0] x_re_o,
    output wire [31:0] x_im_o
    );

shift_right_input shift_x_re_i (
  .data_in(x_re_i),    // input wire [31 : 0] data_in
  .data_out(x_re_o)  // output wire [31 : 0] data_out
);

shift_right_input shift_x_im_i (
  .data_in(x_im_i),    // input wire [31 : 0] data_in
  .data_out(x_im_o)  // output wire [31 : 0] data_out
);

endmodule