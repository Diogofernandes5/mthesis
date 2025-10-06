module rr_arbitrer
(
    input wire clk, 
    input wire rstn,
    
    // input interface 
    input wire          reqIN_i,            // input requests transfer
    input wire  [31:0]  dataIN_i,           // data from input to be sent
    input wire          pageIN_ready_i,
    output reg          grantIN_o,          // arbiter grants master to input

    // output interface
    input wire          reqOUT_i,
    input wire  [31:0]  dataOUT_i,
    input wire          pageOUT_ready_i,
    output reg          grantOUT_o,

    // AXI master signals 
    input wire          master_busy_i,      // produced by AW/B handshake logic
    output reg [31:0]   master_data_o,
    output reg          master_start_o    // pulse to start master with current params
);

// define states
localparam S_IDLE       = 2'b00;
localparam S_GRANT_IN   = 2'b01;
localparam S_GRANT_OUT  = 2'b10;
localparam S_WAIT       = 2'b11;

// state and nextstate registers
reg [1:0] state;
reg [1:0] nstate;

reg rr_arbitrer_r;

// state register
always @(posedge clk or negedge rstn) begin
    if(!rstn)
        state <= S_IDLE;
    else begin
        state <= nstate;
    end
end

// nextstate logic
always @(*) begin
    case(state)
        S_IDLE: begin
        	// pick a requester - implement round-robin if both request
            if(reqIN_i && !reqOUT_i && pageIN_ready_i) 
                nstate = S_GRANT_IN;

            else if(reqOUT_i && !reqIN_i && pageOUT_ready_i) 
                nstate = S_GRANT_OUT;
            
            else if(reqIN_i && reqOUT_i)
                if(!rr_arbitrer_r && pageIN_ready_i) // RR arb
                    nstate = S_GRANT_IN; 
                else if(rr_arbitrer_r && pageOUT_ready_i)
                    nstate = S_GRANT_OUT;
                else
                    nstate = S_IDLE;
            else 
                nstate = S_IDLE;
                
//            else if(reqIN_i && pageIN_ready_i && reqOUT_i && pageOUT_ready_i)
//                if(!rr_arbitrer_r && pageIN_ready_i) // RR arb
//                    nstate = S_GRANT_IN; 
//                else
//                    nstate = S_GRANT_OUT;
//            else 
//                nstate = S_IDLE;
        end

        S_GRANT_IN:
            if(master_busy_i)
                nstate = S_WAIT;
        
        S_GRANT_OUT: 
            if(master_busy_i)
                nstate = S_WAIT;
            
        S_WAIT: 
            if(!master_busy_i)
                nstate = S_IDLE;
            else
                nstate = S_WAIT;
    endcase
end

// output logic
always @(*) begin
    grantIN_o = 0;

    grantOUT_o = 0;

    master_start_o = 0;
    master_data_o = 'd0;

    case(state)
        S_IDLE: begin
        end
        
        S_GRANT_IN: begin
        	grantIN_o = 1;

            master_start_o = 1;
            master_data_o = dataIN_i;
        end
        
        S_GRANT_OUT: begin
            grantOUT_o = 1;

            master_start_o = 1;
            master_data_o = dataOUT_i;
        end
            
        S_WAIT: begin
            if(rr_arbitrer_r)
                master_data_o = dataIN_i;
            else 
                master_data_o = dataOUT_i;
        end
    endcase
end

always @(posedge clk) begin
    if(state == S_GRANT_IN)
        rr_arbitrer_r <= 1;
    else if(state == S_GRANT_OUT)
        rr_arbitrer_r <= 0;
    else 
        rr_arbitrer_r <= rr_arbitrer_r;
    
    if(!rstn) begin
        rr_arbitrer_r <= 0;
    end
end

endmodule