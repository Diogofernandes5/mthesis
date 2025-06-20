
`timescale 1ns / 1ps
`include "TFX_Core_v1_0_tb_include.svh"

import axi_vip_pkg::*;
import master_test_axi_vip_0_0_pkg::*;

module TFX_Core_v1_0_tb();

axi_monitor_transaction                 slv_monitor_transaction;  
axi_monitor_transaction                 slave_moniter_transaction_queue[$];  
xil_axi_uint                            slave_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 slv_scb_transaction;  
xil_axi_uint                            slv_agent_verbosity = 0;  

bit                                     clock;
bit                                     resetn;
bit start;
bit cwt_done;

master_test_axi_vip_0_0_slv_mem_t       slv_agent_0;

`BD_WRAPPER DUT(
    .ARESETN(resetn), 
    .ACLK(clock),
    
    .start(start),
    .cwt_done_o(cwt_done)
); 
  
initial begin
    slv_agent_0 = new("slave vip agent",DUT.`BD_INST_NAME.axi_vip_0.inst.IF);
    slv_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_0.set_agent_tag("Slave VIP");
    slv_agent_0.set_verbosity(slv_agent_verbosity);
    slv_agent_0.start_slave();
    $timeformat (-12, 1, " ps", 1);
end

initial begin
    resetn <= 1'b0;
    #200ns;
    resetn <= 1'b1;
    repeat (5) @(negedge clock); 
end

always #5 clock <= ~clock;

initial begin    
    start = 0;
    #300ns;
    start = 1;
    #40ns;
    start = 0;
    $display("EXAMPLE TEST M_AXI_Data:");
    wait(cwt_done == 1'b1);
    
    $display("M_AXI_Data: PTGEN_TEST_FINISHED!");
    
    #200ns;
    $stop;
end
  
initial begin
    #1;
    forever begin
        slv_agent_0.monitor.item_collected_port.get(slv_monitor_transaction);
        slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
        slave_moniter_transaction_queue_size++;
    end
end

endmodule
