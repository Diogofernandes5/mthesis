`timescale 1ns / 1ps

`define CLK_PERIOD 10   // nanoseconds

module mul_cu_tb();

localparam N = 1024;
localparam J1 = 16;

reg clk;
reg rstn;

reg fft_ready;
reg dl_busy;

wire bram_res_en;
wire bram_res_we;
wire [$clog2(N)-1:0] bram_res_addr;

wire bram_mul_en;
wire bram_mul_we;
wire [$clog2(N)-1:0] bram_mul_addr;

wire [$clog2(N*J1)-1:0] daughter_addr;

wire start_ifft;
wire busy;

/***********************************/
wire [$clog2(N):0] data_counter;
wire [$clog2(N):0] counter_n;
wire [$clog2(J1):0] counter_j;

wire [1:0] cycle_counter;

wire [2:0] state;

always #(`CLK_PERIOD/2) clk = ~clk;

initial begin
    clk <= 1;
    rstn <= 0;
        
    #(`CLK_PERIOD*2) rstn <= 1;
end

/************ STIMULUS ***********/
initial begin
    fft_ready = 0;
    dl_busy = 1;
    #(`CLK_PERIOD*5);
    fft_ready = 1;

    #(`CLK_PERIOD*N);
    fft_ready = 0;
    
    #(`CLK_PERIOD*10000);
    dl_busy = 0;
end

mul_cu #(
    .N(N),
    .J1(J1)) dut (
    .clk(clk),
    .rstn(rstn),

    .fft_ready_i(fft_ready),
    .dl_busy_i(dl_busy),

    .bram_res_en_o(bram_res_en),
    .bram_res_we_o(bram_res_we),
    .bram_res_addr_o(bram_res_addr),
    .bram_mul_en_o(bram_mul_en),
    .bram_mul_we_o(bram_mul_we),
    .bram_mul_addr_o(bram_mul_addr),
    .daughter_addr_o(daughter_addr),
    .start_ifft_o(start_ifft),
    .busy_o(busy),
    
    /*************************/
    .state(state),
    .data_counter(data_counter),
    .counter_n(counter_n),
    .counter_j(counter_j),
    .cycle_counter(cycle_counter)
);

endmodule
