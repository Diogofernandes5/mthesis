// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Apr  4 15:03:28 2024
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
  wire rstn;
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
        .rstn(rstn),
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
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
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
  wire rsta;
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
  (* C_HAS_ENA = "0" *) 
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
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
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
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
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
  wire rsta;
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
  (* C_HAS_ENA = "0" *) 
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
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
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
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
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
  wire rsta;
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
  (* C_HAS_ENA = "0" *) 
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
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
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
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
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
  wire rsta;
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
  (* C_HAS_ENA = "0" *) 
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
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
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
    rstn,
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
  input rstn;
  input bram_we_i;
  input [8:0]bram_addr_i;
  input fft_ready_i;

  wire [8:0]bram_addr_i;
  wire bram_we_i;
  wire clk;
  wire fft_ready_i;
  wire rstn;
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
        .rsta(rstn),
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
        .rsta(rstn),
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
        .rsta(rstn),
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
        .rsta(rstn),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 85984)
`pragma protect data_block
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
rjHaxh6HcyPQqkHFcnLt4E+1S27txyDoCkGQJQ==
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
