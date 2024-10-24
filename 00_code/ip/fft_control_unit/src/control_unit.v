module control_unit
    #(parameter N = 1024,
      parameter STAGES_NUM = 3,
      parameter FIRST_STAGE = 0)
(
    input wire clk, 
    input wire rstn,
    
    input wire start_i,

    output reg src_sel_o,
    output reg fft_ready_o,

    output reg bf_ce_o,

    output reg [10:0] bram_addr_x0_o,
    output reg [10:0] bram_addr_x1_o,
        
    output reg bram_x0_we_o,
    output reg bram_x1_we_o,
    
    output reg bram_en_o,
    
    output reg [8:0] twiddle_addr_o
    
    //***********************************
    
//    output reg [3:0] state,
//    output reg [3:0] stage_counter,
    
//    output wire [9:0] staged_half_N,
    
//    output reg [9:0] group_size,
//    output reg start_div,
    
//    output reg [9:0] group_start,
//    output wire [10:0] bram_addr_x0,           // summation result auxiliary used for bram_addr when needed
//    output wire [10:0] bram_addr_x1,           // summation result auxiliary used for bram_addr when needed
    
//    output reg [10:0] bf_counter             // butterfly counter
//    output reg [9:0] local_index
);

/****************** DEFINE STATES ********************/
localparam S_IDLE = 4'b0000;
localparam S_STORE_INPUTS = 4'b0001;
localparam S_CALC_STAGE_VARS = 4'b0010;
localparam S_CHECK_BF_COUNTER = 4'b0011;
localparam S_READ_MEMORY = 4'b0100;
localparam S_BF_OPERATION = 4'b0101;
localparam S_WRITE_BACK = 4'b0110;
localparam S_CHECK_STAGE = 4'b0111;
localparam S_SEND_RESULTS = 4'b1000;

/****************** OTHER CONSTANTS ********************/
localparam HALF_N = N/2;
localparam BRAM_SIZE = N;

localparam BF_OP_CYCLES = 4'd8;
localparam DIV_CYCLES = 4'd11;

/****************** STATE AND NSTATE ********************/
reg [3:0] state;
reg [3:0] nstate;

/****************** COUNTER REGISTERS ********************/
reg [10:0] data_counter;            // data counter for the store state
reg [10:0] bf_counter;              // butterfly counter

reg [3:0] bf_cycle_counter;         // used for delay of the butterfly operation
reg [3:0] div_bf_cycle_counter;     // used for delay of division controlled in S_CALC_STAGE_VARS
reg [3:0] stage_counter;
reg cycle_delay;

/****************** ADDRESSING VARIABLES ********************/
reg [9:0] group_start;              // variable that defines the starting address of a group
reg [9:0] group_counter;            // variable that deermines the current group of butterflies
reg [9:0] local_index;              // variable that defines the index inside of the group we are currently
wire [10:0] bram_addr_x0;           // summation result auxiliary used for bram_addr when needed
wire [10:0] bram_addr_x1;           // summation result auxiliary used for bram_addr when needed

wire [9:0] staged_half_N;
reg [9:0] group_size;

/****************** SIGNALS ********************/
reg start_div;                      // signal to start division

reg start_sending;                  // signal to start sending data

/*********** STATE REGISTER ***********/
always @(posedge clk or negedge rstn) begin
    if(~rstn)begin
        state <= S_IDLE;
    end
    else begin
        state <= nstate;
    end
end

