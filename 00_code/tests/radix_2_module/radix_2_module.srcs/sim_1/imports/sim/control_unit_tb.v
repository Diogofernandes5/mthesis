`timescale 1ns / 1ps

module control_unit_tb(

    );

    reg clk, rst;
    reg start;

    wire src_sel;
    wire fft_ready;

    wire bram_we;

    wire [8:0] bram_addr;

    wire [8:0] twiddle_addr;

    //---------------
    wire [2:0] state;
    wire [9:0] data_counter;
    wire data_counter_comp;

    initial begin
        rst <= 1;
        #(5)
            ;
        rst <= 0;
        
        #(800);
        rst <= 1;
    end

    always begin
        clk <= 0;
        #(10)
            ;
        clk <= 1;
        #(10)
            ;
    end

    control_unit dut(
        .clk(clk),
        .rst(rst),
        .start_i(start),
        .src_sel_o(src_sel),
        .fft_ready_o(fft_ready),
        .bram_we_o(bram_we),
        .bram_addr_o(bram_addr),
        .twiddle_addr_o(twiddle_addr),

        .state(state),
        .data_counter(data_counter),
        .data_counter_comp(data_counter_comp)
    );

    initial begin
        #(30);
        start = 1;
        
        #(30);
        start = 0;
        
        #(700);
        start = 1;

    end


endmodule
