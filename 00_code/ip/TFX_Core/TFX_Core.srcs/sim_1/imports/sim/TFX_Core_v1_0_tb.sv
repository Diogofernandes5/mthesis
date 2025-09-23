`timescale 1ns / 1ps
`include "TFX_Core_v1_0_tb_include.svh"

import axi_vip_pkg::*;
import master_test_axi_vip_0_0_pkg::*;
import master_test_axi_vip_1_0_pkg::*;

module TFX_Core_v1_0_tb();

localparam N = 256;
localparam J1 = 4;

localparam ECONNECTED_SLVR      = 0;
localparam SPI_ENABLE_SLVR      = 1*4;
localparam SEND_INPUTS_EN_SLVR  = 2*4;
localparam TXI_IRQ_STATUS_SLVR  = 3*4;
localparam TXO_IRQ_STATUS_SLVR  = 4*4;

/************SLAVE***********/
axi_monitor_transaction             slv_monitor_transaction;  
axi_monitor_transaction             slave_moniter_transaction_queue[$];  
xil_axi_uint                        slave_moniter_transaction_queue_size =0;  
axi_monitor_transaction             slv_scb_transaction;  
xil_axi_uint                        slv_agent_verbosity = 0;  

/************MASTER***********/
axi_monitor_transaction             mst_monitor_transaction;  
axi_monitor_transaction             master_moniter_transaction_queue[$];  
xil_axi_uint                        master_moniter_transaction_queue_size =0;  
axi_monitor_transaction             mst_scb_transaction;  
xil_axi_uint                        mst_agent_verbosity = 0;  

axi_transaction                     wr_trans;            // Write transaction
axi_transaction                     rd_trans;            // Read transaction
xil_axi_uint                        mtestWID;            // Write ID  
xil_axi_ulong                       mtestWADDR;          // Write ADDR  
xil_axi_len_t                       mtestWBurstLength;   // Write Burst Length   
xil_axi_size_t                      mtestWDataSize;      // Write SIZE  
xil_axi_burst_t                     mtestWBurstType;     // Write Burst Type  

xil_axi_data_beat [255:0]           mtestWUSER;         // Write user  
xil_axi_data_beat                   mtestAWUSER;        // Write Awuser 

bit [31:0]                          mtestWData;         // Write Data
bit [8*4096-1:0]                    Wdatablock;        // Write data block
xil_axi_data_beat                   Wdatabeat[];       // Write data beats

bit                                 clock;
bit                                 resetn;
bit                                 txi_done;
bit                                 txo_done;
bit [31:0]                          X_re;
bit [31:0]                          X_im;
bit                                 cwt_row_ready;
bit                                 cwt_ready;
bit                                 cwt_num;

integer                             pos_aux;

master_test_axi_vip_0_0_slv_mem_t   slv_agent_0;
master_test_axi_vip_1_0_mst_t       mst_agent_0;

`BD_WRAPPER DUT(
    .ARESETN(resetn), 
    .ACLK(clock),
    
    .txi_done_o(txi_done),
    .txo_done_o(txo_done)
); 

assign X_re = DUT.`BD_INST_NAME.TFX_Core_v1_0_0.inst.M_AXI_Data.X_re;
assign X_im = DUT.`BD_INST_NAME.TFX_Core_v1_0_0.inst.M_AXI_Data.X_im;

assign cwt_row_ready = DUT.`BD_INST_NAME.TFX_Core_v1_0_0.inst.M_AXI_Data.cwt_row_ready;
assign cwt_ready = DUT.`BD_INST_NAME.TFX_Core_v1_0_0.inst.M_AXI_Data.cwt_ready;
//assign cwt_num = DUT.`BD_INST_NAME.TFX_Core_v1_0_0.inst.M_AXI_Data.cwt_num;


