`timescale 1 ns / 1 ps

module TFX_Core_v1_0_M_AXI_Data #
(
    // Users to add parameters here

    // User parameters ends
    // Do not modify the parameters beyond this line

    // Base address of targeted slave
    parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
    // Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
    parameter integer C_M_AXI_BURST_LEN	= 16,
    // Thread ID Width
    parameter integer C_M_AXI_ID_WIDTH	= 1,
    // Width of Address Bus
    parameter integer C_M_AXI_ADDR_WIDTH	= 32,
    // Width of Data Bus
    parameter integer C_M_AXI_DATA_WIDTH	= 32,
    // Width of User Write Address Bus
    parameter integer C_M_AXI_AWUSER_WIDTH	= 0,
    // Width of User Read Address Bus
    parameter integer C_M_AXI_ARUSER_WIDTH	= 0,
    // Width of User Write Data Bus
    parameter integer C_M_AXI_WUSER_WIDTH	= 0,
    // Width of User Read Data Bus
    parameter integer C_M_AXI_RUSER_WIDTH	= 0,
    // Width of User Response Bus
    parameter integer C_M_AXI_BUSER_WIDTH	= 0,
    // value to be used in C_M_AxCACHE
    parameter C_M_CACHE_VAL = 4'b0010,
    // value to be used in C_M_AxPROT
    parameter C_M_PROT_VAL = 3'b000
)
(
    // Users to add ports here
    input wire start_i, // start CWT
//    input wire [C_M_AXI_DATA_WIDTH-1:0] data_in,
    
    input wire dl_busy, // em principio podes por a 0
    
    output wire cwt_done, //inicio das transmissões

    // User ports ends
    // Do not modify the ports beyond this line

    // Global Clock Signal.
    input wire  M_AXI_ACLK,
    // Global Reset Singal. This Signal is Active Low
    input wire  M_AXI_ARESETN,
    // Master Interface Write Address ID
    output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_AWID,
    // Master Interface Write Address
    output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
    // Burst length. The burst length gives the exact number of transfers in a burst
    output wire [7 : 0] M_AXI_AWLEN,
    // Burst size. This signal indicates the size of each transfer in the burst
    output wire [2 : 0] M_AXI_AWSIZE,
    // Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
    output wire [1 : 0] M_AXI_AWBURST,
    // Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
    output wire  M_AXI_AWLOCK,
    // Memory type. This signal indicates how transactions
    // are required to progress through a system.
    output wire [3 : 0] M_AXI_AWCACHE,
    // Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
    output wire [2 : 0] M_AXI_AWPROT,
    // Quality of Service, QoS identifier sent for each write transaction.
    output wire [3 : 0] M_AXI_AWQOS,
    // Optional User-defined signal in the write address channel.
    output wire [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER,
    // Write address valid. This signal indicates that
    // the channel is signaling valid write address and control information.
    output wire  M_AXI_AWVALID,
    // Write address ready. This signal indicates that
    // the slave is ready to accept an address and associated control signals
    input wire  M_AXI_AWREADY,
    // Master Interface Write Data.
    output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
    // Write strobes. This signal indicates which byte
    // lanes hold valid data. There is one write strobe
    // bit for each eight bits of the write data bus.
    output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
    // Write last. This signal indicates the last transfer in a write burst.
    output wire  M_AXI_WLAST,
    // Optional User-defined signal in the write data channel.
    output wire [C_M_AXI_WUSER_WIDTH-1 : 0] M_AXI_WUSER,
    // Write valid. This signal indicates that valid write
    // data and strobes are available
    output wire  M_AXI_WVALID,
    // Write ready. This signal indicates that the slave
    // can accept the write data.
    input wire  M_AXI_WREADY,
    // Master Interface Write Response.
    input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_BID,
    // Write response. This signal indicates the status of the write transaction.
    input wire [1 : 0] M_AXI_BRESP,
    // Optional User-defined signal in the write response channel
    input wire [C_M_AXI_BUSER_WIDTH-1 : 0] M_AXI_BUSER,
    // Write response valid. This signal indicates that the
    // channel is signaling a valid write response.
    input wire  M_AXI_BVALID,
    // Response ready. This signal indicates that the master
    // can accept a write response.
    output wire  M_AXI_BREADY,
    // Master Interface Read Address.
    output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID,
    // Read address. This signal indicates the initial
    // address of a read burst transaction.
    output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
    // Burst length. The burst length gives the exact number of transfers in a burst
    output wire [7 : 0] M_AXI_ARLEN,
    // Burst size. This signal indicates the size of each transfer in the burst
    output wire [2 : 0] M_AXI_ARSIZE,
    // Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
    output wire [1 : 0] M_AXI_ARBURST,
    // Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
    output wire  M_AXI_ARLOCK,
    // Memory type. This signal indicates how transactions
    // are required to progress through a system.
    output wire [3 : 0] M_AXI_ARCACHE,
    // Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
    output wire [2 : 0] M_AXI_ARPROT,
    // Quality of Service, QoS identifier sent for each read transaction
    output wire [3 : 0] M_AXI_ARQOS,
    // Optional User-defined signal in the read address channel.
    output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,
    // Write address valid. This signal indicates that
    // the channel is signaling valid read address and control information
    output wire  M_AXI_ARVALID,
    // Read address ready. This signal indicates that
    // the slave is ready to accept an address and associated control signals
    input wire  M_AXI_ARREADY,
    // Read ID tag. This signal is the identification tag
    // for the read data group of signals generated by the slave.
    input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID,
    // Master Read Data
    input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
    // Read response. This signal indicates the status of the read transfer
    input wire [1 : 0] M_AXI_RRESP,
    // Read last. This signal indicates the last transfer in a read burst
    input wire  M_AXI_RLAST,
    // Optional User-defined signal in the read address channel.
    input wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER,
    // Read valid. This signal indicates that the channel
    // is signaling the required read data.
    input wire  M_AXI_RVALID,
    // Read ready. This signal indicates that the master can
    // accept the read data and response information.
    output wire  M_AXI_RREADY
);

// function called clogb2 that returns an integer which has the 
// value of the ceiling of the log base 2.                      
function integer clogb2 (input integer bit_depth);              
begin                                                           
    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
        bit_depth = bit_depth >> 1;                                 
end                                                           
endfunction                                                     

// C_TRANSACTIONS_NUM is the width of the index counter for 
// number of write or read transaction.
localparam integer C_TRANSACTIONS_NUM = clogb2(C_M_AXI_BURST_LEN-1);

// Burst length for transactions, in C_M_AXI_DATA_WIDTHs.
// Non-2^n lengths will eventually cause bursts across 4K address boundaries.
localparam integer C_MASTER_LENGTH	= 12;
// total number of burst transfers is master length divided by burst length and burst size
localparam integer C_NO_BURSTS_REQ = C_MASTER_LENGTH-clogb2((C_M_AXI_BURST_LEN*C_M_AXI_DATA_WIDTH/8)-1);

// Example State machine to initialize counter, initialize write transactions, 
// initialize read transactions and comparison of read data with the 
// written data words.
parameter [1:0] IDLE = 2'b00, // This state initiates AXI4Lite transaction 
        // after the state machine changes state to INIT_WRITE 
        // when there is 0 to 1 transition on INIT_AXI_TXN
        INIT_WRITE   = 2'b01; // This state initializes write transaction,
        // once writes are done, the state machine 
        // changes state to INIT_READ

reg [1:0] mst_exec_state;

// AXI4LITE signals
//AXI4 internal temp signals
reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
reg  	axi_awvalid;
reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
reg  	axi_wlast;
reg  	axi_wvalid;
reg  	axi_bready;
reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
reg  	axi_arvalid;
reg  	axi_rready;
//write beat count in a burst
reg [C_TRANSACTIONS_NUM : 0] 	write_index;
//read beat count in a burst
//reg [C_TRANSACTIONS_NUM : 0] 	read_index;
//size of C_M_AXI_BURST_LEN length burst in bytes
wire [C_TRANSACTIONS_NUM+2 : 0] 	burst_size_bytes;
//The burst counters are used to track the number of burst transfers of C_M_AXI_BURST_LEN burst length needed to transfer 2^C_MASTER_LENGTH bytes of data.
reg [C_NO_BURSTS_REQ : 0] 	write_burst_counter;
//reg [C_NO_BURSTS_REQ : 0] 	read_burst_counter;
reg  	start_single_burst_write;
//reg  	start_single_burst_read;
reg  	writes_done;
//reg  	reads_done;
//reg  	error_reg;
//reg  	compare_done;
//reg  	read_mismatch;
reg  	burst_write_active;
//reg  	burst_read_active;
reg  [C_M_AXI_DATA_WIDTH-1 : 0] 	expected_rdata;
//Interface response error flags
wire  	write_resp_error;
//wire  	read_resp_error;
wire  	wnext;
//wire  	rnext;
reg  	init_txn_ff;
reg  	init_txn_ff2;
reg  	init_txn_edge;
wire  	init_txn_pulse;
wire    INIT_AXI_TXN;

reg write_done_prev;
wire write_done_pulse;

// I/O Connections assignments

//I/O Connections. Write Address (AW)
assign M_AXI_AWID	= 'b0;
//The AXI address is a concatenation of the target base address + active offset range
assign M_AXI_AWADDR	= C_M_TARGET_SLAVE_BASE_ADDR + axi_awaddr;
//Burst LENgth is number of transaction beats, minus 1
assign M_AXI_AWLEN	= C_M_AXI_BURST_LEN - 1;
//Size should be C_M_AXI_DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
assign M_AXI_AWSIZE	= clogb2((C_M_AXI_DATA_WIDTH/8)-1);
//INCR burst type is usually used, except for keyhole bursts
assign M_AXI_AWBURST	= 2'b01;
assign M_AXI_AWLOCK	= 1'b0;
//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
assign M_AXI_AWCACHE	= C_M_CACHE_VAL;
assign M_AXI_AWPROT	= C_M_PROT_VAL;
assign M_AXI_AWQOS	= 4'h0;
assign M_AXI_AWUSER	= 'b1;
assign M_AXI_AWVALID	= axi_awvalid;
//Write Data(W)
assign M_AXI_WDATA	= axi_wdata;
//All bursts are complete and aligned in this example
assign M_AXI_WSTRB	= {(C_M_AXI_DATA_WIDTH/8){1'b1}};
assign M_AXI_WLAST	= axi_wlast;
assign M_AXI_WUSER	= 'b0;
assign M_AXI_WVALID	= axi_wvalid;
//Write Response (B)
assign M_AXI_BREADY	= axi_bready;
//Read Address (AR)
assign M_AXI_ARID	= 'b0;
assign M_AXI_ARADDR	= C_M_TARGET_SLAVE_BASE_ADDR + axi_araddr;
//Burst LENgth is number of transaction beats, minus 1
assign M_AXI_ARLEN	= C_M_AXI_BURST_LEN - 1;
//Size should be C_M_AXI_DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
assign M_AXI_ARSIZE	= clogb2((C_M_AXI_DATA_WIDTH/8)-1);
//INCR burst type is usually used, except for keyhole bursts
assign M_AXI_ARBURST	= 2'b01;
assign M_AXI_ARLOCK	= 1'b0;
//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
assign M_AXI_ARCACHE	= 4'b0010;
assign M_AXI_ARPROT	= 3'h0;
assign M_AXI_ARQOS	= 4'h0;
assign M_AXI_ARUSER	= 'b1;
assign M_AXI_ARVALID	= axi_arvalid;
//Read and Read Response (R)
assign M_AXI_RREADY	= axi_rready;
//Example design I/O
assign TXN_DONE	= compare_done;
//Burst size in bytes
assign burst_size_bytes	= C_M_AXI_BURST_LEN * C_M_AXI_DATA_WIDTH/8;
assign init_txn_pulse	= (!init_txn_ff2) && init_txn_ff;


//Generate a pulse to initiate AXI transaction.
always @(posedge M_AXI_ACLK)										      
begin                                                                        
    // Initiates AXI transaction delay    
    if (M_AXI_ARESETN == 0 )                                                   
      begin                                                                    
        init_txn_ff <= 1'b0;                                                   
        init_txn_ff2 <= 1'b0;                                                   
      end                                                                               
    else                                                                       
      begin  
        init_txn_ff <= INIT_AXI_TXN;
        init_txn_ff2 <= init_txn_ff;                                                                 
      end                                                                      
end     


//--------------------
//Write Address Channel
//--------------------

// The purpose of the write address channel is to request the address and 
// command information for the entire transaction.  It is a single beat
// of information.

// The AXI4 Write address channel in this example will continue to initiate
// write commands as fast as it is allowed by the slave/interconnect.
// The address will be incremented on each accepted address transaction,
// by burst_size_byte to point to the next address. 

always @(posedge M_AXI_ACLK)                                   
begin                                                                                                                               
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                                                                      
        axi_awvalid <= 1'b0;                                           
                                                                     
    // If previously not valid , start next transaction                
    else if (~axi_awvalid && start_single_burst_write)                                                                          
        axi_awvalid <= 1'b1;                                           
                                                            
    /* Once asserted, VALIDs cannot be deasserted, so axi_awvalid      
    must wait until transaction is accepted */                         
    else if (M_AXI_AWREADY && axi_awvalid)                                                                                       
        axi_awvalid <= 1'b0;                                           
                                                            
    else                                                               
        axi_awvalid <= axi_awvalid;                                      
end                                                                
                                                                   
                                                                   
// Next address after AWREADY indicates previous address acceptance    
always @(posedge M_AXI_ACLK)                                         
begin                                                                
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                                   
        axi_awaddr <= 'b0;                                             
                                                             
    else if (M_AXI_AWREADY && axi_awvalid)                                                                                         
        axi_awaddr <= axi_awaddr + burst_size_bytes;                                                                              
    else                                                               
        axi_awaddr <= axi_awaddr;                                        
end                                                                

//--------------------
//Write Data Channel
//--------------------

//The write data will continually try to push write data across the interface.

//The amount of data accepted will depend on the AXI slave and the AXI
//Interconnect settings, such as if there are FIFOs enabled in interconnect.

//Note that there is no explicit timing relationship to the write address channel.
//The write channel has its own throttling flag, separate from the AW channel.

//Synchronization between the channels must be determined by the user.

//The simpliest but lowest performance would be to only issue one address write
//and write data burst at a time.

//In this example they are kept in sync by using the same address increment
//and burst sizes. Then the AW and W channels have their transactions measured
//with threshold counters as part of the user logic, to make sure neither 
//channel gets too far ahead of each other.

//Forward movement occurs when the write channel is valid and ready

assign wnext = M_AXI_WREADY & axi_wvalid;                                   
                                                                                
// WVALID logic, similar to the axi_awvalid always block above                      
always @(posedge M_AXI_ACLK)                                                      
begin                                                                             
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                                                                                                
        axi_wvalid <= 1'b0;                                                         
                                                                         
    // If previously not valid, start next transaction                              
    else if (~axi_wvalid && start_single_burst_write)                                                                                                     
        axi_wvalid <= 1'b1;                                                         
                                                                        
    /* If WREADY and too many writes, throttle WVALID                               
    Once asserted, VALIDs cannot be deasserted, so WVALID                           
    must wait until burst is complete with WLAST */                                 
    else if (wnext && axi_wlast)                                                    
        axi_wvalid <= 1'b0;                                                           
    else                                                                            
        axi_wvalid <= axi_wvalid;                                                     
end                                                                               
                                                                                
                                                                                
//WLAST generation on the MSB of a counter underflow                                
// WVALID logic, similar to the axi_awvalid always block above                      
always @(posedge M_AXI_ACLK)                                                      
begin                                                                             
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                                                                                                
        axi_wlast <= 1'b0;                                                          
                                                                                 
    // axi_wlast is asserted when the write index                                   
    // count reaches the penultimate count to synchronize                           
    // with the last write data when write_index is b1111                           
    // else if (&(write_index[C_TRANSACTIONS_NUM-1:1])&& ~write_index[0] && wnext)  
    else if (((write_index == C_M_AXI_BURST_LEN-2 && C_M_AXI_BURST_LEN >= 2) && wnext) || (C_M_AXI_BURST_LEN == 1 ))                                                                       
        axi_wlast <= 1'b1;                                                          
                                                                             
    // Deassrt axi_wlast when the last write data has been                          
    // accepted by the slave with a valid response                                  
    else if (wnext)                                                                 
        axi_wlast <= 1'b0;                                                            
    else if (axi_wlast && C_M_AXI_BURST_LEN == 1)                                   
        axi_wlast <= 1'b0;                                                            
    else                                                                            
        axi_wlast <= axi_wlast;                                                       
end                                                                               
                                                                                
                                                                                
/* Burst length counter. Uses extra counter register bit to indicate terminal       
count to reduce decode logic */                                                    
always @(posedge M_AXI_ACLK)                                                      
begin                                                                             
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || start_single_burst_write == 1'b1)                                                                            
        write_index <= 0;                                                                                                                                     
    else if (wnext && (write_index != C_M_AXI_BURST_LEN-1))                                                                                               
        write_index <= write_index + 1;                                                                                                                       
    else                                                                            
        write_index <= write_index;                                                   
end                                                                               
                                                                                
                                                                                
/* Write Data Generator                                                             
Data pattern is only a simple incrementing count from 0 for each burst  */         
always @(posedge M_AXI_ACLK)                                                      
begin                                                                             
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                         
        axi_wdata <= cwt_output;                                                             
    //else if (wnext && axi_wlast)                                                  
    //  axi_wdata <= 'b0;                                                           
    else if (wnext)  
       //	      axi_wdata <= axi_wdata + 1;                                                   
        axi_wdata <= cwt_output;                                                   
    else                                                                            
        axi_wdata <= axi_wdata;                                                       
end                                                                             


//----------------------------
//Write Response (B) Channel
//----------------------------

//The write response channel provides feedback that the write has committed
//to memory. BREADY will occur when all of the data and the write address
//has arrived and been accepted by the slave.

//The write issuance (number of outstanding write addresses) is started by 
//the Address Write transfer, and is completed by a BREADY/BRESP.

//While negating BREADY will eventually throttle the AWREADY signal, 
//it is best not to throttle the whole data channel this way.

//The BRESP bit [1] is used indicate any errors from the interconnect or
//slave for the entire write burst. This example will capture the error 
//into the ERROR output. 

always @(posedge M_AXI_ACLK)                                     
begin                                                                 
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                                                                        
        axi_bready <= 1'b0;                                                                                                           
    // accept/acknowledge bresp with axi_bready by the master           
    // when M_AXI_BVALID is asserted by slave                           
    else if (M_AXI_BVALID && ~axi_bready)                                                                                           
        axi_bready <= 1'b1;                                                                                                         
    // deassert after one clock cycle                                   
    else if (axi_bready)                                                                                                            
        axi_bready <= 1'b0;                                                                                                         
    // retain the previous value                                        
    else                                                                
        axi_bready <= axi_bready;                                         
end                                                                   
                                                                                                                                
//Flag any write response errors                                        
assign write_resp_error = axi_bready & M_AXI_BVALID & M_AXI_BRESP[1]; 

////----------------------------
////Read Address Channel
////----------------------------

////The Read Address Channel (AW) provides a similar function to the
////Write Address channel- to provide the tranfer qualifiers for the burst.

////In this example, the read address increments in the same
////manner as the write address channel.

//always @(posedge M_AXI_ACLK)                                 
//begin                                                                                                                             
//    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                                                                  
//        axi_arvalid <= 1'b0;                                                                                                   
//    // If previously not valid , start next transaction              
//    else if (~axi_arvalid && start_single_burst_read)                                                                         
//        axi_arvalid <= 1'b1;                                                                                                
//    else if (M_AXI_ARREADY && axi_arvalid)                                                                                    
//        axi_arvalid <= 1'b0;                                                                                                   
//    else                                                             
//        axi_arvalid <= axi_arvalid;                                    
//end                                                                
                                                                 
                                                                 
//// Next address after ARREADY indicates previous address acceptance  
//always @(posedge M_AXI_ACLK)                                       
//begin                                                              
//    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                                  
//        axi_araddr <= 'b0;                                                                                                   
//    else if (M_AXI_ARREADY && axi_arvalid)                                                                                    
//        axi_araddr <= axi_araddr + burst_size_bytes;                                                                        
//    else                                                             
//        axi_araddr <= axi_araddr;                                      
//end                                                                


////--------------------------------
////Read Data (and Response) Channel
////--------------------------------

//// Forward movement occurs when the channel is valid and ready   
//assign rnext = M_AXI_RVALID && axi_rready;                            
                                                                    
                                                                    
//// Burst length counter. Uses extra counter register bit to indicate    
//// terminal count to reduce decode logic                                
//always @(posedge M_AXI_ACLK)                                          
//begin                                                                 
//    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || start_single_burst_read)                                                                         
//        read_index <= 0;                                                
                                                            
//    else if (rnext && (read_index != C_M_AXI_BURST_LEN-1))                                                                         
//        read_index <= read_index + 1;                                                                                                
//    else                                                                
//        read_index <= read_index;                                         
//end                                                                   
                                                                    
                                                                    
///*                                                                      
//The Read Data channel returns the results of the read request          
                                                                    
//In this example the data checker is always able to accept              
//more data, so no need to throttle the RREADY signal                    
//*/                                                                     
//always @(posedge M_AXI_ACLK)                                          
//begin                                                                 
//    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                                              
//        axi_rready <= 1'b0;                                             
                                                            
//    // accept/acknowledge rdata/rresp with axi_rready by the master     
//    // when M_AXI_RVALID is asserted by slave                           
//    else if (M_AXI_RVALID)                       
//      begin                                      
//         if (M_AXI_RLAST && axi_rready)                                          
//            axi_rready <= 1'b0;                                                   
//         else                                                                  
//            axi_rready <= 1'b1;                                                  
//      end                                        
//    // retain the previous value                 
//end                                            
                                                                    
////Check received read data against data generator                       
//always @(posedge M_AXI_ACLK)                                          
//begin                                                                 
//    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                   
//      begin                                                             
//        read_mismatch <= 1'b0;                                          
//      end                                                               
//    //Only check data when RVALID is active                             
//    else if (rnext && (M_AXI_RDATA != expected_rdata))                  
//      begin                                                             
//        read_mismatch <= 1'b1;                                          
//      end                                                               
//    else                                                                
//        read_mismatch <= 1'b0;                                            
//end                                                                   
                                                                    
////Flag any read response errors                                         
//assign read_resp_error = axi_rready & M_AXI_RVALID & M_AXI_RRESP[1];  


////----------------------------------------
////Example design read check data generator
////-----------------------------------------

////Generate expected read data to check against actual read data

//always @(posedge M_AXI_ACLK)                     
//begin                                                  
//    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)// || M_AXI_RLAST)             
//        expected_rdata <= 'b1;                            
//    else if (M_AXI_RVALID && axi_rready)                  
//        expected_rdata <= expected_rdata + 1;             
//    else                                                  
//        expected_rdata <= expected_rdata;                 
//end                                                    


////----------------------------------
////Example design error register
////----------------------------------

////Register and hold any data mismatches, or read/write interface errors 

//always @(posedge M_AXI_ACLK)                                 
//begin                                                              
//    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                          
//      begin                                                          
//        error_reg <= 1'b0;                                           
//      end                                                            
//    else if (read_mismatch || write_resp_error || read_resp_error)   
//      begin                                                          
//        error_reg <= 1'b1;                                           
//      end                                                            
//    else                                                             
//        error_reg <= error_reg;                                        
//end                                                                


//--------------------------------
//Example design throttling
//--------------------------------

// For maximum port throughput, this user example code will try to allow
// each channel to run as independently and as quickly as possible.

// However, there are times when the flow of data needs to be throtted by
// the user application. This example application requires that data is
// not read before it is written and that the write channels do not
// advance beyond an arbitrary threshold (say to prevent an 
// overrun of the current read address by the write address).

// From AXI4 Specification, 13.13.1: "If a master requires ordering between 
// read and write transactions, it must ensure that a response is received 
// for the previous transaction before issuing the next transaction."

// This example accomplishes this user application throttling through:
// -Reads wait for writes to fully complete
// -Address writes wait when not read + issued transaction counts pass 
// a parameterized threshold
// -Writes wait when a not read + active data burst count pass 
// a parameterized threshold

// write_burst_counter counter keeps track with the number of burst transaction initiated            
// against the number of burst transactions the master needs to initiate                                   
always @(posedge M_AXI_ACLK)                                                                              
begin                                                                                                     
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                                                                                                                                                 
        write_burst_counter <= 'b0;   
                                                                                                                                                                              
    else if (M_AXI_AWREADY && axi_awvalid)                                                                  
      begin                                                                                                 
        if (write_burst_counter[C_NO_BURSTS_REQ] == 1'b0)                                                                                                                                              
            write_burst_counter <= write_burst_counter + 1'b1;                                              
            //write_burst_counter[C_NO_BURSTS_REQ] <= 1'b1;                                                                                                                                              
      end                                                                                                   
    else                                                                                                    
        write_burst_counter <= write_burst_counter;                                                           
end                                                                                                       
                                                                                                        
// read_burst_counter counter keeps track with the number of burst transaction initiated                   
// against the number of burst transactions the master needs to initiate                                   
always @(posedge M_AXI_ACLK)                                                                              
begin                                                                                                     
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                                                                                                                  
        read_burst_counter <= 'b0;  
                                                                                                                                                                                 
    else if (M_AXI_ARREADY && axi_arvalid)                                                                  
      begin                                                                                                 
        if (read_burst_counter[C_NO_BURSTS_REQ] == 1'b0)                                                                                                                                             
            read_burst_counter <= read_burst_counter + 1'b1;                                                
            //read_burst_counter[C_NO_BURSTS_REQ] <= 1'b1;                                                                                                                                           
      end                                                                                                   
    else                                                                                                    
        read_burst_counter <= read_burst_counter;                                                             
end                                                                                                       
                                                                                                            
                                                                                                            
//implement master command interface state machine                                                        
                                                                                                        
always @ ( posedge M_AXI_ACLK)                                                                            
begin                                                                                                     
    if (M_AXI_ARESETN == 1'b0 )                                                                             
      begin                                                                                                 
        // reset condition                                                                                  
        // All the signals are assigned default values under reset condition                                
        mst_exec_state      <= IDLE;                                                                
        start_single_burst_write <= 1'b0;                                                                   
//        start_single_burst_read  <= 1'b0;                                                                   
//        compare_done      <= 1'b0;                                                                          
//        ERROR <= 1'b0;   
      end                                                                                                   
    else                                                                                                    
      begin                                                                                                 
                                                                                                            
        // state transition                                                                                 
        case (mst_exec_state)                                                                               
                                                                                                            
          IDLE:                                                                                     
            // This state is responsible to wait for user defined C_M_START_COUNT                           
            // number of clock cycles.                                                                      
            if (init_txn_pulse == 1'b1)                                                                                                                                            
                mst_exec_state  <= INIT_WRITE;                                                                                                                                                     
            else                                                                                                                                                                                   
                mst_exec_state  <= IDLE;                                                                                                                                                
                                                                                                            
          INIT_WRITE:                                                                                       
            // This state is responsible to issue start_single_write pulse to                               
            // initiate a write transaction. Write transactions will be                                     
            // issued until burst_write_active signal is asserted.                                          
            // write controller                                                                             
            if (writes_done)                                                                                                                                                                      
                mst_exec_state <= IDLE;                                                                                                                                                
            else                                                                                            
              begin                                                                                         
                mst_exec_state  <= INIT_WRITE;                                                              
                                                                                                            
                if (~axi_awvalid && ~start_single_burst_write && ~burst_write_active)                                                                                                       
                    start_single_burst_write <= 1'b1;                                                                                                                                           
                else                                                                                                                                                                         
                    start_single_burst_write <= 1'b0; //Negate to generate a pulse                                                                                                               
              end                                                                                           
                                                              
          default :                                                                                         
            begin                                                                                           
                mst_exec_state  <= IDLE;                                                              
            end                                                                                             
        endcase                                                                                             
      end                                                                                                   
end //MASTER_EXECUTION_PROC                                                                               
                                                                                                        
                                                                                                        
// burst_write_active signal is asserted when there is a burst write transaction                          
// is initiated by the assertion of start_single_burst_write. burst_write_active                          
// signal remains asserted until the burst write is accepted by the slave                                 
always @(posedge M_AXI_ACLK)                                                                              
begin                                                                                                     
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
        burst_write_active <= 1'b0;                                                                           
                                                                                                            
    //The burst_write_active is asserted when a write burst transaction is initiated                        
    else if (start_single_burst_write)                                                                      
        burst_write_active <= 1'b1;                                                                           
    else if (M_AXI_BVALID && axi_bready)                                                                    
        burst_write_active <= 0;                                                                              
end                                                                                                       
                                                                                                            
// Check for last write completion.                                                                        
                                                                                                        
// This logic is to qualify the last write count with the final write                                      
// response. This demonstrates how to confirm that a write has been                                        
// committed.                                                                                              
                                                                                                            
always @(posedge M_AXI_ACLK)                                                                              
begin                                                                                                     
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
        writes_done <= 1'b0;                                                                                  
                                                                                                            
    //The writes_done should be associated with a bready response                                           
    //else if (M_AXI_BVALID && axi_bready && (write_burst_counter == {(C_NO_BURSTS_REQ-1){1}}) && axi_wlast)
    else if (M_AXI_BVALID && (write_burst_counter[C_NO_BURSTS_REQ]) && axi_bready)                          
        writes_done <= 1'b1;                                                                                  
    else                                                                                                    
        writes_done <= writes_done;                                                                           
end                                                                                                     
                                                                                                            
// burst_read_active signal is asserted when there is a burst write transaction                           
// is initiated by the assertion of start_single_burst_write. start_single_burst_read                     
// signal remains asserted until the burst read is accepted by the master                                 
//always @(posedge M_AXI_ACLK)                                                                              
//begin                                                                                                     
//    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
//        burst_read_active <= 1'b0;                                                                            
                                                                                                            
//    //The burst_write_active is asserted when a write burst transaction is initiated                        
//    else if (start_single_burst_read)                                                                       
//        burst_read_active <= 1'b1;                                                                            
//    else if (M_AXI_RVALID && axi_rready && M_AXI_RLAST)                                                     
//        burst_read_active <= 0;                                                                               
//end                                                                                                     
                                                                                                            
                                                                                                            
// Check for last read completion.                                                                         
                                                                                                        
// This logic is to qualify the last read count with the final read                                        
// response. This demonstrates how to confirm that a read has been                                         
// committed.                                                                                              
                                                                                                            
//always @(posedge M_AXI_ACLK)                                                                              
//begin                                                                                                     
//    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
//      reads_done <= 1'b0;                                                                                   
                                                                                                            
//    //The reads_done should be associated with a rready response                                            
//    //else if (M_AXI_BVALID && axi_bready && (write_burst_counter == {(C_NO_BURSTS_REQ-1){1}}) && axi_wlast)
//    else if (M_AXI_RVALID && (read_index == C_M_AXI_BURST_LEN-1) && (read_burst_counter[C_NO_BURSTS_REQ])) //&& axi_rready 
//      reads_done <= 1'b1;                                                                                   
//    else                                                                                                    
//      reads_done <= reads_done;                                                                             
//end

always @(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
    if(!M_AXI_ARESETN || init_txn_pulse) begin
        write_done_prev <= 'b0;
    end
    else begin
        write_done_prev = writes_done;
    end
end

assign write_done_pulse = writes_done && !write_done_prev;

/************************ CWT *************************/
localparam integer J1 = 4;
localparam integer N = 1024;
localparam integer N_J1 = N*J1;

reg [$clog2(N):0] brom_addr;
wire [C_M_AXI_DATA_WIDTH-1:0] brom_val;

wire [C_M_AXI_DATA_WIDTH-1:0] x_re;
wire [C_M_AXI_DATA_WIDTH-1:0] x_im;

wire [C_M_AXI_DATA_WIDTH-1:0] X_re;
wire [C_M_AXI_DATA_WIDTH-1:0] X_im;

wire cwt_row_done;
wire cwt_row_ready;

/*********************** CU **********************/

wire bram_en;
wire bram_we;
wire [$clog2(N*J1*2)-1:0] bram_addr_x_re;
wire [$clog2(N*J1*2)-1:0] bram_addr_x_im;

wire cwt_busy;

wire cwt_done;
wire cwt_ready;

wire [C_M_AXI_DATA_WIDTH-1:0] cwt_output;

wire sendIncomplete;


always @(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
    if(~M_AXI_ARESETN) begin
        dready <= 0;
        sending <= 0;
        
        brom_addr <= 'b0;
    end
    else begin
        if(start_i)
            sending = 1;
        
        if(sendIncomplete) begin
            brom_addr <= brom_addr + 1;
            dready = 1;
        end
        else begin
            dready = 0;
            sending = 0;
        end
    end
end

assign sendIncomplete = ((data_counter < N) && sending) ? 1 : 0;

brom_vals sensor_vals (
    .clka(m_axi_data_aclk),    
    .addra(brom_addr),
    .douta(x_re)
);
assign x_im = 'b0;

// CWT Core 
// sends a row each time cwt_row_done_o comes high
CWT_nBRAM CWT_core (
    .clk(M_AXI_ACLK),
    .rstn(M_AXI_ARESETN),
    
    .start_i(start_i),
    .dready_i(dready),
    .dl_busy_i(cwt_busy),
    
    .x_re_i(x_re),
    .x_im_i(x_im),
    
    .busy_o(busy),
    
    .cwt_row_done_o(cwt_row_done),
    .cwt_row_ready_o(cwt_row_ready),
    
    .X_re_o(X_re),
    .X_im_o(X_im)
);

cwt_cu #(
    .N(N),
    .J1(J1)) 
cwt_control_unit (
    .clk(M_AXI_ACLK),
    .rstn(M_AXI_ARESETN),
    
    .ifft_ready_i(cwt_row_ready),
    .ifft_done_i(cwt_row_done),
    
    .dl_busy_i(dl_busy),
    
    .next(wnext),
    
    .bram_en_o(bram_en),
    .bram_we_o(bram_we),
    .bram_addr_o(bram_addr_x_re),
    
    .busy_o(cwt_busy),
    
    .cwt_done_o(cwt_done),
    .cwt_ready_o(cwt_ready)
);
// make it to the second half of the bram
assign bram_addr_x_im = bram_addr_x_re | N_J1;

assign INIT_AXI_TXN = cwt_done;

//reg cwt_done_ff;
//wire cwt_done_pulse;

//always @(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
//    if(~M_AXI_ARESETN) begin
//        cwt_done_ff <= 0;
//    end
//    else begin
//        cwt_done_ff <= cwt_done;
//    end
    
//end

//assign cwt_done_pulse = cwt_done & ~cwt_done_ff;


// When receiving we use both ports of BRAM
// When sending data out, we use only the A port of BRAM
// First port writes X_RE vals, the second writes the X_IM vals
cwt_results bram_results (
    .clka(M_AXI_ACLK),            // input wire clka
    .rsta(~M_AXI_ARESETN),            // input wire rsta
    .ena(bram_en),              // input wire ena
    .wea(bram_we),              // input wire [0 : 0] wea
    .addra(bram_addr_x_re),          // input wire [10 : 0] addra
    .dina(X_re),            // input wire [31 : 0] dina
    .douta(cwt_output),          // output wire [31 : 0] douta
    
    .clkb(M_AXI_ACLK),            // input wire clkb
    .rstb(~M_AXI_ARESETN),            // input wire rstb
    .enb(bram_en),              // input wire enb
    .web(bram_we),              // input wire [0 : 0] web
    .addrb(bram_addr_x_im),          // input wire [10 : 0] addrb
    .dinb(X_im)            // input wire [31 : 0] dinb
);

//always @(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
//    if(!M_AXI_ARESETN || write_done_pulse) begin
//        brom_addr <= 'b0;
//    end
//    else begin
//        if(wnext || init_txn_pulse)
//            brom_addr <= brom_addr + 1;
//        else if(rnext || M_AXI_RVALID)
//            brom_addr <= brom_addr + 1;
//        else 
//            brom_addr <= brom_addr;
//    end
//end
	                                                                                                     
endmodule
