`timescale 1ns / 1ps

module stage0_tb(
    );

    reg clk, rstn;
    reg start;

    reg [31:0] x0_re;
    reg [31:0] x0_im;
    reg [31:0] x1_re;
    reg [31:0] x1_im;

    wire [31:0] X0_re;
    wire [31:0] X0_im;
    wire [31:0] X1_re;
    wire [31:0] X1_im;

    wire fft_ready;

    wire [2:0] state;
    
    wire bram_we;
    wire bf_ce;
    wire [8:0] bram_addr;
    
    initial begin
        rstn <= 0;
        #(5)
            ;
        rstn <= 1;
        
//        #(800);
//        rstn <= 0;
    end

    always begin
        clk <= 0;
        #(10)
            ;
        clk <= 1;
        #(10)
            ;
    end

    stage0_wrap dut(
        .clk(clk),
        .rstn(rstn),
        .start_i(start),

        .x0_re_i(x0_re),
        .x0_im_i(x0_im),
        .x1_re_i(x1_re),
        .x1_im_i(x1_im),

        .X0_re_o(X0_re),
        .X0_im_o(X0_im),
        .X1_re_o(X1_re),
        .X1_im_o(X1_im),

        .fft_ready_o(fft_ready),
        
        .state(state),
        .src_sel(src_sel),
        .bram_we(bram_we),
        .bf_ce(bf_ce),
        .bram_addr(bram_addr)
    );

    initial begin
        start = 0;
        #(30);
        start = 1;
        
        #(30);
        start = 0;
        
//        #(700);
//        start = 1;
    end
    
    initial begin
        x0_re = 32'h000000FF;
        x0_im = 32'h00000000;
        x1_re = 32'h0000000F;
        x1_im = 32'h00000000;
    end

endmodule
