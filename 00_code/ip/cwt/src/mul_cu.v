module mul_cu #(
    parameter N = 1024,
    parameter J1 = 64)(
    input wire clk,
    input wire rstn,
    
    input wire fft_ready_i,
    input wire dl_busy_i,
    
    output reg bram_res_en_o,
    output reg bram_res_we_o,
    output reg [$clog2(N)-1:0] bram_res_addr_o,
    
    output reg bram_mul_en_o,
    output reg bram_mul_we_o,
    output reg [$clog2(N)-1:0] bram_mul_addr_o,
    
    output reg [$clog2(N*J1)-1:0] daughter_addr_o,
    
    output reg busy_o,
    
    output reg start_ifft_o,
    
    /*********** TESTS **********/
    output reg [2:0] state,
    output reg [$clog2(N):0] data_counter,
    output reg [$clog2(N):0] counter_n,
    output reg [$clog2(J1):0] counter_j,
    
    output reg [2:0] cycle_counter
);
    
/************ DEFINE STATES **************/
localparam S_IDLE       = 3'b000;
localparam S_FILL_MEM   = 3'b001;
localparam S_CHECK_J    = 3'b010;
localparam S_CHECK_N    = 3'b011;
localparam S_S_IFFT     = 3'b100;
localparam S_READ_MEM   = 3'b101;
localparam S_MULTIPLY   = 3'b110;
localparam S_WRITE_MEM  = 3'b111;

/*********** OTHER CONSTANTS *************/
localparam MUL_OP_CYCLES = 3'd5;

/*********** STATE AND NSTATE *************/
//reg [2:0] state;
reg [2:0] nstate;

/********** COUNTER REGISTERS *************/
//reg [$clog2(N):0] data_counter;
//reg [$clog2(N):0] counter_n;
//reg [$clog2(J1):0] counter_j;

//reg [1:0] cycle_counter;

/************* SIGNALS **************/
reg start_sending;

/*********** STATE REG *************/
always @(posedge clk or negedge rstn) begin
    if(~rstn)
        state <= S_IDLE;
    else begin
        state <= nstate;
    end
end

/*********** NSTATE LOGIC ***********/
always @(*) begin
    case(state)
        S_IDLE: 
            if(fft_ready_i)
                nstate = S_FILL_MEM;
            else 
                nstate = S_IDLE;
        S_FILL_MEM: 
            if(data_counter == (N-1))
                nstate = S_CHECK_J;
            else 
                nstate = S_FILL_MEM;
                
        S_CHECK_J: 
            if(counter_j != J1) // counter_j is incremented in this state (+1 because of the first time)
                nstate = S_CHECK_N;
            else 
                nstate = S_IDLE;
                        
        S_CHECK_N: 
            if(counter_n < N)
                nstate = S_READ_MEM;
            else if(~dl_busy_i)
                nstate = S_S_IFFT;
            else 
                nstate = S_CHECK_N;
        
        S_S_IFFT:
            if(data_counter == N) 
                nstate = S_CHECK_J;
            else 
                nstate = S_S_IFFT;
        
        S_READ_MEM: 
            nstate = S_MULTIPLY;
        
        S_MULTIPLY: 
            if(cycle_counter == (MUL_OP_CYCLES - 1))
                nstate = S_WRITE_MEM;
            else 
                nstate = S_MULTIPLY;
        
        S_WRITE_MEM: 
            nstate = S_CHECK_N;
            
        default:
            nstate = S_IDLE;
    endcase
end

