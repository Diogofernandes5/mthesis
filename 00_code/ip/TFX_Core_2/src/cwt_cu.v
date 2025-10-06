module cwt_cu #(
	parameter N = 1024,
	parameter J1 = 64) (
	input wire clk,
	input wire rstn,

	input wire ifft_ready_i,
    input wire ifft_done_i,
	
//	input wire dl_busy_i,
	
	input wire tx_grant_i,     // possible to tx
	input wire next_i,

	output reg bram_en_o,
	output reg bram_we_o,
	output reg [$clog2(N*J1*2)-1:0] bram_addr_o,

	output reg busy_o,
	
	output reg cwt_done_o,     // init tx
	output reg cwt_ready_o,
	
	output reg cwt_irq_o       // tx done irq
	);

// define states
localparam S_IDLE           = 3'b000;
localparam S_RECEIVE_DATA   = 3'b001;
localparam S_CHECK_J        = 3'b010;
localparam S_PREP_SEND      = 3'b011;
localparam S_SEND_RESULTS   = 3'b100;

// state and nextstate registers
reg [2:0] state;
reg [2:0] nstate;

reg [$clog2(N*J1*2):0] data_counter;
wire [$clog2(J1):0] counter_j;
reg [$clog2(J1):0] counter_j_aux;
reg [2:0] clk_counter;

reg ifft_done_d;

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
    nstate = S_IDLE;
    
	case(state)
		S_IDLE:
			if(ifft_done_i & ifft_ready_i)
				nstate = S_RECEIVE_DATA;
			else
				nstate = S_IDLE;

		S_RECEIVE_DATA:
			if(data_counter == (N-1))
				nstate = S_CHECK_J;
			else 
				nstate = S_RECEIVE_DATA;
		
		S_CHECK_J:
			if(counter_j == J1)
                nstate = S_PREP_SEND;
			else
				nstate = S_IDLE;
	   
	   S_PREP_SEND:
            if(tx_grant_i)
                nstate = S_SEND_RESULTS;
            else 
                nstate = S_PREP_SEND;
		
		S_SEND_RESULTS: // sends results via axi
			if(data_counter == (N*J1*2))
				nstate = S_IDLE;
			else 
				nstate = S_SEND_RESULTS;
	endcase
end

// output logic
always @(*) begin
    bram_en_o = 1'b0;
    bram_we_o = 1'b0;
    bram_addr_o = 32'd0;
    
    start_sending = 1'b0;
    busy_o = 1'b0;
    
    cwt_irq_o = 1'b0;
	case(state)
		S_IDLE: begin
		    // default
		end
			
		S_RECEIVE_DATA: begin
			bram_en_o = 1'b1;
			bram_we_o = 1'b1;
			bram_addr_o = ((counter_j - 1) << $clog2(N)) + data_counter;

			busy_o = 1'b1;
		end
		
		S_CHECK_J: begin
			busy_o = 1'b1;
		end
		
		S_PREP_SEND: begin
			busy_o = 1'b1;
			bram_en_o = 1'b1;
			
		    start_sending = 1'b1;
		end

		S_SEND_RESULTS: begin
			bram_en_o = 1'b1;
			bram_addr_o = data_counter;

			busy_o = 1'b1;
			
			if(data_counter > (N*J1*2 - 5))
                 cwt_irq_o = 1'b1;
            else
                 cwt_irq_o = 1'b0;
		end

	endcase
end

/********** CWT_DONE LOGIC *********/
always @(negedge clk) begin
    cwt_done_o <= 0;
    /* start sending and bram address bigger than 0, because of the bram delay */
    if(start_sending) begin
        cwt_done_o <= 1;
        
        if(tx_grant_i) begin
            cwt_done_o <= 0;
        end
    end
end

/********** cwt_ready_o LOGIC *********/
always @(posedge clk or negedge rstn) begin
	if(~rstn) begin
		cwt_ready_o <= 0;
	end
    else
        if(cwt_done_o)
            cwt_ready_o <= 1;
        else if(!start_sending)
            cwt_ready_o <= 0;        
end


// Data counter and counter_j generation
always @(posedge clk or negedge rstn) begin
	if(~rstn) begin
		data_counter <= 32'd0;
	end
	else begin
		case(state)
			S_IDLE: begin
				data_counter <= 32'd0;
			end
				
			S_RECEIVE_DATA: begin
                if(ifft_ready_i)
                    data_counter <= data_counter + 1;
				else
				    data_counter <= data_counter;
			end
			
			S_CHECK_J: begin
				data_counter <= 32'd0;
			end
			
			S_SEND_RESULTS: begin
                if(next_i)
				    data_counter <= data_counter + 1;
				else 
				    data_counter <= data_counter;
            end
        endcase
	end
end

assign counter_j = counter_j_aux;

always @(posedge clk or negedge rstn) begin
    if(~rstn)
        counter_j_aux <= 'd0; // negative
    else begin
        ifft_done_d <= ifft_done_i;  // Register the previous state of ifft_done_i
    
        if(ifft_done_i && !ifft_done_d) // Rising edge detected
            counter_j_aux <= counter_j_aux + 1;
            
        else if(state == S_SEND_RESULTS)
            counter_j_aux <= 'd0;
    end
end

endmodule