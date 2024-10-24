`timescale 1ns / 1ps

`define CLK_PERIOD 10   // nanoseconds

module control_unit_tb();

reg clk, rstn;
reg start;

wire src_sel;
wire fft_ready;

wire bram_x0_we;
wire bram_x1_we;
wire bram_en;
wire bf_ce;

wire [10:0] bram_addr_x0;
wire [10:0] bram_addr_x1;

wire [8:0] twiddle_addr;

localparam N = 11'd1024;
localparam BRAM_SIZE = N/2;

localparam NUM_STAGES = 3'd3;
localparam FIRST_STAGE = 10'd7;

/**********************************/
/************ FOR TESTS ***********/
//wire [3:0] state;
//wire [3:0] stage_counter;

//wire [9:0] staged_half_N;

//wire [9:0] stage_counter_lshif; 
//wire start_div;

//wire [9:0] group_start;
//wire [10:0] bram_addr_x0_w;           
//wire [10:0] bram_addr_x1_w;

//wire [10:0] bf_counter;
//wire [9:0] local_index;
/**********************************/

/************ CLK AND RSTN GEN ***********/
always #(`CLK_PERIOD/2) clk = ~clk;
 
initial begin
    clk <= 1;
    rstn <= 0;
        
    #(`CLK_PERIOD*2) rstn <= 1;
end

/************ DUT ***********/
control_unit #(.N(N),
               .STAGES_NUM(NUM_STAGES), 
               .FIRST_STAGE(FIRST_STAGE))  
dut
(
    .clk(clk),
    .rstn(rstn),
    .start_i(start),
//    .stage_num_i(NUM_STAGES),

    .src_sel_o(src_sel),
    .fft_ready_o(fft_ready),
    .bram_x0_we_o(bram_x0_we),
    .bram_x1_we_o(bram_x1_we),
    .bram_en_o(bram_en),
    .bf_ce_o(bf_ce),
    .bram_addr_x0_o(bram_addr_x0),
    .bram_addr_x1_o(bram_addr_x1),
    .twiddle_addr_o(twiddle_addr)
    
    /********************************/
//    .state(state),
//    .stage_counter(stage_counter),
//    .staged_half_N(staged_half_N),
//    .group_size(stage_counter_lshif),
//    .start_div(start_div),
    
//    .group_start(group_start),
//    .bram_addr_x0(bram_addr_x0_w),           
//    .bram_addr_x1(bram_addr_x1_w),        
    
//    .bf_counter(bf_counter)
//    .local_index(local_index)  
);

/************ STIMULUS ***********/
initial begin
    start = 0;
    #(`CLK_PERIOD*5);
    start = 1;

    #(`CLK_PERIOD*BRAM_SIZE);
    start = 0;
    
    #(`CLK_PERIOD*300);
    start = 1;

    #(`CLK_PERIOD*BRAM_SIZE);
    start = 0;
end

/************ STOP LOGIC ***********/
always @* begin
    //if(stage_counter == NUM_STAGES)
    wait(fft_ready);
    wait(~fft_ready);
    $stop;
end

endmodule