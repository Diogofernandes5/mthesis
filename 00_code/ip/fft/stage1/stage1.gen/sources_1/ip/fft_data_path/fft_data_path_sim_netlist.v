// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Apr  9 19:04:50 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/ip/fft/stage1/stage1.gen/sources_1/ip/fft_data_path/fft_data_path_sim_netlist.v
// Design      : fft_data_path
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fft_data_path,data_path,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "data_path,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module fft_data_path
   (clk,
    rstn,
    x0_re_i,
    x0_im_i,
    x1_re_i,
    x1_im_i,
    bram_addr_i,
    w,
    src_sel_i,
    fft_ready_i,
    start_i,
    bram_we_i,
    bf_ce_i,
    x0_re_o,
    x0_im_o,
    x1_re_o,
    x1_im_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [31:0]x0_re_i;
  input [31:0]x0_im_i;
  input [31:0]x1_re_i;
  input [31:0]x1_im_i;
  input [8:0]bram_addr_i;
  input [27:0]w;
  input src_sel_i;
  input fft_ready_i;
  input start_i;
  input bram_we_i;
  input bf_ce_i;
  output [31:0]x0_re_o;
  output [31:0]x0_im_o;
  output [31:0]x1_re_o;
  output [31:0]x1_im_o;

  wire [8:0]bram_addr_i;
  wire bram_we_i;
  wire clk;
  wire fft_ready_i;
  wire [31:0]x0_im_i;
  wire [31:0]x0_im_o;
  wire [31:0]x0_re_i;
  wire [31:0]x0_re_o;
  wire [31:0]x1_im_i;
  wire [31:0]x1_im_o;
  wire [31:0]x1_re_i;
  wire [31:0]x1_re_o;

  fft_data_path_data_path inst
       (.bram_addr_i(bram_addr_i),
        .bram_we_i(bram_we_i),
        .clk(clk),
        .fft_ready_i(fft_ready_i),
        .x0_im_i(x0_im_i),
        .x0_im_o(x0_im_o),
        .x0_re_i(x0_re_i),
        .x0_re_o(x0_re_o),
        .x1_im_i(x1_im_i),
        .x1_im_o(x1_im_o),
        .x1_re_i(x1_re_i),
        .x1_re_o(x1_re_o));
endmodule

(* CHECK_LICENSE_TYPE = "bram_results,blk_mem_gen_v8_4_4,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bram_results" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
module fft_data_path_bram_results
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire \<const0> ;
  wire [8:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign rsta_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram_results.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  fft_data_path_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b1),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "bram_results,blk_mem_gen_v8_4_4,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bram_results" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
module fft_data_path_bram_results__1
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire \<const0> ;
  wire [8:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign rsta_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram_results.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  fft_data_path_blk_mem_gen_v8_4_4__1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b1),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "bram_results,blk_mem_gen_v8_4_4,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bram_results" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
module fft_data_path_bram_results__2
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire \<const0> ;
  wire [8:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign rsta_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram_results.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  fft_data_path_blk_mem_gen_v8_4_4__2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b1),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "bram_results,blk_mem_gen_v8_4_4,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bram_results" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
module fft_data_path_bram_results__3
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire \<const0> ;
  wire [8:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign rsta_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram_results.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  fft_data_path_blk_mem_gen_v8_4_4__3 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b1),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "data_path" *) 
module fft_data_path_data_path
   (x0_re_o,
    x0_im_o,
    x1_re_o,
    x1_im_o,
    x0_re_i,
    x0_im_i,
    x1_re_i,
    x1_im_i,
    clk,
    bram_we_i,
    bram_addr_i,
    fft_ready_i);
  output [31:0]x0_re_o;
  output [31:0]x0_im_o;
  output [31:0]x1_re_o;
  output [31:0]x1_im_o;
  input [31:0]x0_re_i;
  input [31:0]x0_im_i;
  input [31:0]x1_re_i;
  input [31:0]x1_im_i;
  input clk;
  input bram_we_i;
  input [8:0]bram_addr_i;
  input fft_ready_i;

  wire [8:0]bram_addr_i;
  wire bram_we_i;
  wire clk;
  wire fft_ready_i;
  wire [31:0]x0_im_i;
  wire [31:0]x0_im_o;
  wire [31:0]x0_im_ram;
  wire [31:0]x0_im_sel;
  wire [31:0]x0_re_i;
  wire [31:0]x0_re_o;
  wire [31:0]x0_re_ram;
  wire [31:0]x0_re_sel;
  wire [31:0]x1_im_i;
  wire [31:0]x1_im_o;
  wire [31:0]x1_im_ram;
  wire [31:0]x1_im_sel;
  wire [31:0]x1_re_i;
  wire [31:0]x1_re_o;
  wire [31:0]x1_re_ram;
  wire [31:0]x1_re_sel;
  wire NLW_x0_im_bram_rsta_busy_UNCONNECTED;
  wire [31:0]NLW_x0_im_demux_y1_UNCONNECTED;
  wire NLW_x0_re_bram_rsta_busy_UNCONNECTED;
  wire [31:0]NLW_x0_re_demux_y1_UNCONNECTED;
  wire NLW_x1_im_bram_rsta_busy_UNCONNECTED;
  wire [31:0]NLW_x1_im_demux_y1_UNCONNECTED;
  wire NLW_x1_re_bram_rsta_busy_UNCONNECTED;
  wire [31:0]NLW_x1_re_demux_y1_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "bram_results,blk_mem_gen_v8_4_4,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
  fft_data_path_bram_results__2 x0_im_bram
       (.addra(bram_addr_i),
        .clka(clk),
        .dina(x0_im_sel),
        .douta(x0_im_ram),
        .ena(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_x0_im_bram_rsta_busy_UNCONNECTED),
        .wea(bram_we_i));
  (* CHECK_LICENSE_TYPE = "demux2_0,demux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "demux2,Vivado 2021.1" *) 
  fft_data_path_demux2_0__2 x0_im_demux
       (.d(x0_im_ram),
        .s(fft_ready_i),
        .y0(x0_im_o),
        .y1(NLW_x0_im_demux_y1_UNCONNECTED[31:0]));
  (* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  fft_data_path_mux2_0__2 x0_im_mux
       (.d0(x0_im_i),
        .d1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s(1'b0),
        .y(x0_im_sel));
  (* CHECK_LICENSE_TYPE = "bram_results,blk_mem_gen_v8_4_4,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
  fft_data_path_bram_results__1 x0_re_bram
       (.addra(bram_addr_i),
        .clka(clk),
        .dina(x0_re_sel),
        .douta(x0_re_ram),
        .ena(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_x0_re_bram_rsta_busy_UNCONNECTED),
        .wea(bram_we_i));
  (* CHECK_LICENSE_TYPE = "demux2_0,demux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "demux2,Vivado 2021.1" *) 
  fft_data_path_demux2_0__1 x0_re_demux
       (.d(x0_re_ram),
        .s(fft_ready_i),
        .y0(x0_re_o),
        .y1(NLW_x0_re_demux_y1_UNCONNECTED[31:0]));
  (* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  fft_data_path_mux2_0__1 x0_re_mux
       (.d0(x0_re_i),
        .d1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s(1'b0),
        .y(x0_re_sel));
  (* CHECK_LICENSE_TYPE = "bram_results,blk_mem_gen_v8_4_4,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
  fft_data_path_bram_results x1_im_bram
       (.addra(bram_addr_i),
        .clka(clk),
        .dina(x1_im_sel),
        .douta(x1_im_ram),
        .ena(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_x1_im_bram_rsta_busy_UNCONNECTED),
        .wea(bram_we_i));
  (* CHECK_LICENSE_TYPE = "demux2_0,demux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "demux2,Vivado 2021.1" *) 
  fft_data_path_demux2_0 x1_im_demux
       (.d(x1_im_ram),
        .s(fft_ready_i),
        .y0(x1_im_o),
        .y1(NLW_x1_im_demux_y1_UNCONNECTED[31:0]));
  (* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  fft_data_path_mux2_0__4 x1_im_mux
       (.d0(x1_im_i),
        .d1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s(1'b0),
        .y(x1_im_sel));
  (* CHECK_LICENSE_TYPE = "bram_results,blk_mem_gen_v8_4_4,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
  fft_data_path_bram_results__3 x1_re_bram
       (.addra(bram_addr_i),
        .clka(clk),
        .dina(x1_re_sel),
        .douta(x1_re_ram),
        .ena(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_x1_re_bram_rsta_busy_UNCONNECTED),
        .wea(bram_we_i));
  (* CHECK_LICENSE_TYPE = "demux2_0,demux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "demux2,Vivado 2021.1" *) 
  fft_data_path_demux2_0__3 x1_re_demux
       (.d(x1_re_ram),
        .s(fft_ready_i),
        .y0(x1_re_o),
        .y1(NLW_x1_re_demux_y1_UNCONNECTED[31:0]));
  (* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  fft_data_path_mux2_0__3 x1_re_mux
       (.d0(x1_re_i),
        .d1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s(1'b0),
        .y(x1_re_sel));
endmodule

(* ORIG_REF_NAME = "demux2" *) 
module fft_data_path_demux2
   (y0,
    d,
    s);
  output [31:0]y0;
  input [31:0]d;
  input s;

  wire [31:0]d;
  wire s;
  wire [31:0]y0;

  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[0]_INST_0 
       (.I0(d[0]),
        .I1(s),
        .O(y0[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[10]_INST_0 
       (.I0(d[10]),
        .I1(s),
        .O(y0[10]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[11]_INST_0 
       (.I0(d[11]),
        .I1(s),
        .O(y0[11]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[12]_INST_0 
       (.I0(d[12]),
        .I1(s),
        .O(y0[12]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[13]_INST_0 
       (.I0(d[13]),
        .I1(s),
        .O(y0[13]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[14]_INST_0 
       (.I0(d[14]),
        .I1(s),
        .O(y0[14]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[15]_INST_0 
       (.I0(d[15]),
        .I1(s),
        .O(y0[15]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[16]_INST_0 
       (.I0(d[16]),
        .I1(s),
        .O(y0[16]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[17]_INST_0 
       (.I0(d[17]),
        .I1(s),
        .O(y0[17]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[18]_INST_0 
       (.I0(d[18]),
        .I1(s),
        .O(y0[18]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[19]_INST_0 
       (.I0(d[19]),
        .I1(s),
        .O(y0[19]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[1]_INST_0 
       (.I0(d[1]),
        .I1(s),
        .O(y0[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[20]_INST_0 
       (.I0(d[20]),
        .I1(s),
        .O(y0[20]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[21]_INST_0 
       (.I0(d[21]),
        .I1(s),
        .O(y0[21]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[22]_INST_0 
       (.I0(d[22]),
        .I1(s),
        .O(y0[22]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[23]_INST_0 
       (.I0(d[23]),
        .I1(s),
        .O(y0[23]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[24]_INST_0 
       (.I0(d[24]),
        .I1(s),
        .O(y0[24]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[25]_INST_0 
       (.I0(d[25]),
        .I1(s),
        .O(y0[25]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[26]_INST_0 
       (.I0(d[26]),
        .I1(s),
        .O(y0[26]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[27]_INST_0 
       (.I0(d[27]),
        .I1(s),
        .O(y0[27]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[28]_INST_0 
       (.I0(d[28]),
        .I1(s),
        .O(y0[28]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[29]_INST_0 
       (.I0(d[29]),
        .I1(s),
        .O(y0[29]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[2]_INST_0 
       (.I0(d[2]),
        .I1(s),
        .O(y0[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[30]_INST_0 
       (.I0(d[30]),
        .I1(s),
        .O(y0[30]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[31]_INST_0 
       (.I0(d[31]),
        .I1(s),
        .O(y0[31]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[3]_INST_0 
       (.I0(d[3]),
        .I1(s),
        .O(y0[3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[4]_INST_0 
       (.I0(d[4]),
        .I1(s),
        .O(y0[4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[5]_INST_0 
       (.I0(d[5]),
        .I1(s),
        .O(y0[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[6]_INST_0 
       (.I0(d[6]),
        .I1(s),
        .O(y0[6]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[7]_INST_0 
       (.I0(d[7]),
        .I1(s),
        .O(y0[7]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[8]_INST_0 
       (.I0(d[8]),
        .I1(s),
        .O(y0[8]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[9]_INST_0 
       (.I0(d[9]),
        .I1(s),
        .O(y0[9]));
endmodule

(* CHECK_LICENSE_TYPE = "demux2_0,demux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "demux2_0" *) (* X_CORE_INFO = "demux2,Vivado 2021.1" *) 
module fft_data_path_demux2_0
   (d,
    s,
    y0,
    y1);
  input [31:0]d;
  input s;
  output [31:0]y0;
  output [31:0]y1;

  wire \<const0> ;
  wire [31:0]d;
  wire s;
  wire [31:0]y0;

  assign y1[31] = \<const0> ;
  assign y1[30] = \<const0> ;
  assign y1[29] = \<const0> ;
  assign y1[28] = \<const0> ;
  assign y1[27] = \<const0> ;
  assign y1[26] = \<const0> ;
  assign y1[25] = \<const0> ;
  assign y1[24] = \<const0> ;
  assign y1[23] = \<const0> ;
  assign y1[22] = \<const0> ;
  assign y1[21] = \<const0> ;
  assign y1[20] = \<const0> ;
  assign y1[19] = \<const0> ;
  assign y1[18] = \<const0> ;
  assign y1[17] = \<const0> ;
  assign y1[16] = \<const0> ;
  assign y1[15] = \<const0> ;
  assign y1[14] = \<const0> ;
  assign y1[13] = \<const0> ;
  assign y1[12] = \<const0> ;
  assign y1[11] = \<const0> ;
  assign y1[10] = \<const0> ;
  assign y1[9] = \<const0> ;
  assign y1[8] = \<const0> ;
  assign y1[7] = \<const0> ;
  assign y1[6] = \<const0> ;
  assign y1[5] = \<const0> ;
  assign y1[4] = \<const0> ;
  assign y1[3] = \<const0> ;
  assign y1[2] = \<const0> ;
  assign y1[1] = \<const0> ;
  assign y1[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  fft_data_path_demux2 inst
       (.d(d),
        .s(s),
        .y0(y0));
endmodule

(* CHECK_LICENSE_TYPE = "demux2_0,demux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "demux2_0" *) (* X_CORE_INFO = "demux2,Vivado 2021.1" *) 
module fft_data_path_demux2_0__1
   (d,
    s,
    y0,
    y1);
  input [31:0]d;
  input s;
  output [31:0]y0;
  output [31:0]y1;

  wire \<const0> ;
  wire [31:0]d;
  wire s;
  wire [31:0]y0;

  assign y1[31] = \<const0> ;
  assign y1[30] = \<const0> ;
  assign y1[29] = \<const0> ;
  assign y1[28] = \<const0> ;
  assign y1[27] = \<const0> ;
  assign y1[26] = \<const0> ;
  assign y1[25] = \<const0> ;
  assign y1[24] = \<const0> ;
  assign y1[23] = \<const0> ;
  assign y1[22] = \<const0> ;
  assign y1[21] = \<const0> ;
  assign y1[20] = \<const0> ;
  assign y1[19] = \<const0> ;
  assign y1[18] = \<const0> ;
  assign y1[17] = \<const0> ;
  assign y1[16] = \<const0> ;
  assign y1[15] = \<const0> ;
  assign y1[14] = \<const0> ;
  assign y1[13] = \<const0> ;
  assign y1[12] = \<const0> ;
  assign y1[11] = \<const0> ;
  assign y1[10] = \<const0> ;
  assign y1[9] = \<const0> ;
  assign y1[8] = \<const0> ;
  assign y1[7] = \<const0> ;
  assign y1[6] = \<const0> ;
  assign y1[5] = \<const0> ;
  assign y1[4] = \<const0> ;
  assign y1[3] = \<const0> ;
  assign y1[2] = \<const0> ;
  assign y1[1] = \<const0> ;
  assign y1[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  fft_data_path_demux2_2 inst
       (.d(d),
        .s(s),
        .y0(y0));
endmodule

(* CHECK_LICENSE_TYPE = "demux2_0,demux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "demux2_0" *) (* X_CORE_INFO = "demux2,Vivado 2021.1" *) 
module fft_data_path_demux2_0__2
   (d,
    s,
    y0,
    y1);
  input [31:0]d;
  input s;
  output [31:0]y0;
  output [31:0]y1;

  wire \<const0> ;
  wire [31:0]d;
  wire s;
  wire [31:0]y0;

  assign y1[31] = \<const0> ;
  assign y1[30] = \<const0> ;
  assign y1[29] = \<const0> ;
  assign y1[28] = \<const0> ;
  assign y1[27] = \<const0> ;
  assign y1[26] = \<const0> ;
  assign y1[25] = \<const0> ;
  assign y1[24] = \<const0> ;
  assign y1[23] = \<const0> ;
  assign y1[22] = \<const0> ;
  assign y1[21] = \<const0> ;
  assign y1[20] = \<const0> ;
  assign y1[19] = \<const0> ;
  assign y1[18] = \<const0> ;
  assign y1[17] = \<const0> ;
  assign y1[16] = \<const0> ;
  assign y1[15] = \<const0> ;
  assign y1[14] = \<const0> ;
  assign y1[13] = \<const0> ;
  assign y1[12] = \<const0> ;
  assign y1[11] = \<const0> ;
  assign y1[10] = \<const0> ;
  assign y1[9] = \<const0> ;
  assign y1[8] = \<const0> ;
  assign y1[7] = \<const0> ;
  assign y1[6] = \<const0> ;
  assign y1[5] = \<const0> ;
  assign y1[4] = \<const0> ;
  assign y1[3] = \<const0> ;
  assign y1[2] = \<const0> ;
  assign y1[1] = \<const0> ;
  assign y1[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  fft_data_path_demux2_1 inst
       (.d(d),
        .s(s),
        .y0(y0));
endmodule

(* CHECK_LICENSE_TYPE = "demux2_0,demux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "demux2_0" *) (* X_CORE_INFO = "demux2,Vivado 2021.1" *) 
module fft_data_path_demux2_0__3
   (d,
    s,
    y0,
    y1);
  input [31:0]d;
  input s;
  output [31:0]y0;
  output [31:0]y1;

  wire \<const0> ;
  wire [31:0]d;
  wire s;
  wire [31:0]y0;

  assign y1[31] = \<const0> ;
  assign y1[30] = \<const0> ;
  assign y1[29] = \<const0> ;
  assign y1[28] = \<const0> ;
  assign y1[27] = \<const0> ;
  assign y1[26] = \<const0> ;
  assign y1[25] = \<const0> ;
  assign y1[24] = \<const0> ;
  assign y1[23] = \<const0> ;
  assign y1[22] = \<const0> ;
  assign y1[21] = \<const0> ;
  assign y1[20] = \<const0> ;
  assign y1[19] = \<const0> ;
  assign y1[18] = \<const0> ;
  assign y1[17] = \<const0> ;
  assign y1[16] = \<const0> ;
  assign y1[15] = \<const0> ;
  assign y1[14] = \<const0> ;
  assign y1[13] = \<const0> ;
  assign y1[12] = \<const0> ;
  assign y1[11] = \<const0> ;
  assign y1[10] = \<const0> ;
  assign y1[9] = \<const0> ;
  assign y1[8] = \<const0> ;
  assign y1[7] = \<const0> ;
  assign y1[6] = \<const0> ;
  assign y1[5] = \<const0> ;
  assign y1[4] = \<const0> ;
  assign y1[3] = \<const0> ;
  assign y1[2] = \<const0> ;
  assign y1[1] = \<const0> ;
  assign y1[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  fft_data_path_demux2_0__4 inst
       (.d(d),
        .s(s),
        .y0(y0));
endmodule

(* ORIG_REF_NAME = "demux2" *) 
module fft_data_path_demux2_0__4
   (y0,
    d,
    s);
  output [31:0]y0;
  input [31:0]d;
  input s;

  wire [31:0]d;
  wire s;
  wire [31:0]y0;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[0]_INST_0 
       (.I0(d[0]),
        .I1(s),
        .O(y0[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[10]_INST_0 
       (.I0(d[10]),
        .I1(s),
        .O(y0[10]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[11]_INST_0 
       (.I0(d[11]),
        .I1(s),
        .O(y0[11]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[12]_INST_0 
       (.I0(d[12]),
        .I1(s),
        .O(y0[12]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[13]_INST_0 
       (.I0(d[13]),
        .I1(s),
        .O(y0[13]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[14]_INST_0 
       (.I0(d[14]),
        .I1(s),
        .O(y0[14]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[15]_INST_0 
       (.I0(d[15]),
        .I1(s),
        .O(y0[15]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[16]_INST_0 
       (.I0(d[16]),
        .I1(s),
        .O(y0[16]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[17]_INST_0 
       (.I0(d[17]),
        .I1(s),
        .O(y0[17]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[18]_INST_0 
       (.I0(d[18]),
        .I1(s),
        .O(y0[18]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[19]_INST_0 
       (.I0(d[19]),
        .I1(s),
        .O(y0[19]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[1]_INST_0 
       (.I0(d[1]),
        .I1(s),
        .O(y0[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[20]_INST_0 
       (.I0(d[20]),
        .I1(s),
        .O(y0[20]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[21]_INST_0 
       (.I0(d[21]),
        .I1(s),
        .O(y0[21]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[22]_INST_0 
       (.I0(d[22]),
        .I1(s),
        .O(y0[22]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[23]_INST_0 
       (.I0(d[23]),
        .I1(s),
        .O(y0[23]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[24]_INST_0 
       (.I0(d[24]),
        .I1(s),
        .O(y0[24]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[25]_INST_0 
       (.I0(d[25]),
        .I1(s),
        .O(y0[25]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[26]_INST_0 
       (.I0(d[26]),
        .I1(s),
        .O(y0[26]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[27]_INST_0 
       (.I0(d[27]),
        .I1(s),
        .O(y0[27]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[28]_INST_0 
       (.I0(d[28]),
        .I1(s),
        .O(y0[28]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[29]_INST_0 
       (.I0(d[29]),
        .I1(s),
        .O(y0[29]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[2]_INST_0 
       (.I0(d[2]),
        .I1(s),
        .O(y0[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[30]_INST_0 
       (.I0(d[30]),
        .I1(s),
        .O(y0[30]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[31]_INST_0 
       (.I0(d[31]),
        .I1(s),
        .O(y0[31]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[3]_INST_0 
       (.I0(d[3]),
        .I1(s),
        .O(y0[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[4]_INST_0 
       (.I0(d[4]),
        .I1(s),
        .O(y0[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[5]_INST_0 
       (.I0(d[5]),
        .I1(s),
        .O(y0[5]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[6]_INST_0 
       (.I0(d[6]),
        .I1(s),
        .O(y0[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[7]_INST_0 
       (.I0(d[7]),
        .I1(s),
        .O(y0[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[8]_INST_0 
       (.I0(d[8]),
        .I1(s),
        .O(y0[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[9]_INST_0 
       (.I0(d[9]),
        .I1(s),
        .O(y0[9]));
endmodule

(* ORIG_REF_NAME = "demux2" *) 
module fft_data_path_demux2_1
   (y0,
    d,
    s);
  output [31:0]y0;
  input [31:0]d;
  input s;

  wire [31:0]d;
  wire s;
  wire [31:0]y0;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[0]_INST_0 
       (.I0(d[0]),
        .I1(s),
        .O(y0[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[10]_INST_0 
       (.I0(d[10]),
        .I1(s),
        .O(y0[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[11]_INST_0 
       (.I0(d[11]),
        .I1(s),
        .O(y0[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[12]_INST_0 
       (.I0(d[12]),
        .I1(s),
        .O(y0[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[13]_INST_0 
       (.I0(d[13]),
        .I1(s),
        .O(y0[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[14]_INST_0 
       (.I0(d[14]),
        .I1(s),
        .O(y0[14]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[15]_INST_0 
       (.I0(d[15]),
        .I1(s),
        .O(y0[15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[16]_INST_0 
       (.I0(d[16]),
        .I1(s),
        .O(y0[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[17]_INST_0 
       (.I0(d[17]),
        .I1(s),
        .O(y0[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[18]_INST_0 
       (.I0(d[18]),
        .I1(s),
        .O(y0[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[19]_INST_0 
       (.I0(d[19]),
        .I1(s),
        .O(y0[19]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[1]_INST_0 
       (.I0(d[1]),
        .I1(s),
        .O(y0[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[20]_INST_0 
       (.I0(d[20]),
        .I1(s),
        .O(y0[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[21]_INST_0 
       (.I0(d[21]),
        .I1(s),
        .O(y0[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[22]_INST_0 
       (.I0(d[22]),
        .I1(s),
        .O(y0[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[23]_INST_0 
       (.I0(d[23]),
        .I1(s),
        .O(y0[23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[24]_INST_0 
       (.I0(d[24]),
        .I1(s),
        .O(y0[24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[25]_INST_0 
       (.I0(d[25]),
        .I1(s),
        .O(y0[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[26]_INST_0 
       (.I0(d[26]),
        .I1(s),
        .O(y0[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[27]_INST_0 
       (.I0(d[27]),
        .I1(s),
        .O(y0[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[28]_INST_0 
       (.I0(d[28]),
        .I1(s),
        .O(y0[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[29]_INST_0 
       (.I0(d[29]),
        .I1(s),
        .O(y0[29]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[2]_INST_0 
       (.I0(d[2]),
        .I1(s),
        .O(y0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[30]_INST_0 
       (.I0(d[30]),
        .I1(s),
        .O(y0[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[31]_INST_0 
       (.I0(d[31]),
        .I1(s),
        .O(y0[31]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[3]_INST_0 
       (.I0(d[3]),
        .I1(s),
        .O(y0[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[4]_INST_0 
       (.I0(d[4]),
        .I1(s),
        .O(y0[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[5]_INST_0 
       (.I0(d[5]),
        .I1(s),
        .O(y0[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[6]_INST_0 
       (.I0(d[6]),
        .I1(s),
        .O(y0[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[7]_INST_0 
       (.I0(d[7]),
        .I1(s),
        .O(y0[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[8]_INST_0 
       (.I0(d[8]),
        .I1(s),
        .O(y0[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[9]_INST_0 
       (.I0(d[9]),
        .I1(s),
        .O(y0[9]));
endmodule

(* ORIG_REF_NAME = "demux2" *) 
module fft_data_path_demux2_2
   (y0,
    d,
    s);
  output [31:0]y0;
  input [31:0]d;
  input s;

  wire [31:0]d;
  wire s;
  wire [31:0]y0;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[0]_INST_0 
       (.I0(d[0]),
        .I1(s),
        .O(y0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[10]_INST_0 
       (.I0(d[10]),
        .I1(s),
        .O(y0[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[11]_INST_0 
       (.I0(d[11]),
        .I1(s),
        .O(y0[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[12]_INST_0 
       (.I0(d[12]),
        .I1(s),
        .O(y0[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[13]_INST_0 
       (.I0(d[13]),
        .I1(s),
        .O(y0[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[14]_INST_0 
       (.I0(d[14]),
        .I1(s),
        .O(y0[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[15]_INST_0 
       (.I0(d[15]),
        .I1(s),
        .O(y0[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[16]_INST_0 
       (.I0(d[16]),
        .I1(s),
        .O(y0[16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[17]_INST_0 
       (.I0(d[17]),
        .I1(s),
        .O(y0[17]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[18]_INST_0 
       (.I0(d[18]),
        .I1(s),
        .O(y0[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[19]_INST_0 
       (.I0(d[19]),
        .I1(s),
        .O(y0[19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[1]_INST_0 
       (.I0(d[1]),
        .I1(s),
        .O(y0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[20]_INST_0 
       (.I0(d[20]),
        .I1(s),
        .O(y0[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[21]_INST_0 
       (.I0(d[21]),
        .I1(s),
        .O(y0[21]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[22]_INST_0 
       (.I0(d[22]),
        .I1(s),
        .O(y0[22]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[23]_INST_0 
       (.I0(d[23]),
        .I1(s),
        .O(y0[23]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[24]_INST_0 
       (.I0(d[24]),
        .I1(s),
        .O(y0[24]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[25]_INST_0 
       (.I0(d[25]),
        .I1(s),
        .O(y0[25]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[26]_INST_0 
       (.I0(d[26]),
        .I1(s),
        .O(y0[26]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[27]_INST_0 
       (.I0(d[27]),
        .I1(s),
        .O(y0[27]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[28]_INST_0 
       (.I0(d[28]),
        .I1(s),
        .O(y0[28]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[29]_INST_0 
       (.I0(d[29]),
        .I1(s),
        .O(y0[29]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[2]_INST_0 
       (.I0(d[2]),
        .I1(s),
        .O(y0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[30]_INST_0 
       (.I0(d[30]),
        .I1(s),
        .O(y0[30]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[31]_INST_0 
       (.I0(d[31]),
        .I1(s),
        .O(y0[31]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[3]_INST_0 
       (.I0(d[3]),
        .I1(s),
        .O(y0[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[4]_INST_0 
       (.I0(d[4]),
        .I1(s),
        .O(y0[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[5]_INST_0 
       (.I0(d[5]),
        .I1(s),
        .O(y0[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[6]_INST_0 
       (.I0(d[6]),
        .I1(s),
        .O(y0[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[7]_INST_0 
       (.I0(d[7]),
        .I1(s),
        .O(y0[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[8]_INST_0 
       (.I0(d[8]),
        .I1(s),
        .O(y0[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[9]_INST_0 
       (.I0(d[9]),
        .I1(s),
        .O(y0[9]));
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "mux2_0" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module fft_data_path_mux2_0__1
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire [31:0]d0;

  assign y[31:0] = d0;
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "mux2_0" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module fft_data_path_mux2_0__2
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire [31:0]d0;

  assign y[31:0] = d0;
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "mux2_0" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module fft_data_path_mux2_0__3
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire [31:0]d0;

  assign y[31:0] = d0;
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "mux2_0" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module fft_data_path_mux2_0__4
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire [31:0]d0;

  assign y[31:0] = d0;
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 84032)
`pragma protect data_block
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
86FnPfy1jCMLb7wdSUY=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
