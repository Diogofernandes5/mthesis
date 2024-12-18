`timescale 1ns / 1ps

module data_path_with_CU_tb ();

    // clock period in nanoseconds
`define CLK_PERIOD 50
localparam BRAM_SIZE = 10'd512;

reg clk;
reg rstn;

reg [31:0] x0_re;
reg [31:0] x0_im;
reg [31:0] x1_re;
reg [31:0] x1_im;

reg start;

wire [31:0] X0_re;
wire [31:0] X0_im;
wire [31:0] X1_re;
wire [31:0] X1_im;


wire [2:0] state;

wire [31:0] X0_re_bf;
wire [31:0] X0_im_bf;
wire [31:0] X1_re_bf;
wire [31:0] X1_im_bf;
wire [31:0] x0_re_ram;
wire [31:0] x0_im_ram;
wire [31:0] x1_re_ram;
wire [31:0] x1_im_ram;

wire fft_ready;

wire [9:0] bram_addr;
wire bf_ce;
wire bram_we;
wire bram_en;


/* ----------- Stimulus ------------*/
always #(`CLK_PERIOD/2) clk = ~clk;

initial begin
    clk <= 1;
    rstn <= 0;

    #(`CLK_PERIOD*10) rstn <= 1;
end

initial begin
    start = 0;
    #(`CLK_PERIOD*15);
    start = 1;

    #(`CLK_PERIOD*BRAM_SIZE);
    start = 0;

end

initial begin
    x0_re = 32'd0;
    x0_im = 32'd0;
    x1_re = 32'd0;
    x1_im = 32'd0;
    #(`CLK_PERIOD*15);
    x0_re = 32'd10;
    x0_im = 32'd0;
    x1_re = 32'd20;
    x1_im = 32'd0;

end

always @(posedge clk) begin
    if(state == 3'd1) begin
        x0_re = x0_re + 10;
        x0_im = x0_im + 0;
        x1_re = x1_re + 10;
        x1_im = x1_im + 0;
    end
end


/* ----------- DUT ------------*/
data_path_with_CU dut(
    .clk(clk),
    .rstn(rstn),
    
    .start_i(start),

    .x0_re_i(x0_re),
    .x0_im_i(x0_im),
    .x1_re_i(x1_re),
    .x1_im_i(x1_im),

    .w(28'h4001),

    .x0_re_o(X0_re),
    .x0_im_o(X0_im),
    .x1_re_o(X1_re),
    .x1_im_o(X1_im),
    
    
    .state(state),
    .fft_ready_o(fft_ready),
    .bram_addr(bram_addr),
    
    .bram_we(bram_we),
    .bram_en(bram_en),
    .bf_ce(bf_ce),
    
    .X0_re_bf(X0_re_bf),
    .X0_im_bf(X0_im_bf),
    .X1_re_bf(X1_re_bf),
    .X1_im_bf(X1_im_bf),

    .x0_re_ram(x0_re_ram),
    .x0_im_ram(x0_im_ram),
    .x1_re_ram(x1_re_ram),
    .x1_im_ram(x1_im_ram)
);
       
endmodule