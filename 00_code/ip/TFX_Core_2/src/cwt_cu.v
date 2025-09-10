module cwt_cu #(
	parameter N = 1024,
	parameter J1 = 64) (
	input wire clk,
	input wire rstn,

	input wire ifft_ready_i,
    input wire ifft_done_i,
	
	input wire dl_busy_i,
	
	input wire next,

	output reg bram_en_o,
	output reg bram_we_o,
	output reg [$clog2(N*J1*2)-1:0] bram_addr_o,

	output reg busy_o,
	
	output reg cwt_done_o,
	output reg cwt_ready_o,
	
	output reg cwt_irq_o
	);

// define states
localparam S_IDLE           = 3'b000;
localparam S_RECEIVE_DATA   = 3'b001;
localparam S_CHECK_J        = 3'b010;
localparam S_SEND_RESULTS   = 3'b011;
localparam S_SEND_INTR      = 3'b100;

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
//			if(counter_j == (J1-1))
			if(counter_j == J1)
                if(~dl_busy_i)
                    nstate = S_SEND_RESULTS;
                else 
                    nstate = S_CHECK_J;
			else
				nstate = S_IDLE;		

		S_SEND_RESULTS: 
			if(data_counter == (N*J1*2))
				nstate = S_SEND_INTR;
			else 
				nstate = S_SEND_RESULTS;
				
        S_SEND_INTR:
            if(clk_counter > 3'd6)
                nstate = S_IDLE;
            else
                nstate = S_SEND_INTR;
		default:
			nstate = S_IDLE;
	endcase
end

// output logic
always @(*) begin
	case(state)
		S_IDLE: begin
			bram_en_o <= 1'b0;
			bram_we_o <= 1'b0;
			bram_addr_o <= 32'd0;

			start_sending <= 1'b0;
			busy_o <= 1'b0;
			
			cwt_irq_o <= 0;
		end
			
		S_RECEIVE_DATA: begin
			bram_en_o <= 1'b1;
			bram_we_o <= 1'b1;
			bram_addr_o <= ((counter_j - 1) << $clog2(N)) + data_counter;
//			bram_addr_o <= ((counter_j) << $clog2(N)) + data_counter;

			start_sending <= 1'b0;
			busy_o <= 1'b1;
			
			cwt_irq_o <= 0;
		end
		
		S_CHECK_J: begin
			bram_en_o <= 1'b1;
			bram_we_o <= 1'b0;
			bram_addr_o <= 32'd0;

			start_sending <= 1'b0;
			busy_o <= 1'b1;
			
			cwt_irq_o <= 0;
		end

		S_SEND_RESULTS: begin
			bram_en_o <= 1'b1;
			bram_we_o <= 1'b0;
			bram_addr_o <= data_counter;

			start_sending <= 1'b1;
			busy_o <= 1'b1;			
			
			cwt_irq_o <= 0;    
		end
		
		S_SEND_INTR: begin
		    bram_en_o <= 1'b0;
			bram_we_o <= 1'b0;
			bram_addr_o <= 'd0;

			start_sending <= 1'b0;
			busy_o <= 1'b1;			
			
			cwt_irq_o <= 1;
		end
		
		default: begin
            bram_en_o <= 1'b0;
            bram_we_o <= 1'b0;
            bram_addr_o <= 32'd0;
            
            start_sending <= 1'b0;
            busy_o <= 1'b0;
            
			cwt_irq_o <= 0;
		end

	endcase
end

/********** CWT_READY LOGIC *********/
always @(negedge clk) begin
    cwt_done_o <= 0;
    /* start sending and bram address bigger than 0, because of the bram delay */
    if(start_sending) begin
        cwt_done_o <= 1;
        
        if(data_counter > 10'd2) begin
            cwt_done_o <= 0;
        end
    end
end

always @(posedge clk or negedge rstn) begin
	if(~rstn) begin
		cwt_ready_o <= 0;
	end
    else
        if(cwt_done_o)
            cwt_ready_o <= 1;
        else if(~start_sending)
            cwt_ready_o <= 0;        
end


// Data counter and counter_j generation
always @(posedge clk or negedge rstn) begin
	if(~rstn) begin
		data_counter <= 32'd0;
		clk_counter <= 'd0;
	end
	else begin
		case(state)
			S_IDLE: begin
				data_counter <= 32'd0;
                clk_counter <= 'd0;
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
                if(next)
				    data_counter <= data_counter + 1;
				else 
				    data_counter <= data_counter;
            end
            
            S_SEND_INTR:
                clk_counter <= clk_counter + 1;
        endcase
	end
end

assign counter_j = counter_j_aux;

//always @(posedge clk or negedge rstn) begin
//    if(~rstn)
//        counter_j_aux <= {($clog2(J1)){1'b1}}; // negative
//    else begin
//        ifft_done_d <= ifft_done_i;  // Register the previous state of ifft_done_i
    
//        if (ifft_done_i && !ifft_done_d) begin
//            // Rising edge detected
//            counter_j_aux <= counter_j_aux + 1;
//        end
//        else if (state == S_SEND_RESULTS)
//            counter_j_aux <= {($clog2(J1)){1'b1}};
//    end
//end

always @(posedge clk or negedge rstn) begin
    if(~rstn)
        counter_j_aux <= 'd0; // negative
    else begin
        ifft_done_d <= ifft_done_i;  // Register the previous state of ifft_done_i
    
        if (ifft_done_i && !ifft_done_d) begin
            // Rising edge detected
            counter_j_aux <= counter_j_aux + 1;
        end
        else if (state == S_SEND_RESULTS)
            counter_j_aux <= 'd0;
    end
end

endmodule