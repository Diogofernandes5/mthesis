`timescale 1ns / 1ps

module control_unit_tb(

    );

    reg clk, rstn;
    reg start;

    wire src_sel;
    wire fft_ready;

    wire bram_we;

    wire [8:0] bram_addr;

    wire [8:0] twiddle_addr;

    //---------------
//    wire [2:0] state;
//    wire [9:0] data_counter;
//    wire data_counter_comp;

    initial begin
        rstn <= 0;
        #(5)
            ;
        rstn <= 1;
        
        #(1000000);
        rstn <= 0;
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
        .rstn(rstn),
        .start_i(start),
        .src_sel_o(src_sel),
        .fft_ready_o(fft_ready),
        .bram_we_o(bram_we),
        .bram_addr_o(bram_addr),
        .twiddle_addr_o(twiddle_addr)
    );

    initial begin
        #(30);
        start = 1;
        
        #(30);
        start = 0;
    end

    always @(*) begin
        if(fft_ready) begin
            #(10500);
            start = 1;
        end
        if(start)begin
            #(50);
            start = 1;
        end

    end

endmodule
