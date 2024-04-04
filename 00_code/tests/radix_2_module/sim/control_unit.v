module control_unit(
    input clk, rst,
    input wire start_i,

    output reg src_sel_o,
    output reg fft_ready_o,

    output reg bram_we_o,
    output reg bf_ce_o,

    output reg [8:0] bram_addr_o,

    output reg [8:0] twiddle_addr_o,

    //---------------
    output reg [2:0] state,
    output reg [9:0] data_counter,
    output reg data_counter_comp
);

// define states
localparam S_IDLE = 3'b000;
localparam S_STORE_INPUTS = 3'b001;
localparam S_CHECK_BF_COUNTER = 3'b010;
localparam S_READ_MEMORY = 3'b011;
localparam S_BF_OPERATION = 3'b100;
localparam S_WRITE_BACK = 3'b101;
localparam S_SEND_RESULTS = 3'b110;

// localparam BRAM_SIZE = 10'd512;

localparam BRAM_SIZE = 10'd4;

// state and nextstate registers
//reg [2:0] state;
reg [2:0] nstate;

//reg [9:0] data_counter;
reg [9:0] bf_counter;
reg [1:0] cycle_counter;

// reg data_counter_comp;
// reg bf_counter_comp;

// state register
always @(posedge clk or posedge rst) begin
    if(rst)begin
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
        if(start_i) 
            nstate = S_STORE_INPUTS;

    S_STORE_INPUTS: 
        if(data_counter == BRAM_SIZE-1) // data_counter == N/2 (512)
            nstate = S_CHECK_BF_COUNTER;

    S_CHECK_BF_COUNTER: begin 
        if(bf_counter == BRAM_SIZE-1) 
            nstate = S_SEND_RESULTS;
        else
            nstate = S_READ_MEMORY;
    end

    S_READ_MEMORY:
        nstate = S_BF_OPERATION;

    S_BF_OPERATION: begin
        bf_ce_o = 1'b1;
        if(cycle_counter == 1'd1)
            nstate = S_WRITE_BACK;
    end

    S_WRITE_BACK:
        nstate = S_CHECK_BF_COUNTER;

    S_SEND_RESULTS:
        if(data_counter == BRAM_SIZE-1) // data_counter == N/2 (512)
            nstate = S_IDLE;
 endcase
end

// output logic
always @(*) begin
 case(state)
    S_IDLE: begin
        fft_ready_o = 1'b0;     
        src_sel_o = 1'b0;
        data_counter = {10{1'b0}};
    end

    S_STORE_INPUTS: begin
        src_sel_o = 1'b0;
        bram_addr_o = data_counter;
        bram_we_o = 1'b1;
    end

    S_CHECK_BF_COUNTER: begin
        src_sel_o = 1'b1;
        data_counter = {10{1'b0}}; // reset data_counter    
        bram_we_o = 1'b0; // disable writing to memmory
    end 
    // S_READ_MEMORY: 
    // S_BF_OPERATION: 
    S_WRITE_BACK: begin
        bram_we_o = 1'b1;
        cycle_counter = {2{1'b0}};        
    end

    S_SEND_RESULTS: begin
        bf_counter = {10{1'b0}};  // reset bf_counter
        fft_ready_o = 1'b1;        
    end

 endcase
end

//--------------------------------------

always @(posedge clk or posedge rst) begin
    if(rst) begin
        data_counter = {10{1'b0}};
        bf_counter = {10{1'b0}};
        cycle_counter = {2{1'b0}};
        bram_we_o = 1'b0;
    end
    else if(state == S_STORE_INPUTS || state == S_SEND_RESULTS) begin // receiving or sending data
        data_counter = data_counter + 1; // increase data_counter
        //data_counter_comp = ((data_counter - 10'd4) >> 9);// if negative data_counter_comp<-1; ifnot data_counter_comp<-0
    end
    else if(state == S_WRITE_BACK) begin
        bf_counter = bf_counter + 1;
        // bf_counter_comp = ((bf_counter - BRAM_SIZE) >> 10); // if negative bf_comparator<-1; ifnot bf_comparator<-0
    end
    else if(state == S_BF_OPERATION) begin
        cycle_counter = cycle_counter + 1;
    end

end

// always @(posedge clk or posedge rst) begin
//     if(rst) begin
//        bf_counter = {10{1'b0}};
//     end
//     else if(state == S_WRITE_BACK) begin
//         bf_counter = bf_counter + 1;
//         // bf_counter_comp = ((bf_counter - BRAM_SIZE) >> 10); // if negative bf_comparator<-1; ifnot bf_comparator<-0
//     end
// end

endmodule
