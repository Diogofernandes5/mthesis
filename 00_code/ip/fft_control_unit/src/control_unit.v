module control_unit(
    input wire clk, 
    input wire rstn,
    
    input wire start_i,

    output reg src_sel_o,
    output reg fft_ready_o,

    output reg bram_we_o,
    output reg bram_en_o,
    output reg bf_ce_o,

    output reg [10:0] bram_addr_o,

    output reg [10:0] twiddle_addr_o
);

    // define states
    localparam S_IDLE = 3'b000;
    localparam S_STORE_INPUTS = 3'b001;
    localparam S_CHECK_BF_COUNTER = 3'b010;
    localparam S_READ_MEMORY = 3'b011;
    localparam S_BF_OPERATION = 3'b100;
    localparam S_WRITE_BACK = 3'b101;
    localparam S_SEND_RESULTS = 3'b110;
    
    localparam BRAM_SIZE = 11'd512;
    
    // for tests
//    localparam BRAM_SIZE = 10'd4;
    
    // state and nextstate registers
    reg [2:0] state;
    reg [2:0] nstate;
    
    // counters registers
    reg [10:0] data_counter;
    reg [10:0] bf_counter;
    reg [1:0] cycle_counter;
    reg cycle_delay;
    
    reg start_sending;

    
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
                if(start_i)
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
                src_sel_o = 1'b0;
                data_counter = {11{1'b0}};
                bram_addr_o = {11{1'b0}};
                twiddle_addr_o = {11{1'b0}};
                bram_en_o = 1'b1;
                bram_we_o = 1'b0;
            end
    
            S_STORE_INPUTS: begin
                src_sel_o = 1'b0;
                bram_addr_o = data_counter;
                bram_we_o = 1'b1;
                bram_en_o = 1'b1;
            end
    
            S_CHECK_BF_COUNTER: begin
                src_sel_o = 1'b1;
                data_counter = {11{1'b0}}; // reset data_counter 
                //bram_addr_o = data_counter;   
                bram_addr_o = bf_counter;
                bram_we_o = 1'b0; // disable writing to memmory 
                bram_en_o = 1'b1;
                //        write_counter = 1'b0;    
            end
    
            S_READ_MEMORY: begin
    //                bram_addr_o = bf_counter;
                twiddle_addr_o = bf_counter;
                bram_en_o = 1'b1;
            end
    
            S_BF_OPERATION: begin
                bram_en_o = 1'b1;
                if(cycle_counter == 2'd2)
                    bf_ce_o = 1'b1;
            end
    
            S_WRITE_BACK: begin
                bf_ce_o = 1'b0;
                bram_we_o = 1'b1;
                bram_en_o = 1'b1;
                cycle_counter = {2{1'b0}};
            end
    
            S_SEND_RESULTS: begin
                bf_counter = {11{1'b0}}; // reset bf_counter
                start_sending = 1'b1;
                bram_addr_o = data_counter;
                bram_en_o = 1'b1;
            end
        endcase
    end
    
    //--------------------------------------
    
    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            data_counter = {11{1'b0}};
            bf_counter = {11{1'b0}};
            cycle_counter = {2{1'b0}};
    //            bram_we_o = 1'b0;
            bf_ce_o = 1'b0;
    //            bram_en_o = 1'b0;
            cycle_delay = 1'b0;
            //        write_counter = 1'b0;
            fft_ready_o = 1'b0;
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
        if(start_sending && bram_addr_o > 1'b0)
            fft_ready_o = 1'b1;
            
        else 
            fft_ready_o = 1'b0;
    end
    
endmodule