/*********** OUTPUT LOGIC ***********/
always @(*) begin

    case(state)
        S_IDLE: begin
            bram_res_en_o <= 1'b0;
            bram_res_we_o <= 1'b0;
            bram_res_addr_o <= 11'd0;
            
            bram_mul_en_o <= 1'b0;
            bram_mul_we_o <= 1'b0;
            bram_mul_addr_o <= 11'd0;

            daughter_addr_o <= 24'd0;

            busy_o <= 1'b0;
            start_sending <= 1'b0;
        end
        
        S_FILL_MEM: begin
            bram_res_en_o <= 1'b1;
            bram_res_we_o <= 1'b1;
            bram_res_addr_o <= data_counter;
            
            bram_mul_en_o <= 1'b0;
            bram_mul_we_o <= 1'b0;
            bram_mul_addr_o <= 11'd0;

            daughter_addr_o <= 24'd0;
            
            busy_o <= 1'b1;
            start_sending <= 1'b0;
        end

        S_CHECK_J: begin
            bram_res_en_o <= 1'b0;
            bram_res_we_o <= 1'b0;
            bram_res_addr_o <= 11'd0;
            
            bram_mul_en_o <= 1'b0;
            bram_mul_we_o <= 1'b0;
            bram_mul_addr_o <= 11'd0;

            daughter_addr_o <= ((counter_j - 1)  << $clog2(N)) + counter_n;
            
            busy_o <= 1'b1;
            start_sending <= 1'b0;
        end

        S_CHECK_N: begin
            bram_res_en_o <= 1'b1;
            bram_res_we_o <= 1'b0;
            bram_res_addr_o <= counter_n;
            
            bram_mul_en_o <= 1'b1;
            bram_mul_we_o <= 1'b0;
            bram_mul_addr_o <= counter_n;

            daughter_addr_o <= ((counter_j - 1)  << $clog2(N)) + counter_n;

            busy_o <= 1'b1;
            start_sending <= 1'b0;
        end

        S_S_IFFT: begin
            bram_res_en_o <= 1'b0;
            bram_res_we_o <= 1'b0;
            bram_res_addr_o <= 11'd0;
            
            bram_mul_en_o <= 1'b1;
            bram_mul_we_o <= 1'b0;
            bram_mul_addr_o <= data_counter;

            daughter_addr_o <= 24'd0;
            
            busy_o <= 1'b1;
            start_sending <= 1'b1;
        end
        
        S_READ_MEM: begin
            bram_res_en_o <= 1'b1;
            bram_res_we_o <= 1'b0;
            bram_res_addr_o <= counter_n;
            
            bram_mul_en_o <= 1'b1;
            bram_mul_we_o <= 1'b0;
            bram_mul_addr_o <= counter_n;

            daughter_addr_o <= ((counter_j - 1)  << $clog2(N)) + counter_n;

            busy_o <= 1'b1;
            start_sending <= 1'b0;
        end

        S_MULTIPLY: begin
            bram_res_en_o <= 1'b1;
            bram_res_we_o <= 1'b0;
            bram_res_addr_o <= counter_n;
            
            bram_mul_en_o <= 1'b1;
            bram_mul_we_o <= 1'b0;
            bram_mul_addr_o <= counter_n;

            daughter_addr_o <= ((counter_j - 1)  << $clog2(N)) + counter_n;

            busy_o <= 1'b1;
            start_sending <= 1'b0;
        end

        S_WRITE_MEM: begin
            bram_res_en_o <= 1'b1;
            bram_res_we_o <= 1'b0;
            bram_res_addr_o <= counter_n;
            
            bram_mul_en_o <= 1'b1;
            bram_mul_we_o <= 1'b1;
            bram_mul_addr_o <= counter_n;

            daughter_addr_o <= ((counter_j - 1)  << $clog2(N)) + counter_n;

            busy_o <= 1'b1;
            start_sending <= 1'b0;
        end
        
        default: begin
            bram_res_en_o <= 1'b0;
            bram_res_we_o <= 1'b0;
            bram_res_addr_o <= 11'd0;
            
            bram_mul_en_o <= 1'b0;
            bram_mul_we_o <= 1'b0;
            bram_mul_addr_o <= 11'd0;

            daughter_addr_o <= 24'd0;

            busy_o <= 1'b0;
            start_sending <= 1'b0;
        end
        
    endcase
end

/********** FFT_READY LOGIC *********/
always @(negedge clk) begin
    /* start sending and bram address bigger than 0, because of the bram delay */
    if(start_sending && (data_counter > 10'd0))
        start_ifft_o <= 1'b1;
        
    else 
        start_ifft_o <= 1'b0;
end

/*********** COUNTERS AND SIGNALS ***********/
always @(posedge clk or negedge rstn) begin
    if(~rstn) begin
        data_counter <= 11'd0;
        counter_n <= 11'd0;
        counter_j <= 8'd0;
        
        cycle_counter <= 2'd0;
    end
    else begin
        case (state)
            S_IDLE: begin
                data_counter <= 11'd0;
                counter_n <= 11'd0;
                counter_j <= 8'd0;
                
                cycle_counter <= 2'd0;
            end
            
            S_FILL_MEM: begin
                data_counter <= data_counter + 1;
            end

            S_CHECK_J: begin
                data_counter <= 1'd0;
                counter_n <= 11'd0;
                counter_j <= counter_j + 1;
            end

            S_CHECK_N: begin
                
            end

            S_S_IFFT: begin
                data_counter <= data_counter + 1; 
            end
            
            S_READ_MEM: begin
                
            end

            S_MULTIPLY: begin
                cycle_counter <= cycle_counter + 1;
            end

            S_WRITE_MEM: begin
                counter_n <= counter_n + 1;
                cycle_counter <= 2'd0;
            end

        endcase 
    end

end

endmodule