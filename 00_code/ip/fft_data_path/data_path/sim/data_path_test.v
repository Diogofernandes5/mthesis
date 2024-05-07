`timescale 1ns / 1ps

module data_path_test ();

    // clock period in nanoseconds
`define CLK_PERIOD 10

    reg clk;
    reg rstn;

    reg [31:0] x0_re;
    reg [31:0] x0_im;
    reg [31:0] x1_re;
    reg [31:0] x1_im;

    reg [8:0] bram_addr;

    reg src_sel;
    reg fft_ready;

    reg bram_we;
    reg bram_en;
    reg bf_ce;

    reg start;
    reg twiddle_addr;

    wire [31:0] X0_re;
    wire [31:0] X0_im;
    wire [31:0] X1_re;
    wire [31:0] X1_im;

    reg cycle_delay;

    wire [31:0] X0_re_bf;
    wire [31:0] X0_im_bf;
    wire [31:0] X1_re_bf;
    wire [31:0] X1_im_bf;
    wire [31:0] x0_re_ram;
    wire [31:0] x0_im_ram;
    wire [31:0] x1_re_ram;
    wire [31:0] x1_im_ram;

    always #(`CLK_PERIOD/2) clk = ~clk;

    initial begin
        clk <= 1;
        rstn <= 0;

        #(`CLK_PERIOD*10) rstn <= 1;
    end

    // define states
    localparam S_IDLE = 3'b000;
    localparam S_STORE_INPUTS = 3'b001;
    localparam S_CHECK_BF_COUNTER = 3'b010;
    localparam S_READ_MEMORY = 3'b011;
    localparam S_BF_OPERATION = 3'b100;
    localparam S_WRITE_BACK = 3'b101;
    localparam S_SEND_RESULTS = 3'b110;

    // localparam BRAM_SIZE = 10'd512;

    // for tests
    localparam BRAM_SIZE = 3'd4;

    // state and nextstate registers
    reg [2:0] state;
    reg [2:0] nstate;

    // counters registers
    reg [9:0] data_counter;
    reg [9:0] bf_counter;
    reg [1:0] cycle_counter;
    //reg write_counter;
    
    reg start_sending;

    data_path dut(
        .clk(clk),
        .rstn(rstn),

        .x0_re_i(x0_re),
        .x0_im_i(x0_im),
        .x1_re_i(x1_re),
        .x1_im_i(x1_im),

        .bram_addr_i(bram_addr),

        .w(28'h4001),

        .src_sel_i(src_sel),
        .fft_ready_i(fft_ready),

        .bram_we_i(bram_we),
        .bram_en_i(bram_en),
        .bf_ce_i(bf_ce),

        .x0_re_o(X0_re),
        .x0_im_o(X0_im),
        .x1_re_o(X1_re),
        .x1_im_o(X1_im),


        .X0_re_bf(X0_re_bf),
        .X0_im_bf(X0_im_bf),
        .X1_re_bf(X1_re_bf),
        .X1_im_bf(X1_im_bf),

        .x0_re_ram(x0_re_ram),
        .x0_im_ram(x0_im_ram),
        .x1_re_ram(x1_re_ram),
        .x1_im_ram(x1_im_ram)
    );

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
        if(state == S_STORE_INPUTS) begin
            x0_re = x0_re + 10;
            x0_im = x0_im + 0;
            x1_re = x1_re + 10;
            x1_im = x1_im + 0;
        end
    end

    // state register
    always @(posedge clk or negedge rstn) begin
        if(~rstn)begin
            state <= S_IDLE;
            nstate <= S_IDLE;
        end
        else begin
            state <= nstate;
        end
    end

    // nextstate logic
    always @(*) begin
        case(state)
            S_IDLE:
            if(start)
                nstate = S_STORE_INPUTS;

            S_STORE_INPUTS:
            if(data_counter == BRAM_SIZE-1) // data_counter == N/2 (512)
                nstate = S_CHECK_BF_COUNTER;

            S_CHECK_BF_COUNTER: begin
                if(bf_counter == BRAM_SIZE) begin
                    if(cycle_delay == 1'h1) begin
                        cycle_delay = 1'b0;
                        nstate = S_SEND_RESULTS;
                    end 
                end                    
                
                else
                    nstate = S_READ_MEMORY;
            end

            S_READ_MEMORY:
            nstate = S_BF_OPERATION;

            S_BF_OPERATION: begin
                if(cycle_counter == 2'd2)
                    nstate = S_WRITE_BACK;
            end

            S_WRITE_BACK:
            //        if(write_counter == 1'b1)
            nstate = S_CHECK_BF_COUNTER;
            //    end

            S_SEND_RESULTS:
            if(data_counter == (BRAM_SIZE-1)+1) // data_counter == N/2 (512)
                nstate = S_IDLE;
        endcase
    end

    // output logic
    always @(*) begin
        case(state)
            S_IDLE: begin
                start_sending = 1'b0;
                src_sel = 1'b0;
                data_counter = {10{1'b0}};
                bram_addr = {9{1'b0}};
                twiddle_addr = {9{1'b0}};
                bram_en = 1'b1;
                bram_we = 1'b0;
            end

            S_STORE_INPUTS: begin
                src_sel = 1'b0;
                bram_addr = data_counter;
                bram_we = 1'b1;
                bram_en = 1'b1;
            end

            S_CHECK_BF_COUNTER: begin
                src_sel = 1'b1;
                data_counter = {10{1'b0}}; // reset data_counter 
                //bram_addr = data_counter;   
                bram_addr = bf_counter[1:0];
                bram_we = 1'b0; // disable writing to memmory 
                bram_en = 1'b1;
                //        write_counter = 1'b0;    
            end

            S_READ_MEMORY: begin
//                bram_addr = bf_counter;
                twiddle_addr = bf_counter;
                bram_en = 1'b1;
            end

            S_BF_OPERATION: begin
                bram_en = 1'b1;
                if(cycle_counter == 2'd2)
                    bf_ce = 1'b1;
            end

            S_WRITE_BACK: begin
                bf_ce = 1'b0;
                bram_we = 1'b1;
                bram_en = 1'b1;
                cycle_counter = {2{1'b0}};
            end

            S_SEND_RESULTS: begin
                bf_counter = {10{1'b0}}; // reset bf_counter
                start_sending = 1'b1;
                bram_addr = data_counter;
                bram_en = 1'b1;
            end
        endcase
    end

    //--------------------------------------

    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            data_counter = {10{1'b0}};
            bf_counter = {10{1'b0}};
            cycle_counter = {2{1'b0}};
//            bram_we = 1'b0;
            bf_ce = 1'b0;
//            bram_en = 1'b0;
            cycle_delay = 1'b0;
            //        write_counter = 1'b0;
        end
        else if(state == S_STORE_INPUTS || state == S_SEND_RESULTS) // receiving or sending data
            data_counter = data_counter + 1; // increase data_counter

        else if(state == S_WRITE_BACK) begin
            bf_counter = bf_counter + 1;
            //        write_counter = write_counter + 1;
        end

        else if(state == S_BF_OPERATION)
            cycle_counter = cycle_counter + 1;
            
        else if(state == S_CHECK_BF_COUNTER) begin
            cycle_delay = cycle_delay + 1;
        end

    end
    
    always @(negedge clk) begin
        if(start_sending && bram_addr > 1'b0)
            fft_ready = 1'b1;
            
        else 
            fft_ready = 1'b0;
    end
    
endmodule