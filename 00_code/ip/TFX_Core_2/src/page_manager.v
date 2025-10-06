module page_manager 
(
    input wire clk, 
    input wire rstn,
    
    input wire req_page_i,
    input wire master_busy_i,
    input wire tx_ack_i,

    output wire page_id_o,
    output reg page_ready_o
);

reg         producer_ptr;
reg [2:0]   counter;

wire pages_full;
wire pages_empty;

assign page_id_o = producer_ptr;

assign pages_full = counter > 1;
assign pages_empty = (counter == 0);

reg req_page_writen;

always @(posedge clk) begin
    // rising edge detect
    if(req_page_i && !req_page_writen && !pages_full && !master_busy_i) begin
        page_ready_o <= 1;
        req_page_writen <= 1;
    end
    else begin
        page_ready_o <= 0;
        req_page_writen <= 0;
    end
    
    if(page_ready_o) begin
        producer_ptr <= ~producer_ptr;
        counter <= counter + 1;
    end

    if(tx_ack_i && !pages_empty) begin
        counter <= counter - 1;
    end
    
    if(!rstn) begin
        producer_ptr <= 1'b1;
        counter <= 'd0;
    end
end

endmodule