/*********** NSTATE LOGIC ***********/
always @(*) begin
    case(state)
        S_IDLE:
            if(start_i)
                nstate = S_STORE_INPUTS;
            else 
                nstate = S_IDLE;

        S_STORE_INPUTS:
            if(data_counter == (BRAM_SIZE-1)) // data_counter == N/2 (512)
                nstate = S_CALC_STAGE_VARS;
            else 
                nstate = S_STORE_INPUTS;
                
        S_CALC_STAGE_VARS:
            if(div_bf_cycle_counter == DIV_CYCLES) // number of cycles necessary to calculate the division
                nstate = S_CHECK_BF_COUNTER;
            else 
                nstate = S_CALC_STAGE_VARS;

        S_CHECK_BF_COUNTER: begin
            if(bf_counter == HALF_N) begin
                if(cycle_delay == 1'h1)
                    nstate = S_CHECK_STAGE;
                else
                    nstate = S_CHECK_BF_COUNTER;
            end                    
            
            else
                nstate = S_READ_MEMORY;
        end

        S_READ_MEMORY:
            nstate = S_BF_OPERATION;

        S_BF_OPERATION: begin
            if(bf_cycle_counter == BF_OP_CYCLES)
                nstate = S_WRITE_BACK;
            else 
                nstate = S_BF_OPERATION;
        end

        S_WRITE_BACK:
            nstate = S_CHECK_BF_COUNTER;

        S_CHECK_STAGE: begin
            if(stage_counter == (STAGES_NUM + FIRST_STAGE - 1 )) begin
                nstate = S_SEND_RESULTS;
            end                    
            else
                nstate = S_CALC_STAGE_VARS;
        end
       
        S_SEND_RESULTS: begin
            if(data_counter == (BRAM_SIZE-1)) // data_counter == N/2 (512)
                nstate = S_IDLE;
            else 
                nstate = S_SEND_RESULTS;
        end

        default: nstate = S_IDLE;
    endcase
end

/*********** OUTPUT LOGIC ***********/
always @(*) begin
    case(state)
        S_IDLE: begin
            start_sending = 1'b0;
            src_sel_o = 1'b0;
            bram_addr_x0_o = {11{1'b0}};
            bram_addr_x1_o = {11{1'b0}};
            twiddle_addr_o = {11{1'b0}};
            bram_en_o = 1'b1;
            bram_x0_we_o = 1'b0;
            bram_x1_we_o = 1'b0;
            bf_ce_o = 1'b0;
        end

        S_STORE_INPUTS: begin
            start_sending = 1'b0;
            src_sel_o = 1'b0;
            bram_addr_x0_o = data_counter;
            bram_addr_x1_o = {11{1'b0}};
            twiddle_addr_o = {11{1'b0}};
            bram_en_o = 1'b1;
            bram_x0_we_o = 1'b1;
            bram_x1_we_o = 1'b0;
            bf_ce_o = 1'b0;
        end
        
        S_CALC_STAGE_VARS:begin
            start_sending = 1'b0;
            src_sel_o = 1'b0;
            bram_addr_x0_o = {11{1'b0}};
            bram_addr_x1_o = {11{1'b0}};
            twiddle_addr_o = {11{1'b0}};
            bram_en_o = 1'b0;
            bram_x0_we_o = 1'b0;
            bram_x1_we_o = 1'b0;
            bf_ce_o = 1'b0;
        end            
        
        S_CHECK_BF_COUNTER: begin
            start_sending = 1'b0;
            src_sel_o = 1'b1;
            bram_addr_x0_o = bram_addr_x0_o;
            bram_addr_x1_o = bram_addr_x1_o;
            twiddle_addr_o = twiddle_addr_o;
            bram_en_o = 1'b1;
            bram_x0_we_o = 1'b0;
            bram_x1_we_o = 1'b0;
            bf_ce_o = 1'b0;  
        end

        S_READ_MEMORY: begin
            start_sending = 1'b0;
            src_sel_o = 1'b1;
            bram_addr_x0_o = bram_addr_x0;
            bram_addr_x1_o = bram_addr_x1;
            twiddle_addr_o = twiddle_addr_o;
            bram_en_o = 1'b1;
            bram_x0_we_o = 1'b0;
            bram_x1_we_o = 1'b0;
            bf_ce_o = 1'b0;
        end

        S_BF_OPERATION: begin
            start_sending = 1'b0;
            src_sel_o = 1'b1;
            bram_addr_x0_o = bram_addr_x0_o;
            bram_addr_x1_o = bram_addr_x1_o;
            twiddle_addr_o = twiddle_addr_o;
            bram_en_o = 1'b1;
            bram_x0_we_o = 1'b0;
            bram_x1_we_o = 1'b0;

            if(bf_cycle_counter == BF_OP_CYCLES)
                bf_ce_o = 1'b1;
            else 
                bf_ce_o = 1'b0;
        end

        S_WRITE_BACK: begin
            start_sending = 1'b0;
            src_sel_o = 1'b1;
            bram_addr_x0_o = bram_addr_x0_o;
            bram_addr_x1_o = bram_addr_x1_o;
            twiddle_addr_o = twiddle_addr_o + staged_half_N;
            bram_en_o = 1'b1;
            bram_x0_we_o = 1'b1;
            bram_x1_we_o = 1'b1;  
            bf_ce_o = 1'b0;
        end

        S_CHECK_STAGE: begin // does nothing
            start_sending = 1'b0;
            src_sel_o = 1'b1;
            bram_addr_x0_o = {11{1'b0}};
            bram_addr_x1_o = {11{1'b0}};
            twiddle_addr_o = {11{1'b0}};
            bram_en_o = 1'b0;
            bram_x0_we_o = 1'b0;
            bram_x1_we_o = 1'b0;
            bf_ce_o = 1'b0;
        end

        S_SEND_RESULTS: begin
            start_sending = 1'b1;
            src_sel_o = 1'b1;
            bram_addr_x0_o = data_counter;
            bram_addr_x1_o = {11{1'b0}};
            twiddle_addr_o = {11{1'b0}};
            bram_en_o = 1'b1;
            bram_x0_we_o = 1'b0;
            bram_x1_we_o = 1'b0;
            bf_ce_o = 1'b0;
        end
        default: begin
            start_sending = 1'b0;
            src_sel_o = 1'b0;
            bram_addr_x0_o = {11{1'b0}};
            bram_addr_x1_o = {11{1'b0}};
            twiddle_addr_o = {11{1'b0}};
            bram_en_o = 1'b1;
            bram_x0_we_o = 1'b0;
            bram_x1_we_o = 1'b0;
            bf_ce_o = 1'b0;
        end            
    endcase
end

/* FFT_READY LOGIC */
always @(negedge clk) begin
    if(start_sending) //&& (bram_addr_x0_o > 1'b0))
        fft_ready_o <= 1'b1;
        
    else 
        fft_ready_o <= 1'b0;
end

/*********** COUNTERS AND SIGNALS ***********/
always @(posedge clk or negedge rstn) begin
    if(~rstn) begin
        data_counter <= {11{1'b0}};
        bf_counter <= {11{1'b0}};
        bf_cycle_counter <= {4{1'b0}};
        cycle_delay <= 1'b0;
        stage_counter <= FIRST_STAGE; // reset stage_counter
        start_div <= 0;
    end
    else
        case(state)
            S_IDLE: begin
                data_counter <= {11{1'b0}};
                bf_counter <= {11{1'b0}};
                bf_cycle_counter <= {4{1'b0}}; 
                div_bf_cycle_counter <= {4{1'b0}}; // used for division delay
                cycle_delay <= 1'b0;
                stage_counter <= FIRST_STAGE; // reset stage_counter
            end
            
            S_STORE_INPUTS: 
                data_counter <= data_counter + 1; // increment data_counter
            
            S_CALC_STAGE_VARS: begin
                if(!start_div && !div_bf_cycle_counter)
                    start_div <= 1;
                else 
                    start_div <= 0;
                
                div_bf_cycle_counter <= div_bf_cycle_counter + 1;
            end 
            
            S_CHECK_BF_COUNTER: begin
                start_div <= 0;
                cycle_delay <= cycle_delay + 1;
                data_counter <= {11{1'b0}}; // reset data_counter 
                div_bf_cycle_counter <= {4{1'b0}};
            end

            S_BF_OPERATION:
                bf_cycle_counter <= bf_cycle_counter + 1;

            S_WRITE_BACK: begin
                bf_counter <= bf_counter + 1;
                bf_cycle_counter <= {4{1'b0}};
            end
            
            S_CHECK_STAGE: begin
                stage_counter <= stage_counter + 1; // increment stage_counter
                data_counter <= {11{1'b0}}; // reset data_counter 
                bf_counter <= {11{1'b0}};
            end
                
            S_SEND_RESULTS: begin
                data_counter <= data_counter + 1; // increment data_counter
                bf_counter <= {11{1'b0}};
                cycle_delay <= 1'b0;
                stage_counter <= FIRST_STAGE; // reset stage_counter
            end
            
        endcase
end

/*********** ADDRESSING LOGIC ***********/
always @(posedge clk or negedge rstn) begin
    if(~rstn) begin
        group_size <= {11{1'b0}};
        group_start <= {10{1'b0}};
        local_index <= {10{1'b0}};
    end
    else begin
        group_size <= 11'd1 << stage_counter;
        
        // group_start = (bf_counter/ 2^s) * 2^(s+1)
        // this variable determines the starting address of the current group
        //      the other addresses are determined based on the start and the distance
        group_start <= (bf_counter >> stage_counter) << (stage_counter + 1);
        
        local_index <= bf_counter & ((1 << stage_counter) - 1);
    end
end 

/* bram_addr_x0 = group_start + local_index */
bram_addr_adder bram_addr_xo_adder (
  .x({0,group_start}),      // input wire [31 : 0] x
  .y({0,local_index}),      // input wire [31 : 0] y
  .c_in(0),                 // input wire c_in
  .r(bram_addr_x0)          // output wire [31 : 0] r
);

/* bram_addr_x1 = bram_addr_x0 + distance */
bram_addr_adder bram_addr_x1_adder (
  .x(bram_addr_x0),             // input wire [31 : 0] x
  .y({0,group_size}),      // input wire [31 : 0] y
  .c_in(0),                     // input wire c_in
  .r(bram_addr_x1)              // output wire [31 : 0] r
);

/* division to determine the stages_half_N, ie the half_N corresponding to 
each stage. It is used to determine the twiddle_addr_o:
    twiddle_addr_o = twiddle_addr_o + staged_half_N;*/
div_10bit staged_half_N_div (
  .clk(clk),      
  .rst(!rstn),      
  .start(start_div),        // input wire start division
  .a(HALF_N),               // input wire [9 : 0] dividend
  .b(group_size),  // input wire [9 : 0] divisor
  .val(staged_half_N)       // output wire [9 : 0] quocient
);

endmodule