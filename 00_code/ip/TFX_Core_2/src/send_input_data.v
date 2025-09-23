module send_input_data #(
	parameter N = 1024 )
(
    input wire clk, 
    input wire rstn,
    
    input wire start_i,
    input wire enable_i,
    input wire dready_i,

    input wire [31:0] data_i,
    
    input wire tx_grant_i,
    input wire next_i,

    output wire [31:0] data_o,

    output reg init_tx_o,     // init tx_
    output reg tx_done_o      // send inputs done irq
);

// define states
localparam S_IDLE = 2'b00;
localparam S_RECEIVE = 2'b01;
localparam S_PREP_SEND = 2'b10;
localparam S_SEND = 2'b11;

// state and nextstate registers
reg [1:0] state;
reg [1:0] nstate;

reg [$clog2(N):0] data_counter;

reg bram_en;
reg bram_we;
reg [$clog2(N-1):0] bram_addr;
wire [31:0] bram_dout;

reg start_sending;

// state register
always @(posedge clk or negedge rstn) begin
    if(~rstn)
        state <= S_IDLE;
    else begin
        state <= nstate;
    end
end

// nextstate logic
always @(*) begin
    case(state)
        S_IDLE: begin
        	if(start_i && enable_i)
        		nstate <= S_RECEIVE;
        	else
        		nstate <= S_IDLE;
        end

        S_RECEIVE: begin
        	if(data_counter == (N-1))
        		nstate <= S_PREP_SEND;
        	else
        		nstate <= S_RECEIVE;
        end
        
        S_PREP_SEND: 
            if(tx_grant_i)
                nstate <= S_SEND;
            else
                nstate <= S_PREP_SEND;
            
        S_SEND: begin
        	if(data_counter == N)
        		nstate <= S_IDLE;
        	else
        		nstate <= S_SEND;
        end

    endcase
end

// output logic
always @(*) begin
    bram_addr = 0;
    bram_we = 0;
    bram_en = 0;
    start_sending = 0;
    tx_done_o = 0;
    
    case(state)
        S_IDLE: begin
            // default
        end
        
        S_RECEIVE: begin
        	bram_addr = data_counter;
        	bram_we = 1;
        	bram_en = 1;
        end
        
        S_PREP_SEND: begin
        	start_sending = 1;
        end
        
        S_SEND: begin
        	bram_addr = data_counter;
        	bram_en = 1;

            if(data_counter > (N - 4))
                 tx_done_o = 1;
            else
                 tx_done_o = 0;
        end
    endcase
end

always @(posedge clk or negedge rstn) begin
	if (!rstn) begin
		data_counter <= 0;
	end
	else if ((state == S_RECEIVE && dready_i) || (state == S_SEND && next_i)) begin
    	data_counter <= data_counter + 1;
	end
	else if((state == S_IDLE) || (state == S_PREP_SEND)) begin
		data_counter <= 0;
	end
	else begin
		data_counter <= data_counter;
	end
end

always @(negedge clk) begin
    init_tx_o <= 0;
    /* start sending and bram address bigger than 0, because of the bram delay */
    if(start_sending) begin
        init_tx_o <= 1;
        
        if(tx_grant_i) begin
            init_tx_o <= 0;
        end
    end
end

assign data_o = (state == S_SEND) ? bram_dout : 0;

input_data_bram data_bram (
	.clka(~clk),    		
	.ena(bram_en),      
	.wea(bram_we),    
	.addra(bram_addr),
	.dina(data_i),  
	.douta(bram_dout) 
);

endmodule