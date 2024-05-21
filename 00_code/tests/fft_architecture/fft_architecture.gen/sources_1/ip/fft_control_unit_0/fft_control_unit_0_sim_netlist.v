// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue May 21 12:23:10 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/fft_architecture/fft_architecture.gen/sources_1/ip/fft_control_unit_0/fft_control_unit_0_sim_netlist.v
// Design      : fft_control_unit_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fft_control_unit_0,control_unit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "control_unit,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module fft_control_unit_0
   (clk,
    rstn,
    start_i,
    src_sel_o,
    fft_ready_o,
    bram_we_o,
    bram_en_o,
    bf_ce_o,
    bram_addr_o,
    twiddle_addr_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input start_i;
  output src_sel_o;
  output fft_ready_o;
  output bram_we_o;
  output bram_en_o;
  output bf_ce_o;
  output [10:0]bram_addr_o;
  output [10:0]twiddle_addr_o;

  wire \<const1> ;
  wire bf_ce_o;
  wire [10:0]bram_addr_o;
  wire bram_we_o;
  wire clk;
  wire fft_ready_o;
  wire rstn;
  wire src_sel_o;
  wire start_i;
  wire [10:0]twiddle_addr_o;
  wire NLW_inst_bram_en_o_UNCONNECTED;

  assign bram_en_o = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* BRAM_SIZE = "10'b1000000000" *) 
  (* S_BF_OPERATION = "3'b100" *) 
  (* S_CHECK_BF_COUNTER = "3'b010" *) 
  (* S_IDLE = "3'b000" *) 
  (* S_READ_MEMORY = "3'b011" *) 
  (* S_SEND_RESULTS = "3'b110" *) 
  (* S_STORE_INPUTS = "3'b001" *) 
  (* S_WRITE_BACK = "3'b101" *) 
  fft_control_unit_0_control_unit inst
       (.bf_ce_o(bf_ce_o),
        .bram_addr_o(bram_addr_o),
        .bram_en_o(NLW_inst_bram_en_o_UNCONNECTED),
        .bram_we_o(bram_we_o),
        .clk(clk),
        .fft_ready_o(fft_ready_o),
        .rstn(rstn),
        .src_sel_o(src_sel_o),
        .start_i(start_i),
        .twiddle_addr_o(twiddle_addr_o));
endmodule

