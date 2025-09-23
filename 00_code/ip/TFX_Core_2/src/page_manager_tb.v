`timescale 1ns / 1ps

module page_manager_tb ();

reg clk;
reg rstn;

reg tx_grant_i;
reg irq_status_i;

wire page_id_o;
wire page_ready_o;

always #5 clock <= ~clock;

initial begin
    clk = 1;
    rstn = 0;
    #50;
    rstn = 1;
end

page_manager DUT (
    .clk(clk), 
    .rstn(rstn),
    .tx_grant_i(tx_grant_i),
    .irq_status_i(irq_status_i),
    .page_id_o(page_id_o),
    .page_ready_o(page_ready_o)
);

initial begin
    tx_grant_i = 0;
    irq_status_i = 0;
    #60;
    tx_grant_i = 1;
    #20;
    tx_grant_i = 0;
    #100;
    tx_grant_i = 1;
    #20;
    tx_grant_i = 0;
    #100;

end

endmodule