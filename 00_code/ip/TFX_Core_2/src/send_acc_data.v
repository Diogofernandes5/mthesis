module send_acc_data #(
	parameter N = 1024 )
(
    input wire clk, 
    input wire rstn,
    
    input wire start,
    input wire dready,

    input wire [31:0] acc_data,
    
    input wire next,

    output wire [31:0] data_o,
    output reg send_acc_data_o,

    output reg send_done_o
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
        	if(start)
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
            nstate <= S_SEND;

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
    case(state)
        S_IDLE: begin
        	bram_addr <= 0;
        	bram_we <= 0;
        	bram_en <= 0;
        	start_sending <= 0;
            send_done_o <= 0;
        end
        
        S_RECEIVE: begin
        	bram_addr <= data_counter;
        	bram_we <= 1;
        	bram_en <= 1;
        	start_sending <= 0;
            send_done_o <= 0;
        end
        
        S_PREP_SEND: begin
            bram_addr <= 0;
        	bram_we <= 0;
        	bram_en <= 0;
        	start_sending <= 0;
            send_done_o <= 0;
        end
        
        S_SEND: begin
        	bram_addr <= data_counter;
        	bram_we <= 0;
        	bram_en <= 1;
        	start_sending <= 1;

            if(data_counter > (N - 1))
                 send_done_o <= 1;
            else
                 send_done_o <= 0;
        end
    endcase
end

always @(posedge clk or negedge rstn) begin
	if (!rstn) begin
		data_counter <= 0;
	end
	else if ((state == S_RECEIVE && dready) || (state == S_SEND && next)) begin
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
    send_acc_data_o <= 0;
    /* start sending and bram address bigger than 0, because of the bram delay */
    if(start_sending) begin
        send_acc_data_o <= 1;
        
        if(data_counter > 10'd4) begin
            send_acc_data_o <= 0;
        end
    end
end

assign data_o = (state == S_SEND) ? bram_dout : 0;

send_acc_data_bram send_data (
	.clka(~clk),    		
	.ena(bram_en),      
	.wea(bram_we),    
	.addra(bram_addr),
	.dina(acc_data),  
	.douta(bram_dout) 
);

endmodule