(* BRAM_SIZE = "10'b1000000000" *) (* ORIG_REF_NAME = "control_unit" *) (* S_BF_OPERATION = "3'b100" *) 
(* S_CHECK_BF_COUNTER = "3'b010" *) (* S_IDLE = "3'b000" *) (* S_READ_MEMORY = "3'b011" *) 
(* S_SEND_RESULTS = "3'b110" *) (* S_STORE_INPUTS = "3'b001" *) (* S_WRITE_BACK = "3'b101" *) 
module fft_control_unit_0_control_unit
   (clk,
    rstn,
    start_i,
    src_sel_o,
    fft_ready_o,
    bram_we_o,
    bram_en_o,
    bf_ce_o,
    bram_addr_o,
    twiddle_addr_o);
  input clk;
  input rstn;
  input start_i;
  output src_sel_o;
  output fft_ready_o;
  output bram_we_o;
  output bram_en_o;
  output bf_ce_o;
  output [10:0]bram_addr_o;
  output [10:0]twiddle_addr_o;

  wire \<const0> ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_10_n_0 ;
  wire \FSM_sequential_state[1]_i_11_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state[1]_i_9_n_0 ;
  wire bf_ce_o;
  wire bf_counter;
  wire \bf_counter[0]_i_1_n_0 ;
  wire \bf_counter[10]_i_2_n_0 ;
  wire \bf_counter[10]_i_3_n_0 ;
  wire \bf_counter[1]_i_1_n_0 ;
  wire \bf_counter[2]_i_1_n_0 ;
  wire \bf_counter[3]_i_1_n_0 ;
  wire \bf_counter[4]_i_1_n_0 ;
  wire \bf_counter[5]_i_1_n_0 ;
  wire \bf_counter[5]_i_2_n_0 ;
  wire \bf_counter[6]_i_1_n_0 ;
  wire \bf_counter[6]_i_2_n_0 ;
  wire \bf_counter[7]_i_1_n_0 ;
  wire \bf_counter[8]_i_1_n_0 ;
  wire \bf_counter[9]_i_1_n_0 ;
  wire \bf_counter_reg_n_0_[0] ;
  wire \bf_counter_reg_n_0_[10] ;
  wire \bf_counter_reg_n_0_[1] ;
  wire \bf_counter_reg_n_0_[2] ;
  wire \bf_counter_reg_n_0_[3] ;
  wire \bf_counter_reg_n_0_[4] ;
  wire \bf_counter_reg_n_0_[5] ;
  wire \bf_counter_reg_n_0_[6] ;
  wire \bf_counter_reg_n_0_[7] ;
  wire \bf_counter_reg_n_0_[8] ;
  wire \bf_counter_reg_n_0_[9] ;
  wire [10:0]bram_addr_o;
  wire bram_we_o;
  wire clk;
  wire \cycle_counter[0]_i_1_n_0 ;
  wire \cycle_counter[1]_i_1_n_0 ;
  wire \cycle_counter[2]_i_1_n_0 ;
  wire \cycle_counter_reg_n_0_[0] ;
  wire \cycle_counter_reg_n_0_[1] ;
  wire \cycle_counter_reg_n_0_[2] ;
  wire cycle_delay_i_1_n_0;
  wire cycle_delay_reg_n_0;
  wire data_counter;
  wire \data_counter[0]_i_1_n_0 ;
  wire \data_counter[10]_i_1_n_0 ;
  wire \data_counter[10]_i_2_n_0 ;
  wire \data_counter[1]_i_1_n_0 ;
  wire \data_counter[2]_i_1_n_0 ;
  wire \data_counter[3]_i_1_n_0 ;
  wire \data_counter[4]_i_1_n_0 ;
  wire \data_counter[5]_i_1_n_0 ;
  wire \data_counter[6]_i_1_n_0 ;
  wire \data_counter[7]_i_1_n_0 ;
  wire \data_counter[7]_i_2_n_0 ;
  wire \data_counter[8]_i_1_n_0 ;
  wire \data_counter[8]_i_2_n_0 ;
  wire \data_counter[9]_i_1_n_0 ;
  wire \data_counter_reg_n_0_[0] ;
  wire \data_counter_reg_n_0_[10] ;
  wire \data_counter_reg_n_0_[1] ;
  wire \data_counter_reg_n_0_[2] ;
  wire \data_counter_reg_n_0_[3] ;
  wire \data_counter_reg_n_0_[4] ;
  wire \data_counter_reg_n_0_[5] ;
  wire \data_counter_reg_n_0_[6] ;
  wire \data_counter_reg_n_0_[7] ;
  wire \data_counter_reg_n_0_[8] ;
  wire \data_counter_reg_n_0_[9] ;
  wire fft_ready_o;
  wire fft_ready_o_i_1_n_0;
  wire fft_ready_o_i_2_n_0;
  wire fft_ready_o_i_3_n_0;
  wire [2:0]nstate;
  wire rstn;
  wire src_sel_o;
  wire start_i;
  wire [1:0]state;
  wire [10:0]twiddle_addr_o;

  assign bram_en_o = \<const0> ;
  LUT6 #(
    .INIT(64'hEAEEEAEEFFFFEAEE)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state[0]_i_4_n_0 ),
        .I3(\FSM_sequential_state[0]_i_5_n_0 ),
        .I4(\FSM_sequential_state[1]_i_4_n_0 ),
        .I5(\FSM_sequential_state[0]_i_6_n_0 ),
        .O(nstate[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FFD0)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[1]_i_9_n_0 ),
        .I1(\FSM_sequential_state[1]_i_10_n_0 ),
        .I2(\data_counter_reg_n_0_[1] ),
        .I3(\data_counter_reg_n_0_[10] ),
        .I4(\FSM_sequential_state[1]_i_11_n_0 ),
        .I5(\FSM_sequential_state[0]_i_7_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hC00AC0CA)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(start_i),
        .I1(data_counter),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\data_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\data_counter_reg_n_0_[2] ),
        .I1(\data_counter_reg_n_0_[4] ),
        .I2(\data_counter_reg_n_0_[0] ),
        .I3(\data_counter_reg_n_0_[3] ),
        .I4(fft_ready_o_i_3_n_0),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F000000)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(data_counter),
        .I1(state[0]),
        .I2(\data_counter_reg_n_0_[1] ),
        .I3(\data_counter_reg_n_0_[9] ),
        .I4(state[1]),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(data_counter),
        .I3(cycle_delay_reg_n_0),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFF7)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(state[0]),
        .I1(\cycle_counter_reg_n_0_[2] ),
        .I2(\cycle_counter_reg_n_0_[1] ),
        .I3(\cycle_counter_reg_n_0_[0] ),
        .I4(data_counter),
        .I5(state[1]),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7700F000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(fft_ready_o_i_2_n_0),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\FSM_sequential_state[1]_i_5_n_0 ),
        .O(nstate[1]));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \FSM_sequential_state[1]_i_10 
       (.I0(\data_counter_reg_n_0_[7] ),
        .I1(\data_counter_reg_n_0_[2] ),
        .I2(\data_counter_reg_n_0_[0] ),
        .I3(\data_counter_reg_n_0_[8] ),
        .I4(\data_counter_reg_n_0_[9] ),
        .I5(\data_counter_reg_n_0_[3] ),
        .O(\FSM_sequential_state[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[1]_i_11 
       (.I0(data_counter),
        .I1(state[0]),
        .O(\FSM_sequential_state[1]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(rstn),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\data_counter_reg_n_0_[9] ),
        .I1(\data_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\bf_counter_reg_n_0_[10] ),
        .I1(\bf_counter_reg_n_0_[6] ),
        .I2(\bf_counter_reg_n_0_[5] ),
        .I3(\FSM_sequential_state[1]_i_6_n_0 ),
        .I4(\FSM_sequential_state[1]_i_7_n_0 ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\FSM_sequential_state[1]_i_8_n_0 ),
        .I1(\FSM_sequential_state[1]_i_9_n_0 ),
        .I2(\FSM_sequential_state[1]_i_10_n_0 ),
        .I3(\FSM_sequential_state[1]_i_11_n_0 ),
        .I4(\data_counter_reg_n_0_[1] ),
        .I5(\data_counter_reg_n_0_[10] ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(\bf_counter_reg_n_0_[0] ),
        .I1(\bf_counter_reg_n_0_[1] ),
        .I2(\bf_counter_reg_n_0_[9] ),
        .I3(\bf_counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(\bf_counter_reg_n_0_[3] ),
        .I1(\bf_counter_reg_n_0_[4] ),
        .I2(\bf_counter_reg_n_0_[7] ),
        .I3(\bf_counter_reg_n_0_[8] ),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555555501000000)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(data_counter),
        .I1(\cycle_counter_reg_n_0_[0] ),
        .I2(\cycle_counter_reg_n_0_[1] ),
        .I3(\cycle_counter_reg_n_0_[2] ),
        .I4(state[0]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[1]_i_9 
       (.I0(\data_counter_reg_n_0_[6] ),
        .I1(\data_counter_reg_n_0_[5] ),
        .I2(\data_counter_reg_n_0_[4] ),
        .O(\FSM_sequential_state[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEFF0)) 
    \FSM_sequential_state[2]_inv_i_1 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(state[0]),
        .I2(data_counter),
        .I3(state[1]),
        .O(nstate[2]));
  (* FSM_ENCODED_STATES = "S_STORE_INPUTS:001,S_READ_MEMORY:100,S_CHECK_BF_COUNTER:010,S_BF_OPERATION:101,S_WRITE_BACK:110,S_SEND_RESULTS:011,S_IDLE:000" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(nstate[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "S_STORE_INPUTS:001,S_READ_MEMORY:100,S_CHECK_BF_COUNTER:010,S_BF_OPERATION:101,S_WRITE_BACK:110,S_SEND_RESULTS:011,S_IDLE:000" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(nstate[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "S_STORE_INPUTS:001,S_READ_MEMORY:100,S_CHECK_BF_COUNTER:010,S_BF_OPERATION:101,S_WRITE_BACK:110,S_SEND_RESULTS:011,S_IDLE:000" *) 
  (* inverted = "yes" *) 
  FDPE \FSM_sequential_state_reg[2]_inv 
       (.C(clk),
        .CE(1'b1),
        .D(nstate[2]),
        .PRE(\FSM_sequential_state[1]_i_2_n_0 ),
        .Q(data_counter));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    bf_ce_o_INST_0
       (.I0(state[0]),
        .I1(\cycle_counter_reg_n_0_[2] ),
        .I2(\cycle_counter_reg_n_0_[1] ),
        .I3(\cycle_counter_reg_n_0_[0] ),
        .I4(data_counter),
        .I5(state[1]),
        .O(bf_ce_o));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bf_counter[0]_i_1 
       (.I0(data_counter),
        .I1(\bf_counter_reg_n_0_[0] ),
        .O(\bf_counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h92)) 
    \bf_counter[10]_i_1 
       (.I0(data_counter),
        .I1(state[0]),
        .I2(state[1]),
        .O(bf_counter));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \bf_counter[10]_i_2 
       (.I0(data_counter),
        .I1(\bf_counter_reg_n_0_[7] ),
        .I2(\bf_counter_reg_n_0_[9] ),
        .I3(\bf_counter_reg_n_0_[8] ),
        .I4(\bf_counter[10]_i_3_n_0 ),
        .I5(\bf_counter_reg_n_0_[10] ),
        .O(\bf_counter[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bf_counter[10]_i_3 
       (.I0(\bf_counter_reg_n_0_[6] ),
        .I1(\bf_counter[6]_i_2_n_0 ),
        .O(\bf_counter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \bf_counter[1]_i_1 
       (.I0(\bf_counter_reg_n_0_[0] ),
        .I1(\bf_counter_reg_n_0_[1] ),
        .I2(data_counter),
        .O(\bf_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \bf_counter[2]_i_1 
       (.I0(data_counter),
        .I1(\bf_counter_reg_n_0_[1] ),
        .I2(\bf_counter_reg_n_0_[0] ),
        .I3(\bf_counter_reg_n_0_[2] ),
        .O(\bf_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \bf_counter[3]_i_1 
       (.I0(data_counter),
        .I1(\bf_counter_reg_n_0_[0] ),
        .I2(\bf_counter_reg_n_0_[1] ),
        .I3(\bf_counter_reg_n_0_[2] ),
        .I4(\bf_counter_reg_n_0_[3] ),
        .O(\bf_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \bf_counter[4]_i_1 
       (.I0(data_counter),
        .I1(\bf_counter_reg_n_0_[2] ),
        .I2(\bf_counter_reg_n_0_[1] ),
        .I3(\bf_counter_reg_n_0_[0] ),
        .I4(\bf_counter_reg_n_0_[3] ),
        .I5(\bf_counter_reg_n_0_[4] ),
        .O(\bf_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \bf_counter[5]_i_1 
       (.I0(data_counter),
        .I1(\bf_counter[5]_i_2_n_0 ),
        .I2(\bf_counter_reg_n_0_[5] ),
        .O(\bf_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bf_counter[5]_i_2 
       (.I0(\bf_counter_reg_n_0_[3] ),
        .I1(\bf_counter_reg_n_0_[0] ),
        .I2(\bf_counter_reg_n_0_[1] ),
        .I3(\bf_counter_reg_n_0_[2] ),
        .I4(\bf_counter_reg_n_0_[4] ),
        .O(\bf_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \bf_counter[6]_i_1 
       (.I0(data_counter),
        .I1(\bf_counter[6]_i_2_n_0 ),
        .I2(\bf_counter_reg_n_0_[6] ),
        .O(\bf_counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bf_counter[6]_i_2 
       (.I0(\bf_counter_reg_n_0_[4] ),
        .I1(\bf_counter_reg_n_0_[2] ),
        .I2(\bf_counter_reg_n_0_[1] ),
        .I3(\bf_counter_reg_n_0_[0] ),
        .I4(\bf_counter_reg_n_0_[3] ),
        .I5(\bf_counter_reg_n_0_[5] ),
        .O(\bf_counter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \bf_counter[7]_i_1 
       (.I0(data_counter),
        .I1(\bf_counter[10]_i_3_n_0 ),
        .I2(\bf_counter_reg_n_0_[7] ),
        .O(\bf_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \bf_counter[8]_i_1 
       (.I0(\bf_counter[10]_i_3_n_0 ),
        .I1(\bf_counter_reg_n_0_[7] ),
        .I2(\bf_counter_reg_n_0_[8] ),
        .I3(data_counter),
        .O(\bf_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \bf_counter[9]_i_1 
       (.I0(data_counter),
        .I1(\bf_counter_reg_n_0_[7] ),
        .I2(\bf_counter_reg_n_0_[8] ),
        .I3(\bf_counter[10]_i_3_n_0 ),
        .I4(\bf_counter_reg_n_0_[9] ),
        .O(\bf_counter[9]_i_1_n_0 ));
  FDCE \bf_counter_reg[0] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bf_counter[0]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[0] ));
  FDCE \bf_counter_reg[10] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bf_counter[10]_i_2_n_0 ),
        .Q(\bf_counter_reg_n_0_[10] ));
  FDCE \bf_counter_reg[1] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bf_counter[1]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[1] ));
  FDCE \bf_counter_reg[2] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bf_counter[2]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[2] ));
  FDCE \bf_counter_reg[3] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bf_counter[3]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[3] ));
  FDCE \bf_counter_reg[4] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bf_counter[4]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[4] ));
  FDCE \bf_counter_reg[5] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bf_counter[5]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[5] ));
  FDCE \bf_counter_reg[6] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bf_counter[6]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[6] ));
  FDCE \bf_counter_reg[7] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bf_counter[7]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[7] ));
  FDCE \bf_counter_reg[8] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bf_counter[8]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[8] ));
  FDCE \bf_counter_reg[9] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bf_counter[9]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF48C048C)) 
    \bram_addr_o[0]_INST_0 
       (.I0(state[1]),
        .I1(\bf_counter_reg_n_0_[0] ),
        .I2(data_counter),
        .I3(state[0]),
        .I4(\data_counter_reg_n_0_[0] ),
        .O(bram_addr_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h8BF38800)) 
    \bram_addr_o[10]_INST_0 
       (.I0(\data_counter_reg_n_0_[10] ),
        .I1(data_counter),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\bf_counter_reg_n_0_[10] ),
        .O(bram_addr_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h8BF38800)) 
    \bram_addr_o[1]_INST_0 
       (.I0(\data_counter_reg_n_0_[1] ),
        .I1(data_counter),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\bf_counter_reg_n_0_[1] ),
        .O(bram_addr_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hF48C048C)) 
    \bram_addr_o[2]_INST_0 
       (.I0(state[1]),
        .I1(\bf_counter_reg_n_0_[2] ),
        .I2(data_counter),
        .I3(state[0]),
        .I4(\data_counter_reg_n_0_[2] ),
        .O(bram_addr_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hF48C048C)) 
    \bram_addr_o[3]_INST_0 
       (.I0(state[1]),
        .I1(\bf_counter_reg_n_0_[3] ),
        .I2(data_counter),
        .I3(state[0]),
        .I4(\data_counter_reg_n_0_[3] ),
        .O(bram_addr_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF48C048C)) 
    \bram_addr_o[4]_INST_0 
       (.I0(state[1]),
        .I1(\bf_counter_reg_n_0_[4] ),
        .I2(data_counter),
        .I3(state[0]),
        .I4(\data_counter_reg_n_0_[4] ),
        .O(bram_addr_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hF48C048C)) 
    \bram_addr_o[5]_INST_0 
       (.I0(state[1]),
        .I1(\bf_counter_reg_n_0_[5] ),
        .I2(data_counter),
        .I3(state[0]),
        .I4(\data_counter_reg_n_0_[5] ),
        .O(bram_addr_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF48C048C)) 
    \bram_addr_o[6]_INST_0 
       (.I0(state[1]),
        .I1(\bf_counter_reg_n_0_[6] ),
        .I2(data_counter),
        .I3(state[0]),
        .I4(\data_counter_reg_n_0_[6] ),
        .O(bram_addr_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hF48C048C)) 
    \bram_addr_o[7]_INST_0 
       (.I0(state[1]),
        .I1(\bf_counter_reg_n_0_[7] ),
        .I2(data_counter),
        .I3(state[0]),
        .I4(\data_counter_reg_n_0_[7] ),
        .O(bram_addr_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hF48C048C)) 
    \bram_addr_o[8]_INST_0 
       (.I0(state[1]),
        .I1(\bf_counter_reg_n_0_[8] ),
        .I2(data_counter),
        .I3(state[0]),
        .I4(\data_counter_reg_n_0_[8] ),
        .O(bram_addr_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hF48C048C)) 
    \bram_addr_o[9]_INST_0 
       (.I0(state[1]),
        .I1(\bf_counter_reg_n_0_[9] ),
        .I2(data_counter),
        .I3(state[0]),
        .I4(\data_counter_reg_n_0_[9] ),
        .O(bram_addr_o[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h24)) 
    bram_we_o_INST_0
       (.I0(state[0]),
        .I1(state[1]),
        .I2(data_counter),
        .O(bram_we_o));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE910)) 
    \cycle_counter[0]_i_1 
       (.I0(state[1]),
        .I1(data_counter),
        .I2(state[0]),
        .I3(\cycle_counter_reg_n_0_[0] ),
        .O(\cycle_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFDC30200)) 
    \cycle_counter[1]_i_1 
       (.I0(\cycle_counter_reg_n_0_[0] ),
        .I1(state[1]),
        .I2(data_counter),
        .I3(state[0]),
        .I4(\cycle_counter_reg_n_0_[1] ),
        .O(\cycle_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7F00F00080000)) 
    \cycle_counter[2]_i_1 
       (.I0(\cycle_counter_reg_n_0_[1] ),
        .I1(\cycle_counter_reg_n_0_[0] ),
        .I2(state[1]),
        .I3(data_counter),
        .I4(state[0]),
        .I5(\cycle_counter_reg_n_0_[2] ),
        .O(\cycle_counter[2]_i_1_n_0 ));
  FDCE \cycle_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\cycle_counter[0]_i_1_n_0 ),
        .Q(\cycle_counter_reg_n_0_[0] ));
  FDCE \cycle_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\cycle_counter[1]_i_1_n_0 ),
        .Q(\cycle_counter_reg_n_0_[1] ));
  FDCE \cycle_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\cycle_counter[2]_i_1_n_0 ),
        .Q(\cycle_counter_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7508)) 
    cycle_delay_i_1
       (.I0(data_counter),
        .I1(state[1]),
        .I2(state[0]),
        .I3(cycle_delay_reg_n_0),
        .O(cycle_delay_i_1_n_0));
  FDCE cycle_delay_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(cycle_delay_i_1_n_0),
        .Q(cycle_delay_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_counter[0]_i_1 
       (.I0(state[0]),
        .I1(\data_counter_reg_n_0_[0] ),
        .O(\data_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \data_counter[10]_i_1 
       (.I0(state[0]),
        .I1(\data_counter[10]_i_2_n_0 ),
        .I2(\data_counter_reg_n_0_[9] ),
        .I3(\data_counter_reg_n_0_[10] ),
        .O(\data_counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \data_counter[10]_i_2 
       (.I0(\data_counter_reg_n_0_[7] ),
        .I1(\data_counter_reg_n_0_[4] ),
        .I2(\data_counter_reg_n_0_[5] ),
        .I3(\data_counter_reg_n_0_[6] ),
        .I4(\data_counter[7]_i_2_n_0 ),
        .I5(\data_counter_reg_n_0_[8] ),
        .O(\data_counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \data_counter[1]_i_1 
       (.I0(\data_counter_reg_n_0_[1] ),
        .I1(\data_counter_reg_n_0_[0] ),
        .I2(state[0]),
        .O(\data_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \data_counter[2]_i_1 
       (.I0(state[0]),
        .I1(\data_counter_reg_n_0_[0] ),
        .I2(\data_counter_reg_n_0_[1] ),
        .I3(\data_counter_reg_n_0_[2] ),
        .O(\data_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \data_counter[3]_i_1 
       (.I0(state[0]),
        .I1(\data_counter_reg_n_0_[1] ),
        .I2(\data_counter_reg_n_0_[0] ),
        .I3(\data_counter_reg_n_0_[2] ),
        .I4(\data_counter_reg_n_0_[3] ),
        .O(\data_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \data_counter[4]_i_1 
       (.I0(\data_counter_reg_n_0_[3] ),
        .I1(\data_counter_reg_n_0_[2] ),
        .I2(\data_counter_reg_n_0_[0] ),
        .I3(\data_counter_reg_n_0_[1] ),
        .I4(\data_counter_reg_n_0_[4] ),
        .I5(state[0]),
        .O(\data_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \data_counter[5]_i_1 
       (.I0(state[0]),
        .I1(\data_counter_reg_n_0_[4] ),
        .I2(\data_counter[7]_i_2_n_0 ),
        .I3(\data_counter_reg_n_0_[5] ),
        .O(\data_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \data_counter[6]_i_1 
       (.I0(\data_counter[7]_i_2_n_0 ),
        .I1(\data_counter_reg_n_0_[4] ),
        .I2(\data_counter_reg_n_0_[5] ),
        .I3(\data_counter_reg_n_0_[6] ),
        .I4(state[0]),
        .O(\data_counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \data_counter[7]_i_1 
       (.I0(state[0]),
        .I1(\data_counter_reg_n_0_[4] ),
        .I2(\data_counter_reg_n_0_[5] ),
        .I3(\data_counter_reg_n_0_[6] ),
        .I4(\data_counter[7]_i_2_n_0 ),
        .I5(\data_counter_reg_n_0_[7] ),
        .O(\data_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_counter[7]_i_2 
       (.I0(\data_counter_reg_n_0_[3] ),
        .I1(\data_counter_reg_n_0_[2] ),
        .I2(\data_counter_reg_n_0_[0] ),
        .I3(\data_counter_reg_n_0_[1] ),
        .O(\data_counter[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \data_counter[8]_i_1 
       (.I0(state[0]),
        .I1(\data_counter[8]_i_2_n_0 ),
        .I2(\data_counter_reg_n_0_[8] ),
        .O(\data_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \data_counter[8]_i_2 
       (.I0(\data_counter[7]_i_2_n_0 ),
        .I1(\data_counter_reg_n_0_[6] ),
        .I2(\data_counter_reg_n_0_[5] ),
        .I3(\data_counter_reg_n_0_[4] ),
        .I4(\data_counter_reg_n_0_[7] ),
        .O(\data_counter[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \data_counter[9]_i_1 
       (.I0(state[0]),
        .I1(\data_counter[10]_i_2_n_0 ),
        .I2(\data_counter_reg_n_0_[9] ),
        .O(\data_counter[9]_i_1_n_0 ));
  FDCE \data_counter_reg[0] 
       (.C(clk),
        .CE(data_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\data_counter[0]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[0] ));
  FDCE \data_counter_reg[10] 
       (.C(clk),
        .CE(data_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\data_counter[10]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[10] ));
  FDCE \data_counter_reg[1] 
       (.C(clk),
        .CE(data_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\data_counter[1]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[1] ));
  FDCE \data_counter_reg[2] 
       (.C(clk),
        .CE(data_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\data_counter[2]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[2] ));
  FDCE \data_counter_reg[3] 
       (.C(clk),
        .CE(data_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\data_counter[3]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[3] ));
  FDCE \data_counter_reg[4] 
       (.C(clk),
        .CE(data_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\data_counter[4]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[4] ));
  FDCE \data_counter_reg[5] 
       (.C(clk),
        .CE(data_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\data_counter[5]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[5] ));
  FDCE \data_counter_reg[6] 
       (.C(clk),
        .CE(data_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\data_counter[6]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[6] ));
  FDCE \data_counter_reg[7] 
       (.C(clk),
        .CE(data_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\data_counter[7]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[7] ));
  FDCE \data_counter_reg[8] 
       (.C(clk),
        .CE(data_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\data_counter[8]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[8] ));
  FDCE \data_counter_reg[9] 
       (.C(clk),
        .CE(data_counter),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\data_counter[9]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h8080800080808080)) 
    fft_ready_o_i_1
       (.I0(data_counter),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\data_counter_reg_n_0_[9] ),
        .I4(\data_counter_reg_n_0_[1] ),
        .I5(fft_ready_o_i_2_n_0),
        .O(fft_ready_o_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    fft_ready_o_i_2
       (.I0(\data_counter_reg_n_0_[10] ),
        .I1(fft_ready_o_i_3_n_0),
        .I2(\data_counter_reg_n_0_[3] ),
        .I3(\data_counter_reg_n_0_[0] ),
        .I4(\data_counter_reg_n_0_[4] ),
        .I5(\data_counter_reg_n_0_[2] ),
        .O(fft_ready_o_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    fft_ready_o_i_3
       (.I0(\data_counter_reg_n_0_[8] ),
        .I1(\data_counter_reg_n_0_[6] ),
        .I2(\data_counter_reg_n_0_[7] ),
        .I3(\data_counter_reg_n_0_[5] ),
        .O(fft_ready_o_i_3_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    fft_ready_o_reg
       (.C(clk),
        .CE(1'b1),
        .D(fft_ready_o_i_1_n_0),
        .Q(fft_ready_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hC7)) 
    src_sel_o_INST_0
       (.I0(state[0]),
        .I1(state[1]),
        .I2(data_counter),
        .O(src_sel_o));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h202A)) 
    \twiddle_addr_o[0]_INST_0 
       (.I0(\bf_counter_reg_n_0_[0] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_counter),
        .O(twiddle_addr_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h202A)) 
    \twiddle_addr_o[10]_INST_0 
       (.I0(\bf_counter_reg_n_0_[10] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_counter),
        .O(twiddle_addr_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h202A)) 
    \twiddle_addr_o[1]_INST_0 
       (.I0(\bf_counter_reg_n_0_[1] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_counter),
        .O(twiddle_addr_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h202A)) 
    \twiddle_addr_o[2]_INST_0 
       (.I0(\bf_counter_reg_n_0_[2] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_counter),
        .O(twiddle_addr_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h202A)) 
    \twiddle_addr_o[3]_INST_0 
       (.I0(\bf_counter_reg_n_0_[3] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_counter),
        .O(twiddle_addr_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h202A)) 
    \twiddle_addr_o[4]_INST_0 
       (.I0(\bf_counter_reg_n_0_[4] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_counter),
        .O(twiddle_addr_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h202A)) 
    \twiddle_addr_o[5]_INST_0 
       (.I0(\bf_counter_reg_n_0_[5] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_counter),
        .O(twiddle_addr_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h202A)) 
    \twiddle_addr_o[6]_INST_0 
       (.I0(\bf_counter_reg_n_0_[6] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_counter),
        .O(twiddle_addr_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h202A)) 
    \twiddle_addr_o[7]_INST_0 
       (.I0(\bf_counter_reg_n_0_[7] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_counter),
        .O(twiddle_addr_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h202A)) 
    \twiddle_addr_o[8]_INST_0 
       (.I0(\bf_counter_reg_n_0_[8] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_counter),
        .O(twiddle_addr_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h202A)) 
    \twiddle_addr_o[9]_INST_0 
       (.I0(\bf_counter_reg_n_0_[9] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_counter),
        .O(twiddle_addr_o[9]));
endmodule
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