initial begin
    slv_agent_0 = new("slave vip agent",DUT.`BD_INST_NAME.axi_vip_0.inst.IF);
    slv_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_0.set_agent_tag("Slave VIP");
    slv_agent_0.set_verbosity(slv_agent_verbosity);
    slv_agent_0.start_slave();
    $timeformat (-12, 1, " ps", 1);
end

initial begin
    mst_agent_0 = new("master vip agent",DUT.`BD_INST_NAME.axi_vip_1.inst.IF);
    mst_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    mst_agent_0.set_agent_tag("Master VIP");
    mst_agent_0.set_verbosity(mst_agent_verbosity);
    mst_agent_0.start_master();
end

initial begin
    resetn <= 1'b0;
    #200ns;
    resetn <= 1'b1;
    repeat (5) @(negedge clock); 
end

always #5 clock <= ~clock;

task set_eth_busy(input bit b);
    begin
        mtestWData = b;
        wr_trans.set_data_block(mtestWData);
        mst_agent_0.wr_driver.send(wr_trans);
    end
endtask

initial begin 
    $display("EXAMPLE TEST M_AXI_Data:");
    wait(txo_done == 1'b1);
    
    /******************* SET UP MASTER TRANSFER ****************/
    mtestWID = $urandom_range(0,(1<<(0)-1)); 
    mtestWADDR = TXO_IRQ_STATUS_SLVR;
    mtestWBurstLength = 0;
    mtestWDataSize = xil_axi_size_t'(xil_clog2((32)/8));
    mtestWBurstType = XIL_AXI_BURST_TYPE_INCR;
    
    wr_trans = mst_agent_0.wr_driver.create_transaction("write transaction");
    wr_trans.set_write_cmd(mtestWADDR,mtestWBurstType,mtestWID,
                               mtestWBurstLength,mtestWDataSize);
    
    forever begin
        #1000us;
        set_eth_busy(1);
    end
end
  
initial begin
    #1;
    forever begin
        slv_agent_0.monitor.item_collected_port.get(slv_monitor_transaction);
        slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
        slave_moniter_transaction_queue_size++;
    end
end

/************ load buffers ***************/
bit [31:0] golden_re_buf[0:(N*J1*2)-1];
bit [31:0] golden_im_buf[0:(N*J1*2)-1];

bit [31:0] output_re_buf[0:(N*J1*2)-1];
bit [31:0] output_im_buf[0:(N*J1*2)-1];

integer fp;     // file descriptor
integer j;      // fd write/read index
bit [$clog2(N*J1*2)-1:0] i_out;  // num iterations

integer num_errors = -1;

integer cwt_count = 0;

/**************** FILENAMES ***************/
localparam GOLDEN_RE_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_re.txt";
localparam GOLDEN_IM_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_im.txt";

localparam GOLDEN_RE2_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_re2.txt";
localparam GOLDEN_IM2_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_im2.txt";

/************* DUT -> OUTPUT VECTORS ************/
always @(posedge clock or negedge resetn) begin
    if(!resetn)
        i_out = 0;

    else if(cwt_row_ready) begin
        output_re_buf[i_out] <= X_re;
        output_im_buf[i_out] <= X_im;

        i_out = i_out + 1;
    end
end

task automatic read_golden_file(
    input  string     FILENAME,
    ref    bit [31:0] golden_buf [0:(N*J1)-1]);
    begin
        fp = $fopen(FILENAME, "r");  
          
        if(fp == 0) begin
            $display("ERROR: failed to open '%s'", FILENAME);
            $stop;
        end
        
        for (j = 0; j < N*J1; j++) begin
            void'($fscanf(fp, "%d\n", golden_buf[j]));
        end
        
        $fclose(fp);
    end
endtask


assign pos_aux = cwt_num ? (N*J1) : 0;

assign cwt_num = cwt_count % 2;

/*************** COMPARE VALUES ****************/
always @(posedge txo_done) begin
//    wait(~cwt_ready);

    $display("********** CWT Number %0d **********", cwt_count);
    cwt_count = cwt_count + 1;
    
    /******** COMPARE RE GOLDEN **********/
    $display("Comparing output results with %0s ...", cwt_num ? GOLDEN_RE2_FILENAME : GOLDEN_RE_FILENAME);
    num_errors = 0;
    for(j = pos_aux; j < N*J1*(1 << cwt_num); j = j + 1) begin
       if(output_re_buf[j] != golden_re_buf[j]) begin
            $display("ERROR at input[%2d]: Output values differ output=%5d, golden=%5d", 
                j, $signed(output_re_buf[j]), $signed(golden_re_buf[j]));
            num_errors = num_errors + 1;
        end
    end
    // NUM ERRORS REAL
    if(num_errors != 0) begin
        $display("RE FAILED for %d - %3d errors!\n", cwt_num, num_errors);
        $stop;
    end
    
    $display("RE PASSED\n");
    
    /******** COMPARE IM GOLDEN **********/
    $display("Comparing output results with %0s ...", cwt_num ? GOLDEN_IM2_FILENAME : GOLDEN_IM_FILENAME);
    num_errors = 0;
    for(j = pos_aux; j < N*J1*(2 & cwt_num); j = j + 1) begin
        if(output_im_buf[j] != golden_im_buf[j]) begin
            $display("ERROR at input[%2d]: Output values differ output=%5d, golden=%5d", 
                j, $signed(output_im_buf[j]), $signed(golden_im_buf[j]));
            num_errors = num_errors + 1;
        end
    end
    
    // NUM ERRORS IM
    if(num_errors != 0) begin
        $display("IM FAILED for %d - %3d errors!\n", cwt_num, num_errors);
        $stop;
    end
    
    $display("IM PASSED\n");
    
    if(cwt_num) begin
        output_re_buf = '{default:0};
        output_im_buf = '{default:0};
    end
end

/************** INIT SLAVE REGISTERS ***************/
initial begin
    // ECONNECTED
    mtestWID = $urandom_range(0,(1<<(0)-1)); 
    mtestWADDR = ECONNECTED_SLVR;
    mtestWData = 1;
    mtestWBurstLength = 0;
    mtestWDataSize = xil_axi_size_t'(xil_clog2((32)/8));
    mtestWBurstType = XIL_AXI_BURST_TYPE_INCR;
    
    wr_trans = mst_agent_0.wr_driver.create_transaction("write transaction");
    wr_trans.set_write_cmd(mtestWADDR,mtestWBurstType,mtestWID,
                               mtestWBurstLength,mtestWDataSize);
    wr_trans.set_data_block(mtestWData);
    mst_agent_0.wr_driver.send(wr_trans);
    
    // SPI_ENABLE
    mtestWADDR = SPI_ENABLE_SLVR;
    mtestWData = 0;
    wr_trans.set_write_cmd(mtestWADDR,mtestWBurstType,mtestWID,
                               mtestWBurstLength,mtestWDataSize);
    wr_trans.set_data_block(mtestWData);
    mst_agent_0.wr_driver.send(wr_trans);
    
    // SEND_INPUTS_EN_SLVR
    mtestWADDR = SEND_INPUTS_EN_SLVR;
    mtestWData = 0;
    wr_trans.set_write_cmd(mtestWADDR,mtestWBurstType,mtestWID,
                               mtestWBurstLength,mtestWDataSize);
    wr_trans.set_data_block(mtestWData);
    mst_agent_0.wr_driver.send(wr_trans);
end

initial begin
    read_golden_file(GOLDEN_RE_FILENAME, golden_re_buf[0:N*J1-1]);
    read_golden_file(GOLDEN_RE2_FILENAME, golden_re_buf[N*J1:N*J1*2-1]);
    read_golden_file(GOLDEN_IM_FILENAME, golden_im_buf[0:N*J1-1]);
    read_golden_file(GOLDEN_IM2_FILENAME, golden_im_buf[N*J1:N*J1*2-1]);
end


endmodule
