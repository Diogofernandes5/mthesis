
`timescale 1ns / 1ps
`include "TFX_Core_v1_0_tb_include.svh"

`define CLK_PERIOD  10

import axi_vip_pkg::*;
import master_test_axi_vip_0_0_pkg::*;

module TFX_Core_v1_0_tb();

axi_monitor_transaction                 slv_monitor_transaction;  
axi_monitor_transaction                 slave_moniter_transaction_queue[$];  
xil_axi_uint                            slave_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 slv_scb_transaction;  
xil_axi_uint                            slv_agent_verbosity = 0;  

bit                                     clk;
reg                                     rstn;

bit SPI_CS;
bit SPI_MISO;
bit SPI_MOSI;
bit SPI_clk;

bit config_done;
bit intr;
bit [3:0] rx_count;
bit acc_send_done_o;
bit cwt_send_done_o;

master_test_axi_vip_0_0_slv_mem_t       slv_agent_0;

bit [2:0] send_index;

localparam integer N = 256;


`BD_WRAPPER DUT(
    .ARESETN(rstn), 
    .ACLK(clk),

    .SPI_CS(SPI_CS),
    .SPI_MISO(SPI_MISO),
    .SPI_MOSI(SPI_MOSI),
    .SPI_clk(SPI_clk),
    
    .intr(intr),
    .cwt_send_done(cwt_send_done_o),
    .acc_send_done(acc_send_done_o)
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
//    rstn <= 1'b0;
//    #200ns;
//    rstn <= 1'b1;
//    repeat (5) @(negedge clk); 
    
    clk <= 1;
    rstn <= 0;
        
    #(`CLK_PERIOD*18) rstn <= 1;
end

always #(`CLK_PERIOD/2) clk <= ~clk;

// Test Stimulus
initial begin
    // Initialize inputs
    send_index <= 3'd0;
    intr = 0;
    SPI_MISO = 0;
    
    if(DUT.`BD_INST_NAME.TFX_Core_v1_0_0.inst.M_AXI_Data.spi_enable) begin    
        wait(acc_send_done_o == 1);
        $stop;
    end
    
    wait(cwt_send_done_o == 1);
    
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

/***************** SPI SLAVE SIM ***************/

//assign config_done = DUT.`BD_INST_NAME.TFX_Core_v1_0_0.inst.M_AXI_Data.acc_read.config_done;
//assign rx_count = DUT.`BD_INST_NAME.TFX_Core_v1_0_0.inst.M_AXI_Data.acc_read.rx_count;

localparam INPUT_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/input.txt";

integer fp;
integer j;

reg [15:0] input_buf[0:N-1];

// SPI Slave Model
reg [7:0] spi_slave_data [0:N*2]; // Simulate SPI slave data
reg [$clog2(N*2):0] spi_slave_index;
reg [$clog2(N*2):0] intr_count;


// SPI Slave Behavior
always @(negedge SPI_clk or negedge rstn) begin
    if (!rstn) begin
        spi_slave_index <= 0;
        SPI_MISO <= 0;
        send_index <= 3'd0;
    end else if (SPI_CS == 0 && config_done && rx_count > 0) begin
        SPI_MISO <= spi_slave_data[spi_slave_index][7 - send_index];
        send_index <= send_index + 1;
        if (send_index == 7) begin
            spi_slave_index <= spi_slave_index + 1;
        end
        if(spi_slave_index == (N*2))
            spi_slave_index <= 0;
    end
end

task send_intr;
    input int duration; // Duration for which the interrupt is high
    begin
        intr = 1; // Assert interrupt
        #duration; // Hold interrupt for the specified duration
        intr = 0; // Deassert interrupt
    end
endtask


always @(posedge clk or negedge rstn) begin
    if(~rstn) begin
        intr_count <= 13'd0;
    end
    else if(config_done && SPI_CS) begin// && (intr_count < N)) begin
        //intr_count <= intr_count + 1'd1;
        if(intr_count == N) begin
            intr_count <= 0;
            intr <= 0;
        end
        else
            send_intr(10);
            
    end
end

always @(negedge SPI_CS) begin
    if(config_done)
        intr_count = intr_count + 1;
end

/************** INPUT FILE *************/
always @(negedge rstn) begin
    fp = $fopen(INPUT_FILENAME, "r");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", INPUT_FILENAME);
        $stop;
    end
   
    // load input values
    for(j = 0; j < N; j = j + 1) begin
        $fscanf(fp, "%d\n", input_buf[j]);
        spi_slave_data[j*2] = input_buf[j][7:0];
        spi_slave_data[j*2+1] = input_buf[j][15:8];
    end
    
    $fclose(fp);
end


endmodule
