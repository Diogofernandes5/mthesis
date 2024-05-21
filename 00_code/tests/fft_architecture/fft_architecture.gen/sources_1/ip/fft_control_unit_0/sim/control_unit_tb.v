`timescale 1ns / 1ps

module control_unit_tb();

// clock period in nanoseconds
`define CLK_PERIOD 10

reg clk, rstn;
reg start;

wire src_sel;
wire fft_ready;

wire bram_we;
wire bram_en;
wire bf_ce;

wire [10:0] bram_addr;

wire [10:0] twiddle_addr;

localparam BRAM_SIZE = 10'd512;

//---------------
wire [2:0] state;
//    wire [9:0] data_counter;
//    wire data_counter_comp;

always #(`CLK_PERIOD/2) clk = ~clk;
 
initial begin
    clk <= 1;
    rstn <= 0;
        
    #(`CLK_PERIOD*2) rstn <= 1;
end

control_unit dut(
    .clk(clk),
    .rstn(rstn),
    .start_i(start),
    .src_sel_o(src_sel),
    .fft_ready_o(fft_ready),
    .bram_we_o(bram_we),
    .bram_en_o(bram_en),
    .bf_ce_o(bf_ce),
    .bram_addr_o(bram_addr),
    .twiddle_addr_o(twiddle_addr)
);

initial begin
    start = 0;
    #(`CLK_PERIOD*3);
    start = 1;

    #(`CLK_PERIOD*BRAM_SIZE);
    start = 0;
    
    #(`CLK_PERIOD*300);
    start = 1;

    #(`CLK_PERIOD*BRAM_SIZE);
    start = 0;
end

endmodule
