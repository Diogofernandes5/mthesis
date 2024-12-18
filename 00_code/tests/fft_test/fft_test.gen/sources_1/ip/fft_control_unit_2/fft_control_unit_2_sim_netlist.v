// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 10 17:09:10 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/fft_test/fft_test.gen/sources_1/ip/fft_control_unit_2/fft_control_unit_2_sim_netlist.v
// Design      : fft_control_unit_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fft_control_unit_2,control_unit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "control_unit,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module fft_control_unit_2
   (clk,
    rstn,
    start_i,
    dl_busy_i,
    src_sel_o,
    fft_ready_o,
    busy_o,
    bf_ce_o,
    bram_addr_x0_o,
    bram_addr_x1_o,
    bram_x0_we_o,
    bram_x1_we_o,
    bram_x0_en_o,
    bram_x1_en_o,
    twiddle_addr_o,
    state,
    data_counter);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input start_i;
  input dl_busy_i;
  output src_sel_o;
  output fft_ready_o;
  output busy_o;
  output bf_ce_o;
  output [9:0]bram_addr_x0_o;
  output [9:0]bram_addr_x1_o;
  output bram_x0_we_o;
  output bram_x1_we_o;
  output bram_x0_en_o;
  output bram_x1_en_o;
  output [8:0]twiddle_addr_o;
  output [3:0]state;
  output [10:0]data_counter;

  wire bf_ce_o;
  wire [9:0]bram_addr_x0_o;
  wire [9:0]bram_addr_x1_o;
  wire bram_x0_en_o;
  wire bram_x0_we_o;
  wire bram_x1_en_o;
  wire bram_x1_we_o;
  wire busy_o;
  wire clk;
  wire [10:0]data_counter;
  wire dl_busy_i;
  wire fft_ready_o;
  wire rstn;
  wire src_sel_o;
  wire start_i;
  wire [3:0]state;
  wire [8:0]twiddle_addr_o;

  (* BF_OP_CYCLES = "10" *) 
  (* BRAM_SIZE = "1024" *) 
  (* DIV_CYCLES = "4'b1011" *) 
  (* FIRST_STAGE = "7" *) 
  (* HALF_N = "512" *) 
  (* N = "1024" *) 
  (* STAGES_NUM = "3" *) 
  (* S_BF_OPERATION = "4'b0101" *) 
  (* S_CALC_STAGE_VARS = "4'b0010" *) 
  (* S_CHECK_BF_COUNTER = "4'b0011" *) 
  (* S_CHECK_STAGE = "4'b0111" *) 
  (* S_IDLE = "4'b0000" *) 
  (* S_READ_MEMORY = "4'b0100" *) 
  (* S_SEND_RESULTS = "4'b1001" *) 
  (* S_STORE_INPUTS = "4'b0001" *) 
  (* S_WAIT_MS = "4'b1000" *) 
  (* S_WRITE_BACK = "4'b0110" *) 
  fft_control_unit_2_control_unit inst
       (.bf_ce_o(bf_ce_o),
        .bram_addr_x0_o(bram_addr_x0_o),
        .bram_addr_x1_o(bram_addr_x1_o),
        .bram_x0_en_o(bram_x0_en_o),
        .bram_x0_we_o(bram_x0_we_o),
        .bram_x1_en_o(bram_x1_en_o),
        .bram_x1_we_o(bram_x1_we_o),
        .busy_o(busy_o),
        .clk(clk),
        .data_counter(data_counter),
        .dl_busy_i(dl_busy_i),
        .fft_ready_o(fft_ready_o),
        .rstn(rstn),
        .src_sel_o(src_sel_o),
        .start_i(start_i),
        .state(state),
        .twiddle_addr_o(twiddle_addr_o));
endmodule

(* CHECK_LICENSE_TYPE = "adder_subtracter32bit,adder_subtracter32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_subtracter32bit" *) (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
module fft_control_unit_2_adder_subtracter32bit
   (x,
    y,
    c_in,
    r,
    v);
  input [31:0]x;
  input [31:0]y;
  input c_in;
  output [31:0]r;
  output v;

  wire \<const0> ;
  wire \inst/add9/s0__0 ;
  wire \inst/c_out_2 ;
  wire \inst/c_out_4 ;
  wire \inst/c_out_6 ;
  wire [9:0]\^r ;
  wire [31:0]x;
  wire [31:0]y;

  assign r[31] = \<const0> ;
  assign r[30] = \<const0> ;
  assign r[29] = \<const0> ;
  assign r[28] = \<const0> ;
  assign r[27] = \<const0> ;
  assign r[26] = \<const0> ;
  assign r[25] = \<const0> ;
  assign r[24] = \<const0> ;
  assign r[23] = \<const0> ;
  assign r[22] = \<const0> ;
  assign r[21] = \<const0> ;
  assign r[20] = \<const0> ;
  assign r[19] = \<const0> ;
  assign r[18] = \<const0> ;
  assign r[17] = \<const0> ;
  assign r[16] = \<const0> ;
  assign r[15] = \<const0> ;
  assign r[14] = \<const0> ;
  assign r[13] = \<const0> ;
  assign r[12] = \<const0> ;
  assign r[11] = \<const0> ;
  assign r[10] = \<const0> ;
  assign r[9:0] = \^r [9:0];
  assign v = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[0]_INST_0 
       (.I0(y[0]),
        .I1(x[0]),
        .O(\^r [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \r[1]_INST_0 
       (.I0(y[0]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(y[1]),
        .O(\^r [1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \r[2]_INST_0 
       (.I0(y[0]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(y[1]),
        .I4(x[2]),
        .I5(y[2]),
        .O(\^r [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \r[3]_INST_0 
       (.I0(\inst/c_out_2 ),
        .I1(x[3]),
        .I2(y[3]),
        .O(\^r [3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[4]_INST_0 
       (.I0(\inst/c_out_2 ),
        .I1(x[3]),
        .I2(y[3]),
        .I3(x[4]),
        .I4(y[4]),
        .O(\^r [4]));
  LUT6 #(
    .INIT(64'hEEE8E888E888E888)) 
    \r[4]_INST_0_i_1 
       (.I0(y[2]),
        .I1(x[2]),
        .I2(y[1]),
        .I3(x[1]),
        .I4(x[0]),
        .I5(y[0]),
        .O(\inst/c_out_2 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r[5]_INST_0 
       (.I0(\inst/c_out_4 ),
        .I1(x[5]),
        .I2(y[5]),
        .O(\^r [5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[6]_INST_0 
       (.I0(\inst/c_out_4 ),
        .I1(x[5]),
        .I2(y[5]),
        .I3(x[6]),
        .I4(y[6]),
        .O(\^r [6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[6]_INST_0_i_1 
       (.I0(y[4]),
        .I1(x[4]),
        .I2(y[3]),
        .I3(x[3]),
        .I4(\inst/c_out_2 ),
        .O(\inst/c_out_4 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \r[7]_INST_0 
       (.I0(\inst/c_out_6 ),
        .I1(x[7]),
        .I2(y[7]),
        .O(\^r [7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[8]_INST_0 
       (.I0(\inst/c_out_6 ),
        .I1(x[7]),
        .I2(y[7]),
        .I3(x[8]),
        .I4(y[8]),
        .O(\^r [8]));
  LUT6 #(
    .INIT(64'h001717FFFFE8E800)) 
    \r[9]_INST_0 
       (.I0(\inst/c_out_6 ),
        .I1(x[7]),
        .I2(y[7]),
        .I3(x[8]),
        .I4(y[8]),
        .I5(\inst/add9/s0__0 ),
        .O(\^r [9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[9]_INST_0_i_1 
       (.I0(y[6]),
        .I1(x[6]),
        .I2(y[5]),
        .I3(x[5]),
        .I4(\inst/c_out_4 ),
        .O(\inst/c_out_6 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r[9]_INST_0_i_2 
       (.I0(y[9]),
        .I1(x[9]),
        .O(\inst/add9/s0__0 ));
endmodule

(* CHECK_LICENSE_TYPE = "adder_subtracter32bit,adder_subtracter32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_subtracter32bit" *) (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
module fft_control_unit_2_adder_subtracter32bit__1
   (x,
    y,
    c_in,
    r,
    v);
  input [31:0]x;
  input [31:0]y;
  input c_in;
  output [31:0]r;
  output v;

  wire \<const0> ;
  wire \inst/c_out_3 ;
  wire \inst/c_out_5 ;
  wire \inst/c_out_7 ;
  wire [9:1]\^r ;
  wire [31:0]x;
  wire [31:0]y;

  assign r[31] = \<const0> ;
  assign r[30] = \<const0> ;
  assign r[29] = \<const0> ;
  assign r[28] = \<const0> ;
  assign r[27] = \<const0> ;
  assign r[26] = \<const0> ;
  assign r[25] = \<const0> ;
  assign r[24] = \<const0> ;
  assign r[23] = \<const0> ;
  assign r[22] = \<const0> ;
  assign r[21] = \<const0> ;
  assign r[20] = \<const0> ;
  assign r[19] = \<const0> ;
  assign r[18] = \<const0> ;
  assign r[17] = \<const0> ;
  assign r[16] = \<const0> ;
  assign r[15] = \<const0> ;
  assign r[14] = \<const0> ;
  assign r[13] = \<const0> ;
  assign r[12] = \<const0> ;
  assign r[11] = \<const0> ;
  assign r[10] = \<const0> ;
  assign r[9:1] = \^r [9:1];
  assign r[0] = y[0];
  assign v = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[1]_INST_0 
       (.I0(y[1]),
        .I1(x[1]),
        .O(\^r [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \r[2]_INST_0 
       (.I0(y[1]),
        .I1(x[1]),
        .I2(x[2]),
        .I3(y[2]),
        .O(\^r [2]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \r[3]_INST_0 
       (.I0(y[1]),
        .I1(x[1]),
        .I2(x[2]),
        .I3(y[2]),
        .I4(x[3]),
        .I5(y[3]),
        .O(\^r [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \r[4]_INST_0 
       (.I0(\inst/c_out_3 ),
        .I1(x[4]),
        .I2(y[4]),
        .O(\^r [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[5]_INST_0 
       (.I0(\inst/c_out_3 ),
        .I1(x[4]),
        .I2(y[4]),
        .I3(x[5]),
        .I4(y[5]),
        .O(\^r [5]));
  LUT6 #(
    .INIT(64'hEEE8E888E888E888)) 
    \r[5]_INST_0_i_1 
       (.I0(y[3]),
        .I1(x[3]),
        .I2(y[2]),
        .I3(x[2]),
        .I4(x[1]),
        .I5(y[1]),
        .O(\inst/c_out_3 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r[6]_INST_0 
       (.I0(\inst/c_out_5 ),
        .I1(x[6]),
        .I2(y[6]),
        .O(\^r [6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[7]_INST_0 
       (.I0(\inst/c_out_5 ),
        .I1(x[6]),
        .I2(y[6]),
        .I3(x[7]),
        .I4(y[7]),
        .O(\^r [7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[7]_INST_0_i_1 
       (.I0(y[5]),
        .I1(x[5]),
        .I2(y[4]),
        .I3(x[4]),
        .I4(\inst/c_out_3 ),
        .O(\inst/c_out_5 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \r[8]_INST_0 
       (.I0(\inst/c_out_7 ),
        .I1(x[8]),
        .I2(y[8]),
        .O(\^r [8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h17E8)) 
    \r[9]_INST_0 
       (.I0(\inst/c_out_7 ),
        .I1(x[8]),
        .I2(y[8]),
        .I3(x[9]),
        .O(\^r [9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[9]_INST_0_i_1 
       (.I0(y[7]),
        .I1(x[7]),
        .I2(y[6]),
        .I3(x[6]),
        .I4(\inst/c_out_5 ),
        .O(\inst/c_out_7 ));
endmodule

(* CHECK_LICENSE_TYPE = "bram_bit_reversed_address,bit_reversed_address,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "bram_bit_reversed_address" *) (* X_CORE_INFO = "bit_reversed_address,Vivado 2021.1" *) 
module fft_control_unit_2_bram_bit_reversed_address
   (index_i,
    reversed_o);
  input [9:0]index_i;
  output [9:0]reversed_o;

  wire [9:0]index_i;

  assign reversed_o[9] = index_i[0];
  assign reversed_o[8] = index_i[1];
  assign reversed_o[7] = index_i[2];
  assign reversed_o[6] = index_i[3];
  assign reversed_o[5] = index_i[4];
  assign reversed_o[4] = index_i[5];
  assign reversed_o[3] = index_i[6];
  assign reversed_o[2] = index_i[7];
  assign reversed_o[1] = index_i[8];
  assign reversed_o[0] = index_i[9];
endmodule

(* BF_OP_CYCLES = "10" *) (* BRAM_SIZE = "1024" *) (* DIV_CYCLES = "4'b1011" *) 
(* FIRST_STAGE = "7" *) (* HALF_N = "512" *) (* N = "1024" *) 
(* ORIG_REF_NAME = "control_unit" *) (* STAGES_NUM = "3" *) (* S_BF_OPERATION = "4'b0101" *) 
(* S_CALC_STAGE_VARS = "4'b0010" *) (* S_CHECK_BF_COUNTER = "4'b0011" *) (* S_CHECK_STAGE = "4'b0111" *) 
(* S_IDLE = "4'b0000" *) (* S_READ_MEMORY = "4'b0100" *) (* S_SEND_RESULTS = "4'b1001" *) 
(* S_STORE_INPUTS = "4'b0001" *) (* S_WAIT_MS = "4'b1000" *) (* S_WRITE_BACK = "4'b0110" *) 
module fft_control_unit_2_control_unit
   (clk,
    rstn,
    start_i,
    dl_busy_i,
    src_sel_o,
    fft_ready_o,
    busy_o,
    bf_ce_o,
    bram_addr_x0_o,
    bram_addr_x1_o,
    bram_x0_we_o,
    bram_x1_we_o,
    bram_x0_en_o,
    bram_x1_en_o,
    twiddle_addr_o,
    state,
    data_counter);
  input clk;
  input rstn;
  input start_i;
  input dl_busy_i;
  output src_sel_o;
  output fft_ready_o;
  output busy_o;
  output bf_ce_o;
  output [9:0]bram_addr_x0_o;
  output [9:0]bram_addr_x1_o;
  output bram_x0_we_o;
  output bram_x1_we_o;
  output bram_x0_en_o;
  output bram_x1_en_o;
  output [8:0]twiddle_addr_o;
  output [3:0]state;
  output [10:0]data_counter;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_2_n_0 ;
  wire \FSM_onehot_state[7]_i_3_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire bf_ce_o;
  wire bf_ce_o_reg_i_1_n_0;
  wire bf_counter;
  wire \bf_counter[0]_i_1_n_0 ;
  wire \bf_counter[1]_i_1_n_0 ;
  wire \bf_counter[2]_i_1_n_0 ;
  wire \bf_counter[3]_i_1_n_0 ;
  wire \bf_counter[4]_i_1_n_0 ;
  wire \bf_counter[5]_i_1_n_0 ;
  wire \bf_counter[5]_i_2_n_0 ;
  wire \bf_counter[6]_i_1_n_0 ;
  wire \bf_counter[7]_i_1_n_0 ;
  wire \bf_counter[8]_i_1_n_0 ;
  wire \bf_counter[9]_i_2_n_0 ;
  wire \bf_counter[9]_i_3_n_0 ;
  wire \bf_counter_reg_n_0_[0] ;
  wire \bf_counter_reg_n_0_[1] ;
  wire \bf_counter_reg_n_0_[2] ;
  wire \bf_counter_reg_n_0_[3] ;
  wire \bf_counter_reg_n_0_[4] ;
  wire \bf_counter_reg_n_0_[5] ;
  wire \bf_counter_reg_n_0_[6] ;
  wire \bf_counter_reg_n_0_[7] ;
  wire \bf_counter_reg_n_0_[8] ;
  wire \bf_counter_reg_n_0_[9] ;
  wire bf_cycle_counter;
  wire \bf_cycle_counter[0]_i_1_n_0 ;
  wire \bf_cycle_counter[1]_i_1_n_0 ;
  wire \bf_cycle_counter[2]_i_1_n_0 ;
  wire \bf_cycle_counter[3]_i_2_n_0 ;
  wire \bf_cycle_counter_reg_n_0_[0] ;
  wire \bf_cycle_counter_reg_n_0_[1] ;
  wire \bf_cycle_counter_reg_n_0_[2] ;
  wire \bf_cycle_counter_reg_n_0_[3] ;
  wire [9:0]bram_addr_x0;
  wire [9:0]bram_addr_x0_o;
  wire \bram_addr_x0_o_reg[0]_i_1_n_0 ;
  wire \bram_addr_x0_o_reg[0]_i_2_n_0 ;
  wire \bram_addr_x0_o_reg[1]_i_1_n_0 ;
  wire \bram_addr_x0_o_reg[1]_i_2_n_0 ;
  wire \bram_addr_x0_o_reg[2]_i_1_n_0 ;
  wire \bram_addr_x0_o_reg[2]_i_2_n_0 ;
  wire \bram_addr_x0_o_reg[3]_i_1_n_0 ;
  wire \bram_addr_x0_o_reg[3]_i_2_n_0 ;
  wire \bram_addr_x0_o_reg[4]_i_1_n_0 ;
  wire \bram_addr_x0_o_reg[4]_i_2_n_0 ;
  wire \bram_addr_x0_o_reg[5]_i_1_n_0 ;
  wire \bram_addr_x0_o_reg[5]_i_2_n_0 ;
  wire \bram_addr_x0_o_reg[6]_i_1_n_0 ;
  wire \bram_addr_x0_o_reg[6]_i_2_n_0 ;
  wire \bram_addr_x0_o_reg[7]_i_1_n_0 ;
  wire \bram_addr_x0_o_reg[7]_i_2_n_0 ;
  wire \bram_addr_x0_o_reg[8]_i_1_n_0 ;
  wire \bram_addr_x0_o_reg[8]_i_2_n_0 ;
  wire \bram_addr_x0_o_reg[9]_i_1_n_0 ;
  wire \bram_addr_x0_o_reg[9]_i_2_n_0 ;
  wire \bram_addr_x0_o_reg[9]_i_3_n_0 ;
  wire [9:0]bram_addr_x1;
  wire [9:0]bram_addr_x1_o;
  wire \bram_addr_x1_o_reg[0]_i_1_n_0 ;
  wire \bram_addr_x1_o_reg[1]_i_1_n_0 ;
  wire \bram_addr_x1_o_reg[2]_i_1_n_0 ;
  wire \bram_addr_x1_o_reg[3]_i_1_n_0 ;
  wire \bram_addr_x1_o_reg[4]_i_1_n_0 ;
  wire \bram_addr_x1_o_reg[5]_i_1_n_0 ;
  wire \bram_addr_x1_o_reg[6]_i_1_n_0 ;
  wire \bram_addr_x1_o_reg[7]_i_1_n_0 ;
  wire \bram_addr_x1_o_reg[8]_i_1_n_0 ;
  wire \bram_addr_x1_o_reg[9]_i_1_n_0 ;
  wire bram_x0_en_o;
  wire bram_x0_en_o_reg_i_1_n_0;
  wire bram_x0_we_o;
  wire bram_x0_we_o_reg_i_1_n_0;
  wire bram_x1_en_o;
  wire bram_x1_we_o;
  wire busy_o;
  wire busy_o_reg_i_1_n_0;
  wire clk;
  wire cycle_delay_i_1_n_0;
  wire cycle_delay_reg_n_0;
  wire [10:0]data_counter;
  wire \data_counter[0]_i_1_n_0 ;
  wire \data_counter[10]_i_1_n_0 ;
  wire \data_counter[10]_i_2_n_0 ;
  wire \data_counter[10]_i_3_n_0 ;
  wire \data_counter[10]_i_4_n_0 ;
  wire \data_counter[1]_i_1_n_0 ;
  wire \data_counter[2]_i_1_n_0 ;
  wire \data_counter[3]_i_1_n_0 ;
  wire \data_counter[4]_i_1_n_0 ;
  wire \data_counter[5]_i_1_n_0 ;
  wire \data_counter[5]_i_2_n_0 ;
  wire \data_counter[6]_i_1_n_0 ;
  wire \data_counter[7]_i_1_n_0 ;
  wire \data_counter[8]_i_1_n_0 ;
  wire \data_counter[9]_i_1_n_0 ;
  wire \data_counter[9]_i_2_n_0 ;
  wire [9:0]data_counter_mux;
  wire [9:0]data_counter_rev;
  wire \div_bf_cycle_counter[0]_i_1_n_0 ;
  wire \div_bf_cycle_counter[1]_i_1_n_0 ;
  wire \div_bf_cycle_counter[2]_i_1_n_0 ;
  wire \div_bf_cycle_counter[3]_i_1_n_0 ;
  wire \div_bf_cycle_counter[3]_i_2_n_0 ;
  wire \div_bf_cycle_counter_reg_n_0_[0] ;
  wire \div_bf_cycle_counter_reg_n_0_[1] ;
  wire \div_bf_cycle_counter_reg_n_0_[2] ;
  wire \div_bf_cycle_counter_reg_n_0_[3] ;
  wire dl_busy_i;
  wire fft_ready_o;
  wire fft_ready_o0;
  wire fft_ready_o_i_2_n_0;
  wire fft_ready_o_i_3_n_0;
  wire [9:0]group_size;
  wire \group_size[0]_i_1_n_0 ;
  wire \group_size[1]_i_1_n_0 ;
  wire \group_size[2]_i_1_n_0 ;
  wire \group_size[3]_i_1_n_0 ;
  wire \group_size[4]_i_1_n_0 ;
  wire \group_size[5]_i_1_n_0 ;
  wire \group_size[6]_i_1_n_0 ;
  wire \group_size[7]_i_1_n_0 ;
  wire \group_size[8]_i_1_n_0 ;
  wire \group_size[9]_i_1_n_0 ;
  wire [9:1]group_start;
  wire \group_start[1]_i_1_n_0 ;
  wire \group_start[2]_i_1_n_0 ;
  wire \group_start[3]_i_1_n_0 ;
  wire \group_start[4]_i_1_n_0 ;
  wire \group_start[5]_i_1_n_0 ;
  wire \group_start[6]_i_1_n_0 ;
  wire \group_start[7]_i_1_n_0 ;
  wire \group_start[8]_i_1_n_0 ;
  wire \group_start[8]_i_2_n_0 ;
  wire \group_start[9]_i_1_n_0 ;
  wire [8:0]local_index;
  wire \local_index[0]_i_1_n_0 ;
  wire \local_index[1]_i_1_n_0 ;
  wire \local_index[2]_i_1_n_0 ;
  wire \local_index[3]_i_1_n_0 ;
  wire \local_index[4]_i_1_n_0 ;
  wire \local_index[5]_i_1_n_0 ;
  wire \local_index[6]_i_1_n_0 ;
  wire \local_index[7]_i_1_n_0 ;
  wire \local_index[8]_i_1_n_0 ;
  wire [8:0]p_0_in;
  wire rstn;
  wire src_sel_o;
  wire src_sel_o_reg_i_1_n_0;
  wire src_sel_o_reg_i_2_n_0;
  wire src_sel_o_reg_i_3_n_0;
  wire stage_counter;
  wire \stage_counter[0]_i_1_n_0 ;
  wire \stage_counter[1]_i_1_n_0 ;
  wire \stage_counter[2]_i_1_n_0 ;
  wire \stage_counter[3]_i_2_n_0 ;
  wire \stage_counter_reg_n_0_[0] ;
  wire \stage_counter_reg_n_0_[1] ;
  wire \stage_counter_reg_n_0_[2] ;
  wire \stage_counter_reg_n_0_[3] ;
  wire [8:0]staged_half_N;
  wire start_div_i_1_n_0;
  wire start_div_i_2_n_0;
  wire start_div_reg_n_0;
  wire start_i;
  wire start_sending;
  wire start_sending__0;
  wire [3:0]state;
  wire twiddle_addr_ad;
  wire \twiddle_addr_ad[3]_i_2_n_0 ;
  wire \twiddle_addr_ad[3]_i_3_n_0 ;
  wire \twiddle_addr_ad[3]_i_4_n_0 ;
  wire \twiddle_addr_ad[3]_i_5_n_0 ;
  wire \twiddle_addr_ad[7]_i_2_n_0 ;
  wire \twiddle_addr_ad[7]_i_3_n_0 ;
  wire \twiddle_addr_ad[7]_i_4_n_0 ;
  wire \twiddle_addr_ad[7]_i_5_n_0 ;
  wire \twiddle_addr_ad[8]_i_2_n_0 ;
  wire [8:0]twiddle_addr_ad__0;
  wire \twiddle_addr_ad_reg[3]_i_1_n_0 ;
  wire \twiddle_addr_ad_reg[3]_i_1_n_1 ;
  wire \twiddle_addr_ad_reg[3]_i_1_n_2 ;
  wire \twiddle_addr_ad_reg[3]_i_1_n_3 ;
  wire \twiddle_addr_ad_reg[7]_i_1_n_0 ;
  wire \twiddle_addr_ad_reg[7]_i_1_n_1 ;
  wire \twiddle_addr_ad_reg[7]_i_1_n_2 ;
  wire \twiddle_addr_ad_reg[7]_i_1_n_3 ;
  wire [8:0]twiddle_addr_o;
  wire \twiddle_addr_o_reg[0]_i_1_n_0 ;
  wire \twiddle_addr_o_reg[1]_i_1_n_0 ;
  wire \twiddle_addr_o_reg[2]_i_1_n_0 ;
  wire \twiddle_addr_o_reg[3]_i_1_n_0 ;
  wire \twiddle_addr_o_reg[4]_i_1_n_0 ;
  wire \twiddle_addr_o_reg[5]_i_1_n_0 ;
  wire \twiddle_addr_o_reg[6]_i_1_n_0 ;
  wire \twiddle_addr_o_reg[7]_i_1_n_0 ;
  wire \twiddle_addr_o_reg[8]_i_1_n_0 ;
  wire \twiddle_addr_o_reg[8]_i_2_n_0 ;
  wire your_instance_name_i_1_n_0;
  wire NLW_bram_addr_x1_adder_v_UNCONNECTED;
  wire [31:10]NLW_bram_addr_x1_adder_r_UNCONNECTED;
  wire NLW_bram_addr_xo_adder_v_UNCONNECTED;
  wire [31:10]NLW_bram_addr_xo_adder_r_UNCONNECTED;
  wire NLW_staged_half_N_div_busy_UNCONNECTED;
  wire NLW_staged_half_N_div_dbz_UNCONNECTED;
  wire NLW_staged_half_N_div_done_UNCONNECTED;
  wire NLW_staged_half_N_div_valid_UNCONNECTED;
  wire [9:0]NLW_staged_half_N_div_rem_UNCONNECTED;
  wire [9:9]NLW_staged_half_N_div_val_UNCONNECTED;
  wire [3:0]\NLW_twiddle_addr_ad_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_twiddle_addr_ad_reg[8]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(start_i),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[6]_i_2_n_0 ),
        .I3(start_sending__0),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start_i),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state[2]_i_3_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state[3]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state[2]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\stage_counter_reg_n_0_[3] ),
        .I1(\stage_counter_reg_n_0_[2] ),
        .I2(\stage_counter_reg_n_0_[0] ),
        .I3(\stage_counter_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(data_counter[9]),
        .I1(data_counter[7]),
        .I2(\data_counter[9]_i_2_n_0 ),
        .I3(data_counter[6]),
        .I4(data_counter[8]),
        .I5(data_counter[10]),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEFFAEAE)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(twiddle_addr_ad),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state[3]_i_2_n_0 ),
        .I3(\FSM_onehot_state[7]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(cycle_delay_reg_n_0),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\div_bf_cycle_counter_reg_n_0_[3] ),
        .I1(\div_bf_cycle_counter_reg_n_0_[2] ),
        .I2(\div_bf_cycle_counter_reg_n_0_[1] ),
        .I3(\div_bf_cycle_counter_reg_n_0_[0] ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(cycle_delay_reg_n_0),
        .I2(\FSM_onehot_state[7]_i_2_n_0 ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF020002000200)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\stage_counter_reg_n_0_[3] ),
        .I1(\stage_counter_reg_n_0_[2] ),
        .I2(\FSM_onehot_state[5]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(dl_busy_i),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\stage_counter_reg_n_0_[1] ),
        .I1(\stage_counter_reg_n_0_[0] ),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(dl_busy_i),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(start_sending__0),
        .I3(\FSM_onehot_state[6]_i_2_n_0 ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(data_counter[3]),
        .I1(data_counter[2]),
        .I2(data_counter[5]),
        .I3(data_counter[4]),
        .I4(fft_ready_o_i_3_n_0),
        .I5(data_counter[10]),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state[7]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[7]_i_2 
       (.I0(\FSM_onehot_state[7]_i_3_n_0 ),
        .I1(\bf_counter_reg_n_0_[4] ),
        .I2(\bf_counter_reg_n_0_[5] ),
        .I3(\bf_counter_reg_n_0_[2] ),
        .I4(\bf_counter_reg_n_0_[3] ),
        .O(\FSM_onehot_state[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \FSM_onehot_state[7]_i_3 
       (.I0(\bf_counter_reg_n_0_[8] ),
        .I1(\bf_counter_reg_n_0_[9] ),
        .I2(\bf_counter_reg_n_0_[6] ),
        .I3(\bf_counter_reg_n_0_[7] ),
        .I4(\bf_counter_reg_n_0_[1] ),
        .I5(\bf_counter_reg_n_0_[0] ),
        .O(\FSM_onehot_state[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAA2AA)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\bf_cycle_counter_reg_n_0_[1] ),
        .I2(\bf_cycle_counter_reg_n_0_[0] ),
        .I3(\bf_cycle_counter_reg_n_0_[3] ),
        .I4(\bf_cycle_counter_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(\data_counter[10]_i_3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(start_sending__0));
  (* FSM_ENCODED_STATES = "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(bf_ce_o_reg_i_1_n_0),
        .Q(twiddle_addr_ad));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    bf_ce_o_reg
       (.CLR(1'b0),
        .D(bf_ce_o_reg_i_1_n_0),
        .G(src_sel_o_reg_i_2_n_0),
        .GE(1'b1),
        .Q(bf_ce_o));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    bf_ce_o_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\bf_cycle_counter_reg_n_0_[2] ),
        .I2(\bf_cycle_counter_reg_n_0_[3] ),
        .I3(\bf_cycle_counter_reg_n_0_[0] ),
        .I4(\bf_cycle_counter_reg_n_0_[1] ),
        .O(bf_ce_o_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bf_counter[0]_i_1 
       (.I0(twiddle_addr_ad),
        .I1(\bf_counter_reg_n_0_[0] ),
        .O(\bf_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \bf_counter[1]_i_1 
       (.I0(\bf_counter_reg_n_0_[0] ),
        .I1(twiddle_addr_ad),
        .I2(\bf_counter_reg_n_0_[1] ),
        .O(\bf_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bf_counter[2]_i_1 
       (.I0(\bf_counter_reg_n_0_[0] ),
        .I1(\bf_counter_reg_n_0_[1] ),
        .I2(twiddle_addr_ad),
        .I3(\bf_counter_reg_n_0_[2] ),
        .O(\bf_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bf_counter[3]_i_1 
       (.I0(\bf_counter_reg_n_0_[1] ),
        .I1(\bf_counter_reg_n_0_[0] ),
        .I2(\bf_counter_reg_n_0_[2] ),
        .I3(twiddle_addr_ad),
        .I4(\bf_counter_reg_n_0_[3] ),
        .O(\bf_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bf_counter[4]_i_1 
       (.I0(\bf_counter_reg_n_0_[2] ),
        .I1(\bf_counter_reg_n_0_[0] ),
        .I2(\bf_counter_reg_n_0_[1] ),
        .I3(\bf_counter_reg_n_0_[3] ),
        .I4(twiddle_addr_ad),
        .I5(\bf_counter_reg_n_0_[4] ),
        .O(\bf_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \bf_counter[5]_i_1 
       (.I0(\bf_counter[5]_i_2_n_0 ),
        .I1(twiddle_addr_ad),
        .I2(\bf_counter_reg_n_0_[5] ),
        .O(\bf_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bf_counter[5]_i_2 
       (.I0(\bf_counter_reg_n_0_[3] ),
        .I1(\bf_counter_reg_n_0_[1] ),
        .I2(\bf_counter_reg_n_0_[0] ),
        .I3(\bf_counter_reg_n_0_[2] ),
        .I4(\bf_counter_reg_n_0_[4] ),
        .O(\bf_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \bf_counter[6]_i_1 
       (.I0(\bf_counter[9]_i_3_n_0 ),
        .I1(twiddle_addr_ad),
        .I2(\bf_counter_reg_n_0_[6] ),
        .O(\bf_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \bf_counter[7]_i_1 
       (.I0(\bf_counter[9]_i_3_n_0 ),
        .I1(\bf_counter_reg_n_0_[6] ),
        .I2(twiddle_addr_ad),
        .I3(\bf_counter_reg_n_0_[7] ),
        .O(\bf_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hDF002000)) 
    \bf_counter[8]_i_1 
       (.I0(\bf_counter_reg_n_0_[6] ),
        .I1(\bf_counter[9]_i_3_n_0 ),
        .I2(\bf_counter_reg_n_0_[7] ),
        .I3(twiddle_addr_ad),
        .I4(\bf_counter_reg_n_0_[8] ),
        .O(\bf_counter[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bf_counter[9]_i_1 
       (.I0(start_sending__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(twiddle_addr_ad),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(bf_counter));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \bf_counter[9]_i_2 
       (.I0(\bf_counter_reg_n_0_[8] ),
        .I1(\bf_counter_reg_n_0_[6] ),
        .I2(\bf_counter[9]_i_3_n_0 ),
        .I3(\bf_counter_reg_n_0_[7] ),
        .I4(twiddle_addr_ad),
        .I5(\bf_counter_reg_n_0_[9] ),
        .O(\bf_counter[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bf_counter[9]_i_3 
       (.I0(\bf_counter_reg_n_0_[4] ),
        .I1(\bf_counter_reg_n_0_[2] ),
        .I2(\bf_counter_reg_n_0_[0] ),
        .I3(\bf_counter_reg_n_0_[1] ),
        .I4(\bf_counter_reg_n_0_[3] ),
        .I5(\bf_counter_reg_n_0_[5] ),
        .O(\bf_counter[9]_i_3_n_0 ));
  FDCE \bf_counter_reg[0] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_counter[0]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[0] ));
  FDCE \bf_counter_reg[1] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_counter[1]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[1] ));
  FDCE \bf_counter_reg[2] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_counter[2]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[2] ));
  FDCE \bf_counter_reg[3] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_counter[3]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[3] ));
  FDCE \bf_counter_reg[4] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_counter[4]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[4] ));
  FDCE \bf_counter_reg[5] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_counter[5]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[5] ));
  FDCE \bf_counter_reg[6] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_counter[6]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[6] ));
  FDCE \bf_counter_reg[7] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_counter[7]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[7] ));
  FDCE \bf_counter_reg[8] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_counter[8]_i_1_n_0 ),
        .Q(\bf_counter_reg_n_0_[8] ));
  FDCE \bf_counter_reg[9] 
       (.C(clk),
        .CE(bf_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_counter[9]_i_2_n_0 ),
        .Q(\bf_counter_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bf_cycle_counter[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\bf_cycle_counter_reg_n_0_[0] ),
        .O(\bf_cycle_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bf_cycle_counter[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\bf_cycle_counter_reg_n_0_[0] ),
        .I2(\bf_cycle_counter_reg_n_0_[1] ),
        .O(\bf_cycle_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bf_cycle_counter[2]_i_1 
       (.I0(\bf_cycle_counter_reg_n_0_[0] ),
        .I1(\bf_cycle_counter_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\bf_cycle_counter_reg_n_0_[2] ),
        .O(\bf_cycle_counter[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bf_cycle_counter[3]_i_1 
       (.I0(twiddle_addr_ad),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(bf_cycle_counter));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bf_cycle_counter[3]_i_2 
       (.I0(\bf_cycle_counter_reg_n_0_[2] ),
        .I1(\bf_cycle_counter_reg_n_0_[0] ),
        .I2(\bf_cycle_counter_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\bf_cycle_counter_reg_n_0_[3] ),
        .O(\bf_cycle_counter[3]_i_2_n_0 ));
  FDCE \bf_cycle_counter_reg[0] 
       (.C(clk),
        .CE(bf_cycle_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_cycle_counter[0]_i_1_n_0 ),
        .Q(\bf_cycle_counter_reg_n_0_[0] ));
  FDCE \bf_cycle_counter_reg[1] 
       (.C(clk),
        .CE(bf_cycle_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_cycle_counter[1]_i_1_n_0 ),
        .Q(\bf_cycle_counter_reg_n_0_[1] ));
  FDCE \bf_cycle_counter_reg[2] 
       (.C(clk),
        .CE(bf_cycle_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_cycle_counter[2]_i_1_n_0 ),
        .Q(\bf_cycle_counter_reg_n_0_[2] ));
  FDCE \bf_cycle_counter_reg[3] 
       (.C(clk),
        .CE(bf_cycle_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\bf_cycle_counter[3]_i_2_n_0 ),
        .Q(\bf_cycle_counter_reg_n_0_[3] ));
  (* CHECK_LICENSE_TYPE = "bram_bit_reversed_address,bit_reversed_address,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "bit_reversed_address,Vivado 2021.1" *) 
  fft_control_unit_2_bram_bit_reversed_address bit_reversed_data_counter
       (.index_i(data_counter[9:0]),
        .reversed_o(data_counter_rev));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x0_o_reg[0] 
       (.CLR(1'b0),
        .D(\bram_addr_x0_o_reg[0]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x0_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr_x0_o_reg[0]_i_1 
       (.I0(\bram_addr_x0_o_reg[0]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_addr_x0_o_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr_x0_o_reg[0]_i_2 
       (.I0(bram_addr_x0[0]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(data_counter[0]),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data_counter_mux[0]),
        .O(\bram_addr_x0_o_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x0_o_reg[1] 
       (.CLR(1'b0),
        .D(\bram_addr_x0_o_reg[1]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x0_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr_x0_o_reg[1]_i_1 
       (.I0(\bram_addr_x0_o_reg[1]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_addr_x0_o_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr_x0_o_reg[1]_i_2 
       (.I0(bram_addr_x0[1]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(data_counter[1]),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data_counter_mux[1]),
        .O(\bram_addr_x0_o_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x0_o_reg[2] 
       (.CLR(1'b0),
        .D(\bram_addr_x0_o_reg[2]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x0_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr_x0_o_reg[2]_i_1 
       (.I0(\bram_addr_x0_o_reg[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_addr_x0_o_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr_x0_o_reg[2]_i_2 
       (.I0(bram_addr_x0[2]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(data_counter[2]),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data_counter_mux[2]),
        .O(\bram_addr_x0_o_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x0_o_reg[3] 
       (.CLR(1'b0),
        .D(\bram_addr_x0_o_reg[3]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x0_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr_x0_o_reg[3]_i_1 
       (.I0(\bram_addr_x0_o_reg[3]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_addr_x0_o_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr_x0_o_reg[3]_i_2 
       (.I0(bram_addr_x0[3]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(data_counter[3]),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data_counter_mux[3]),
        .O(\bram_addr_x0_o_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x0_o_reg[4] 
       (.CLR(1'b0),
        .D(\bram_addr_x0_o_reg[4]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x0_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr_x0_o_reg[4]_i_1 
       (.I0(\bram_addr_x0_o_reg[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_addr_x0_o_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr_x0_o_reg[4]_i_2 
       (.I0(bram_addr_x0[4]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(data_counter[4]),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data_counter_mux[4]),
        .O(\bram_addr_x0_o_reg[4]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x0_o_reg[5] 
       (.CLR(1'b0),
        .D(\bram_addr_x0_o_reg[5]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x0_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr_x0_o_reg[5]_i_1 
       (.I0(\bram_addr_x0_o_reg[5]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_addr_x0_o_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr_x0_o_reg[5]_i_2 
       (.I0(bram_addr_x0[5]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(data_counter[5]),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data_counter_mux[5]),
        .O(\bram_addr_x0_o_reg[5]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x0_o_reg[6] 
       (.CLR(1'b0),
        .D(\bram_addr_x0_o_reg[6]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x0_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr_x0_o_reg[6]_i_1 
       (.I0(\bram_addr_x0_o_reg[6]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_addr_x0_o_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr_x0_o_reg[6]_i_2 
       (.I0(bram_addr_x0[6]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(data_counter[6]),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data_counter_mux[6]),
        .O(\bram_addr_x0_o_reg[6]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x0_o_reg[7] 
       (.CLR(1'b0),
        .D(\bram_addr_x0_o_reg[7]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x0_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr_x0_o_reg[7]_i_1 
       (.I0(\bram_addr_x0_o_reg[7]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_addr_x0_o_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr_x0_o_reg[7]_i_2 
       (.I0(bram_addr_x0[7]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(data_counter[7]),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data_counter_mux[7]),
        .O(\bram_addr_x0_o_reg[7]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x0_o_reg[8] 
       (.CLR(1'b0),
        .D(\bram_addr_x0_o_reg[8]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x0_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr_x0_o_reg[8]_i_1 
       (.I0(\bram_addr_x0_o_reg[8]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_addr_x0_o_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr_x0_o_reg[8]_i_2 
       (.I0(bram_addr_x0[8]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(data_counter[8]),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data_counter_mux[8]),
        .O(\bram_addr_x0_o_reg[8]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x0_o_reg[9] 
       (.CLR(1'b0),
        .D(\bram_addr_x0_o_reg[9]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x0_o[9]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr_x0_o_reg[9]_i_1 
       (.I0(\bram_addr_x0_o_reg[9]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_addr_x0_o_reg[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bram_addr_x0_o_reg[9]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(src_sel_o_reg_i_3_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bram_addr_x0_o_reg[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr_x0_o_reg[9]_i_3 
       (.I0(bram_addr_x0[9]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(data_counter[9]),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data_counter_mux[9]),
        .O(\bram_addr_x0_o_reg[9]_i_3_n_0 ));
  (* CHECK_LICENSE_TYPE = "adder_subtracter32bit,adder_subtracter32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
  fft_control_unit_2_adder_subtracter32bit bram_addr_x1_adder
       (.c_in(1'b0),
        .r({NLW_bram_addr_x1_adder_r_UNCONNECTED[31:10],bram_addr_x1}),
        .v(NLW_bram_addr_x1_adder_v_UNCONNECTED),
        .x({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_addr_x0}),
        .y({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,group_size}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x1_o_reg[0] 
       (.CLR(1'b0),
        .D(\bram_addr_x1_o_reg[0]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x1_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr_x1_o_reg[0]_i_1 
       (.I0(bram_addr_x1[0]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\bram_addr_x1_o_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x1_o_reg[1] 
       (.CLR(1'b0),
        .D(\bram_addr_x1_o_reg[1]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x1_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr_x1_o_reg[1]_i_1 
       (.I0(bram_addr_x1[1]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\bram_addr_x1_o_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x1_o_reg[2] 
       (.CLR(1'b0),
        .D(\bram_addr_x1_o_reg[2]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x1_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr_x1_o_reg[2]_i_1 
       (.I0(bram_addr_x1[2]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\bram_addr_x1_o_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x1_o_reg[3] 
       (.CLR(1'b0),
        .D(\bram_addr_x1_o_reg[3]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x1_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr_x1_o_reg[3]_i_1 
       (.I0(bram_addr_x1[3]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\bram_addr_x1_o_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x1_o_reg[4] 
       (.CLR(1'b0),
        .D(\bram_addr_x1_o_reg[4]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x1_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr_x1_o_reg[4]_i_1 
       (.I0(bram_addr_x1[4]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\bram_addr_x1_o_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x1_o_reg[5] 
       (.CLR(1'b0),
        .D(\bram_addr_x1_o_reg[5]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x1_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr_x1_o_reg[5]_i_1 
       (.I0(bram_addr_x1[5]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\bram_addr_x1_o_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x1_o_reg[6] 
       (.CLR(1'b0),
        .D(\bram_addr_x1_o_reg[6]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x1_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr_x1_o_reg[6]_i_1 
       (.I0(bram_addr_x1[6]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\bram_addr_x1_o_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x1_o_reg[7] 
       (.CLR(1'b0),
        .D(\bram_addr_x1_o_reg[7]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x1_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr_x1_o_reg[7]_i_1 
       (.I0(bram_addr_x1[7]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\bram_addr_x1_o_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x1_o_reg[8] 
       (.CLR(1'b0),
        .D(\bram_addr_x1_o_reg[8]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x1_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr_x1_o_reg[8]_i_1 
       (.I0(bram_addr_x1[8]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\bram_addr_x1_o_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bram_addr_x1_o_reg[9] 
       (.CLR(1'b0),
        .D(\bram_addr_x1_o_reg[9]_i_1_n_0 ),
        .G(\bram_addr_x0_o_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(bram_addr_x1_o[9]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr_x1_o_reg[9]_i_1 
       (.I0(bram_addr_x1[9]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\bram_addr_x1_o_reg[9]_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "adder_subtracter32bit,adder_subtracter32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
  fft_control_unit_2_adder_subtracter32bit__1 bram_addr_xo_adder
       (.c_in(1'b0),
        .r({NLW_bram_addr_xo_adder_r_UNCONNECTED[31:10],bram_addr_x0}),
        .v(NLW_bram_addr_xo_adder_v_UNCONNECTED),
        .x({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,group_start,1'b0}),
        .y({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,local_index}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    bram_x0_en_o_reg
       (.CLR(1'b0),
        .D(bram_x0_en_o_reg_i_1_n_0),
        .G(src_sel_o_reg_i_2_n_0),
        .GE(1'b1),
        .Q(bram_x0_en_o));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    bram_x0_en_o_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(twiddle_addr_ad),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(start_sending__0),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(bram_x0_en_o_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    bram_x0_we_o_reg
       (.CLR(1'b0),
        .D(bram_x0_we_o_reg_i_1_n_0),
        .G(src_sel_o_reg_i_2_n_0),
        .GE(1'b1),
        .Q(bram_x0_we_o));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    bram_x0_we_o_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(twiddle_addr_ad),
        .O(bram_x0_we_o_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    bram_x1_en_o_reg
       (.CLR(1'b0),
        .D(state[2]),
        .G(src_sel_o_reg_i_2_n_0),
        .GE(1'b1),
        .Q(bram_x1_en_o));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    bram_x1_we_o_reg
       (.CLR(1'b0),
        .D(twiddle_addr_ad),
        .G(src_sel_o_reg_i_2_n_0),
        .GE(1'b1),
        .Q(bram_x1_we_o));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    busy_o_reg
       (.CLR(1'b0),
        .D(busy_o_reg_i_1_n_0),
        .G(src_sel_o_reg_i_2_n_0),
        .GE(1'b1),
        .Q(busy_o));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    busy_o_reg_i_1
       (.I0(state[2]),
        .I1(start_sending__0),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(busy_o_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h01F0)) 
    cycle_delay_i_1
       (.I0(start_sending__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(cycle_delay_reg_n_0),
        .O(cycle_delay_i_1_n_0));
  FDCE cycle_delay_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(cycle_delay_i_1_n_0),
        .Q(cycle_delay_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_counter[0]_i_1 
       (.I0(start_sending__0),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(data_counter[0]),
        .O(\data_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_counter[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\data_counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hD2D2D200)) 
    \data_counter[10]_i_2 
       (.I0(data_counter[9]),
        .I1(\data_counter[10]_i_4_n_0 ),
        .I2(data_counter[10]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(start_sending__0),
        .O(\data_counter[10]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_counter[10]_i_3 
       (.I0(rstn),
        .O(\data_counter[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \data_counter[10]_i_4 
       (.I0(data_counter[7]),
        .I1(\data_counter[9]_i_2_n_0 ),
        .I2(data_counter[6]),
        .I3(data_counter[8]),
        .O(\data_counter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \data_counter[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(start_sending__0),
        .I2(data_counter[0]),
        .I3(data_counter[1]),
        .O(\data_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h77708880)) 
    \data_counter[2]_i_1 
       (.I0(data_counter[0]),
        .I1(data_counter[1]),
        .I2(start_sending__0),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(data_counter[2]),
        .O(\data_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7F0080808000)) 
    \data_counter[3]_i_1 
       (.I0(data_counter[1]),
        .I1(data_counter[0]),
        .I2(data_counter[2]),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data_counter[3]),
        .O(\data_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \data_counter[4]_i_1 
       (.I0(data_counter[2]),
        .I1(data_counter[0]),
        .I2(data_counter[1]),
        .I3(data_counter[3]),
        .I4(src_sel_o_reg_i_3_n_0),
        .I5(data_counter[4]),
        .O(\data_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hA854)) 
    \data_counter[5]_i_1 
       (.I0(\data_counter[5]_i_2_n_0 ),
        .I1(start_sending__0),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(data_counter[5]),
        .O(\data_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \data_counter[5]_i_2 
       (.I0(data_counter[3]),
        .I1(data_counter[1]),
        .I2(data_counter[0]),
        .I3(data_counter[2]),
        .I4(data_counter[4]),
        .O(\data_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hA854)) 
    \data_counter[6]_i_1 
       (.I0(\data_counter[9]_i_2_n_0 ),
        .I1(start_sending__0),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(data_counter[6]),
        .O(\data_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hBBB04440)) 
    \data_counter[7]_i_1 
       (.I0(\data_counter[9]_i_2_n_0 ),
        .I1(data_counter[6]),
        .I2(start_sending__0),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(data_counter[7]),
        .O(\data_counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDF0020202000)) 
    \data_counter[8]_i_1 
       (.I0(data_counter[6]),
        .I1(\data_counter[9]_i_2_n_0 ),
        .I2(data_counter[7]),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data_counter[8]),
        .O(\data_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF000020000000)) 
    \data_counter[9]_i_1 
       (.I0(data_counter[7]),
        .I1(\data_counter[9]_i_2_n_0 ),
        .I2(data_counter[6]),
        .I3(data_counter[8]),
        .I4(src_sel_o_reg_i_3_n_0),
        .I5(data_counter[9]),
        .O(\data_counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \data_counter[9]_i_2 
       (.I0(data_counter[4]),
        .I1(data_counter[2]),
        .I2(data_counter[0]),
        .I3(data_counter[1]),
        .I4(data_counter[3]),
        .I5(data_counter[5]),
        .O(\data_counter[9]_i_2_n_0 ));
  FDCE \data_counter_reg[0] 
       (.C(clk),
        .CE(\data_counter[10]_i_1_n_0 ),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\data_counter[0]_i_1_n_0 ),
        .Q(data_counter[0]));
  FDCE \data_counter_reg[10] 
       (.C(clk),
        .CE(\data_counter[10]_i_1_n_0 ),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\data_counter[10]_i_2_n_0 ),
        .Q(data_counter[10]));
  FDCE \data_counter_reg[1] 
       (.C(clk),
        .CE(\data_counter[10]_i_1_n_0 ),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\data_counter[1]_i_1_n_0 ),
        .Q(data_counter[1]));
  FDCE \data_counter_reg[2] 
       (.C(clk),
        .CE(\data_counter[10]_i_1_n_0 ),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\data_counter[2]_i_1_n_0 ),
        .Q(data_counter[2]));
  FDCE \data_counter_reg[3] 
       (.C(clk),
        .CE(\data_counter[10]_i_1_n_0 ),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\data_counter[3]_i_1_n_0 ),
        .Q(data_counter[3]));
  FDCE \data_counter_reg[4] 
       (.C(clk),
        .CE(\data_counter[10]_i_1_n_0 ),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\data_counter[4]_i_1_n_0 ),
        .Q(data_counter[4]));
  FDCE \data_counter_reg[5] 
       (.C(clk),
        .CE(\data_counter[10]_i_1_n_0 ),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\data_counter[5]_i_1_n_0 ),
        .Q(data_counter[5]));
  FDCE \data_counter_reg[6] 
       (.C(clk),
        .CE(\data_counter[10]_i_1_n_0 ),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\data_counter[6]_i_1_n_0 ),
        .Q(data_counter[6]));
  FDCE \data_counter_reg[7] 
       (.C(clk),
        .CE(\data_counter[10]_i_1_n_0 ),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\data_counter[7]_i_1_n_0 ),
        .Q(data_counter[7]));
  FDCE \data_counter_reg[8] 
       (.C(clk),
        .CE(\data_counter[10]_i_1_n_0 ),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\data_counter[8]_i_1_n_0 ),
        .Q(data_counter[8]));
  FDCE \data_counter_reg[9] 
       (.C(clk),
        .CE(\data_counter[10]_i_1_n_0 ),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\data_counter[9]_i_1_n_0 ),
        .Q(data_counter[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \div_bf_cycle_counter[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\div_bf_cycle_counter_reg_n_0_[0] ),
        .O(\div_bf_cycle_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \div_bf_cycle_counter[1]_i_1 
       (.I0(\div_bf_cycle_counter_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\div_bf_cycle_counter_reg_n_0_[1] ),
        .O(\div_bf_cycle_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \div_bf_cycle_counter[2]_i_1 
       (.I0(\div_bf_cycle_counter_reg_n_0_[0] ),
        .I1(\div_bf_cycle_counter_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\div_bf_cycle_counter_reg_n_0_[2] ),
        .O(\div_bf_cycle_counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \div_bf_cycle_counter[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(rstn),
        .O(\div_bf_cycle_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \div_bf_cycle_counter[3]_i_2 
       (.I0(\div_bf_cycle_counter_reg_n_0_[2] ),
        .I1(\div_bf_cycle_counter_reg_n_0_[0] ),
        .I2(\div_bf_cycle_counter_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\div_bf_cycle_counter_reg_n_0_[3] ),
        .O(\div_bf_cycle_counter[3]_i_2_n_0 ));
  FDRE \div_bf_cycle_counter_reg[0] 
       (.C(clk),
        .CE(\div_bf_cycle_counter[3]_i_1_n_0 ),
        .D(\div_bf_cycle_counter[0]_i_1_n_0 ),
        .Q(\div_bf_cycle_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \div_bf_cycle_counter_reg[1] 
       (.C(clk),
        .CE(\div_bf_cycle_counter[3]_i_1_n_0 ),
        .D(\div_bf_cycle_counter[1]_i_1_n_0 ),
        .Q(\div_bf_cycle_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \div_bf_cycle_counter_reg[2] 
       (.C(clk),
        .CE(\div_bf_cycle_counter[3]_i_1_n_0 ),
        .D(\div_bf_cycle_counter[2]_i_1_n_0 ),
        .Q(\div_bf_cycle_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \div_bf_cycle_counter_reg[3] 
       (.C(clk),
        .CE(\div_bf_cycle_counter[3]_i_1_n_0 ),
        .D(\div_bf_cycle_counter[3]_i_2_n_0 ),
        .Q(\div_bf_cycle_counter_reg_n_0_[3] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE0)) 
    fft_ready_o_i_1
       (.I0(fft_ready_o_i_2_n_0),
        .I1(data_counter[10]),
        .I2(start_sending),
        .O(fft_ready_o0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    fft_ready_o_i_2
       (.I0(fft_ready_o_i_3_n_0),
        .I1(data_counter[4]),
        .I2(data_counter[5]),
        .I3(data_counter[2]),
        .I4(data_counter[3]),
        .O(fft_ready_o_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    fft_ready_o_i_3
       (.I0(data_counter[8]),
        .I1(data_counter[9]),
        .I2(data_counter[6]),
        .I3(data_counter[7]),
        .I4(data_counter[1]),
        .I5(data_counter[0]),
        .O(fft_ready_o_i_3_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    fft_ready_o_reg
       (.C(clk),
        .CE(1'b1),
        .D(fft_ready_o0),
        .Q(fft_ready_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \group_size[0]_i_1 
       (.I0(\stage_counter_reg_n_0_[2] ),
        .I1(\stage_counter_reg_n_0_[3] ),
        .I2(\stage_counter_reg_n_0_[0] ),
        .I3(\stage_counter_reg_n_0_[1] ),
        .O(\group_size[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \group_size[1]_i_1 
       (.I0(\stage_counter_reg_n_0_[0] ),
        .I1(\stage_counter_reg_n_0_[1] ),
        .I2(\stage_counter_reg_n_0_[3] ),
        .I3(\stage_counter_reg_n_0_[2] ),
        .O(\group_size[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \group_size[2]_i_1 
       (.I0(\stage_counter_reg_n_0_[0] ),
        .I1(\stage_counter_reg_n_0_[1] ),
        .I2(\stage_counter_reg_n_0_[3] ),
        .I3(\stage_counter_reg_n_0_[2] ),
        .O(\group_size[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \group_size[3]_i_1 
       (.I0(\stage_counter_reg_n_0_[1] ),
        .I1(\stage_counter_reg_n_0_[0] ),
        .I2(\stage_counter_reg_n_0_[3] ),
        .I3(\stage_counter_reg_n_0_[2] ),
        .O(\group_size[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \group_size[4]_i_1 
       (.I0(\stage_counter_reg_n_0_[3] ),
        .I1(\stage_counter_reg_n_0_[2] ),
        .I2(\stage_counter_reg_n_0_[1] ),
        .I3(\stage_counter_reg_n_0_[0] ),
        .O(\group_size[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \group_size[5]_i_1 
       (.I0(\stage_counter_reg_n_0_[3] ),
        .I1(\stage_counter_reg_n_0_[2] ),
        .I2(\stage_counter_reg_n_0_[0] ),
        .I3(\stage_counter_reg_n_0_[1] ),
        .O(\group_size[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \group_size[6]_i_1 
       (.I0(\stage_counter_reg_n_0_[0] ),
        .I1(\stage_counter_reg_n_0_[1] ),
        .I2(\stage_counter_reg_n_0_[3] ),
        .I3(\stage_counter_reg_n_0_[2] ),
        .O(\group_size[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \group_size[7]_i_1 
       (.I0(\stage_counter_reg_n_0_[3] ),
        .I1(\stage_counter_reg_n_0_[2] ),
        .I2(\stage_counter_reg_n_0_[1] ),
        .I3(\stage_counter_reg_n_0_[0] ),
        .O(\group_size[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \group_size[8]_i_1 
       (.I0(\stage_counter_reg_n_0_[3] ),
        .I1(\stage_counter_reg_n_0_[2] ),
        .I2(\stage_counter_reg_n_0_[1] ),
        .I3(\stage_counter_reg_n_0_[0] ),
        .O(\group_size[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \group_size[9]_i_1 
       (.I0(\stage_counter_reg_n_0_[1] ),
        .I1(\stage_counter_reg_n_0_[0] ),
        .I2(\stage_counter_reg_n_0_[2] ),
        .I3(\stage_counter_reg_n_0_[3] ),
        .O(\group_size[9]_i_1_n_0 ));
  FDCE \group_size_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_size[0]_i_1_n_0 ),
        .Q(group_size[0]));
  FDCE \group_size_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_size[1]_i_1_n_0 ),
        .Q(group_size[1]));
  FDCE \group_size_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_size[2]_i_1_n_0 ),
        .Q(group_size[2]));
  FDCE \group_size_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_size[3]_i_1_n_0 ),
        .Q(group_size[3]));
  FDCE \group_size_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_size[4]_i_1_n_0 ),
        .Q(group_size[4]));
  FDCE \group_size_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_size[5]_i_1_n_0 ),
        .Q(group_size[5]));
  FDCE \group_size_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_size[6]_i_1_n_0 ),
        .Q(group_size[6]));
  FDCE \group_size_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_size[7]_i_1_n_0 ),
        .Q(group_size[7]));
  FDCE \group_size_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_size[8]_i_1_n_0 ),
        .Q(group_size[8]));
  FDCE \group_size_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_size[9]_i_1_n_0 ),
        .Q(group_size[9]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \group_start[1]_i_1 
       (.I0(\bf_counter_reg_n_0_[0] ),
        .I1(\stage_counter_reg_n_0_[2] ),
        .I2(\stage_counter_reg_n_0_[3] ),
        .I3(\stage_counter_reg_n_0_[0] ),
        .I4(\stage_counter_reg_n_0_[1] ),
        .O(\group_start[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \group_start[2]_i_1 
       (.I0(\bf_counter_reg_n_0_[1] ),
        .I1(\stage_counter_reg_n_0_[1] ),
        .I2(\stage_counter_reg_n_0_[2] ),
        .I3(\stage_counter_reg_n_0_[3] ),
        .O(\group_start[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h0000002A)) 
    \group_start[3]_i_1 
       (.I0(\bf_counter_reg_n_0_[2] ),
        .I1(\stage_counter_reg_n_0_[0] ),
        .I2(\stage_counter_reg_n_0_[1] ),
        .I3(\stage_counter_reg_n_0_[2] ),
        .I4(\stage_counter_reg_n_0_[3] ),
        .O(\group_start[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \group_start[4]_i_1 
       (.I0(\bf_counter_reg_n_0_[3] ),
        .I1(\stage_counter_reg_n_0_[3] ),
        .I2(\stage_counter_reg_n_0_[2] ),
        .O(\group_start[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h001F0000)) 
    \group_start[5]_i_1 
       (.I0(\stage_counter_reg_n_0_[0] ),
        .I1(\stage_counter_reg_n_0_[1] ),
        .I2(\stage_counter_reg_n_0_[2] ),
        .I3(\stage_counter_reg_n_0_[3] ),
        .I4(\bf_counter_reg_n_0_[4] ),
        .O(\group_start[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0700)) 
    \group_start[6]_i_1 
       (.I0(\stage_counter_reg_n_0_[1] ),
        .I1(\stage_counter_reg_n_0_[2] ),
        .I2(\stage_counter_reg_n_0_[3] ),
        .I3(\bf_counter_reg_n_0_[5] ),
        .O(\group_start[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h007F0000)) 
    \group_start[7]_i_1 
       (.I0(\stage_counter_reg_n_0_[0] ),
        .I1(\stage_counter_reg_n_0_[1] ),
        .I2(\stage_counter_reg_n_0_[2] ),
        .I3(\stage_counter_reg_n_0_[3] ),
        .I4(\bf_counter_reg_n_0_[6] ),
        .O(\group_start[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2333333320000000)) 
    \group_start[8]_i_1 
       (.I0(\group_start[8]_i_2_n_0 ),
        .I1(\stage_counter_reg_n_0_[3] ),
        .I2(\stage_counter_reg_n_0_[1] ),
        .I3(\stage_counter_reg_n_0_[2] ),
        .I4(\stage_counter_reg_n_0_[0] ),
        .I5(\bf_counter_reg_n_0_[7] ),
        .O(\group_start[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \group_start[8]_i_2 
       (.I0(\bf_counter_reg_n_0_[7] ),
        .I1(\bf_counter_reg_n_0_[3] ),
        .I2(\stage_counter_reg_n_0_[1] ),
        .I3(\bf_counter_reg_n_0_[5] ),
        .I4(\stage_counter_reg_n_0_[2] ),
        .I5(\bf_counter_reg_n_0_[1] ),
        .O(\group_start[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h55570000)) 
    \group_start[9]_i_1 
       (.I0(\stage_counter_reg_n_0_[3] ),
        .I1(\stage_counter_reg_n_0_[1] ),
        .I2(\stage_counter_reg_n_0_[0] ),
        .I3(\stage_counter_reg_n_0_[2] ),
        .I4(\bf_counter_reg_n_0_[8] ),
        .O(\group_start[9]_i_1_n_0 ));
  FDCE \group_start_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_start[1]_i_1_n_0 ),
        .Q(group_start[1]));
  FDCE \group_start_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_start[2]_i_1_n_0 ),
        .Q(group_start[2]));
  FDCE \group_start_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_start[3]_i_1_n_0 ),
        .Q(group_start[3]));
  FDCE \group_start_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_start[4]_i_1_n_0 ),
        .Q(group_start[4]));
  FDCE \group_start_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_start[5]_i_1_n_0 ),
        .Q(group_start[5]));
  FDCE \group_start_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_start[6]_i_1_n_0 ),
        .Q(group_start[6]));
  FDCE \group_start_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_start[7]_i_1_n_0 ),
        .Q(group_start[7]));
  FDCE \group_start_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_start[8]_i_1_n_0 ),
        .Q(group_start[8]));
  FDCE \group_start_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\group_start[9]_i_1_n_0 ),
        .Q(group_start[9]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \local_index[0]_i_1 
       (.I0(\stage_counter_reg_n_0_[2] ),
        .I1(\stage_counter_reg_n_0_[3] ),
        .I2(\stage_counter_reg_n_0_[0] ),
        .I3(\stage_counter_reg_n_0_[1] ),
        .I4(\bf_counter_reg_n_0_[0] ),
        .O(\local_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \local_index[1]_i_1 
       (.I0(\stage_counter_reg_n_0_[1] ),
        .I1(\stage_counter_reg_n_0_[2] ),
        .I2(\stage_counter_reg_n_0_[3] ),
        .I3(\bf_counter_reg_n_0_[1] ),
        .O(\local_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFF80000)) 
    \local_index[2]_i_1 
       (.I0(\stage_counter_reg_n_0_[0] ),
        .I1(\stage_counter_reg_n_0_[1] ),
        .I2(\stage_counter_reg_n_0_[2] ),
        .I3(\stage_counter_reg_n_0_[3] ),
        .I4(\bf_counter_reg_n_0_[2] ),
        .O(\local_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \local_index[3]_i_1 
       (.I0(\stage_counter_reg_n_0_[3] ),
        .I1(\stage_counter_reg_n_0_[2] ),
        .I2(\bf_counter_reg_n_0_[3] ),
        .O(\local_index[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFE00000)) 
    \local_index[4]_i_1 
       (.I0(\stage_counter_reg_n_0_[0] ),
        .I1(\stage_counter_reg_n_0_[1] ),
        .I2(\stage_counter_reg_n_0_[2] ),
        .I3(\stage_counter_reg_n_0_[3] ),
        .I4(\bf_counter_reg_n_0_[4] ),
        .O(\local_index[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF800)) 
    \local_index[5]_i_1 
       (.I0(\stage_counter_reg_n_0_[1] ),
        .I1(\stage_counter_reg_n_0_[2] ),
        .I2(\stage_counter_reg_n_0_[3] ),
        .I3(\bf_counter_reg_n_0_[5] ),
        .O(\local_index[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFF800000)) 
    \local_index[6]_i_1 
       (.I0(\stage_counter_reg_n_0_[0] ),
        .I1(\stage_counter_reg_n_0_[1] ),
        .I2(\stage_counter_reg_n_0_[2] ),
        .I3(\stage_counter_reg_n_0_[3] ),
        .I4(\bf_counter_reg_n_0_[6] ),
        .O(\local_index[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \local_index[7]_i_1 
       (.I0(\bf_counter_reg_n_0_[7] ),
        .I1(\stage_counter_reg_n_0_[3] ),
        .O(\local_index[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    \local_index[8]_i_1 
       (.I0(\bf_counter_reg_n_0_[8] ),
        .I1(\stage_counter_reg_n_0_[3] ),
        .I2(\stage_counter_reg_n_0_[1] ),
        .I3(\stage_counter_reg_n_0_[0] ),
        .I4(\stage_counter_reg_n_0_[2] ),
        .O(\local_index[8]_i_1_n_0 ));
  FDCE \local_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\local_index[0]_i_1_n_0 ),
        .Q(local_index[0]));
  FDCE \local_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\local_index[1]_i_1_n_0 ),
        .Q(local_index[1]));
  FDCE \local_index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\local_index[2]_i_1_n_0 ),
        .Q(local_index[2]));
  FDCE \local_index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\local_index[3]_i_1_n_0 ),
        .Q(local_index[3]));
  FDCE \local_index_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\local_index[4]_i_1_n_0 ),
        .Q(local_index[4]));
  FDCE \local_index_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\local_index[5]_i_1_n_0 ),
        .Q(local_index[5]));
  FDCE \local_index_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\local_index[6]_i_1_n_0 ),
        .Q(local_index[6]));
  FDCE \local_index_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\local_index[7]_i_1_n_0 ),
        .Q(local_index[7]));
  FDCE \local_index_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\local_index[8]_i_1_n_0 ),
        .Q(local_index[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    src_sel_o_reg
       (.CLR(1'b0),
        .D(src_sel_o_reg_i_1_n_0),
        .G(src_sel_o_reg_i_2_n_0),
        .GE(1'b1),
        .Q(src_sel_o));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    src_sel_o_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(state[2]),
        .I3(start_sending__0),
        .O(src_sel_o_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    src_sel_o_reg_i_2
       (.I0(state[2]),
        .I1(src_sel_o_reg_i_3_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(src_sel_o_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    src_sel_o_reg_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(start_sending__0),
        .O(src_sel_o_reg_i_3_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    \stage_counter[0]_i_1 
       (.I0(start_sending__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\stage_counter_reg_n_0_[0] ),
        .O(\stage_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hEFFE)) 
    \stage_counter[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start_sending__0),
        .I2(\stage_counter_reg_n_0_[0] ),
        .I3(\stage_counter_reg_n_0_[1] ),
        .O(\stage_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFFF6A)) 
    \stage_counter[2]_i_1 
       (.I0(\stage_counter_reg_n_0_[2] ),
        .I1(\stage_counter_reg_n_0_[0] ),
        .I2(\stage_counter_reg_n_0_[1] ),
        .I3(start_sending__0),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\stage_counter[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \stage_counter[3]_i_1 
       (.I0(start_sending__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(stage_counter));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \stage_counter[3]_i_2 
       (.I0(\stage_counter_reg_n_0_[2] ),
        .I1(\stage_counter_reg_n_0_[0] ),
        .I2(\stage_counter_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\stage_counter_reg_n_0_[3] ),
        .O(\stage_counter[3]_i_2_n_0 ));
  FDPE \stage_counter_reg[0] 
       (.C(clk),
        .CE(stage_counter),
        .D(\stage_counter[0]_i_1_n_0 ),
        .PRE(\data_counter[10]_i_3_n_0 ),
        .Q(\stage_counter_reg_n_0_[0] ));
  FDPE \stage_counter_reg[1] 
       (.C(clk),
        .CE(stage_counter),
        .D(\stage_counter[1]_i_1_n_0 ),
        .PRE(\data_counter[10]_i_3_n_0 ),
        .Q(\stage_counter_reg_n_0_[1] ));
  FDPE \stage_counter_reg[2] 
       (.C(clk),
        .CE(stage_counter),
        .D(\stage_counter[2]_i_1_n_0 ),
        .PRE(\data_counter[10]_i_3_n_0 ),
        .Q(\stage_counter_reg_n_0_[2] ));
  FDCE \stage_counter_reg[3] 
       (.C(clk),
        .CE(stage_counter),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(\stage_counter[3]_i_2_n_0 ),
        .Q(\stage_counter_reg_n_0_[3] ));
  (* CHECK_LICENSE_TYPE = "div_10bit,divu_int,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "divu_int,Vivado 2021.1" *) 
  fft_control_unit_2_div_10bit staged_half_N_div
       (.a({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .b(group_size),
        .busy(NLW_staged_half_N_div_busy_UNCONNECTED),
        .clk(clk),
        .dbz(NLW_staged_half_N_div_dbz_UNCONNECTED),
        .done(NLW_staged_half_N_div_done_UNCONNECTED),
        .rem(NLW_staged_half_N_div_rem_UNCONNECTED[9:0]),
        .rst(\data_counter[10]_i_3_n_0 ),
        .start(start_div_reg_n_0),
        .val({NLW_staged_half_N_div_val_UNCONNECTED[9],staged_half_N}),
        .valid(NLW_staged_half_N_div_valid_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    start_div_i_1
       (.I0(start_div_i_2_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(start_div_reg_n_0),
        .O(start_div_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    start_div_i_2
       (.I0(\div_bf_cycle_counter_reg_n_0_[2] ),
        .I1(\div_bf_cycle_counter_reg_n_0_[3] ),
        .I2(\div_bf_cycle_counter_reg_n_0_[0] ),
        .I3(\div_bf_cycle_counter_reg_n_0_[1] ),
        .I4(start_div_reg_n_0),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(start_div_i_2_n_0));
  FDCE start_div_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(start_div_i_1_n_0),
        .Q(start_div_reg_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    start_sending_reg
       (.CLR(1'b0),
        .D(start_sending__0),
        .G(src_sel_o_reg_i_2_n_0),
        .GE(1'b1),
        .Q(start_sending));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[0]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(start_sending__0),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(twiddle_addr_ad),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(twiddle_addr_ad),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(state[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[3]_INST_0 
       (.I0(start_sending__0),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(state[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \twiddle_addr_ad[3]_i_2 
       (.I0(twiddle_addr_o[3]),
        .I1(staged_half_N[3]),
        .O(\twiddle_addr_ad[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \twiddle_addr_ad[3]_i_3 
       (.I0(twiddle_addr_o[2]),
        .I1(staged_half_N[2]),
        .O(\twiddle_addr_ad[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \twiddle_addr_ad[3]_i_4 
       (.I0(twiddle_addr_o[1]),
        .I1(staged_half_N[1]),
        .O(\twiddle_addr_ad[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \twiddle_addr_ad[3]_i_5 
       (.I0(twiddle_addr_o[0]),
        .I1(staged_half_N[0]),
        .O(\twiddle_addr_ad[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \twiddle_addr_ad[7]_i_2 
       (.I0(twiddle_addr_o[7]),
        .I1(staged_half_N[7]),
        .O(\twiddle_addr_ad[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \twiddle_addr_ad[7]_i_3 
       (.I0(twiddle_addr_o[6]),
        .I1(staged_half_N[6]),
        .O(\twiddle_addr_ad[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \twiddle_addr_ad[7]_i_4 
       (.I0(twiddle_addr_o[5]),
        .I1(staged_half_N[5]),
        .O(\twiddle_addr_ad[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \twiddle_addr_ad[7]_i_5 
       (.I0(twiddle_addr_o[4]),
        .I1(staged_half_N[4]),
        .O(\twiddle_addr_ad[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \twiddle_addr_ad[8]_i_2 
       (.I0(twiddle_addr_o[8]),
        .I1(staged_half_N[8]),
        .O(\twiddle_addr_ad[8]_i_2_n_0 ));
  FDCE \twiddle_addr_ad_reg[0] 
       (.C(clk),
        .CE(twiddle_addr_ad),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(p_0_in[0]),
        .Q(twiddle_addr_ad__0[0]));
  FDCE \twiddle_addr_ad_reg[1] 
       (.C(clk),
        .CE(twiddle_addr_ad),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(p_0_in[1]),
        .Q(twiddle_addr_ad__0[1]));
  FDCE \twiddle_addr_ad_reg[2] 
       (.C(clk),
        .CE(twiddle_addr_ad),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(p_0_in[2]),
        .Q(twiddle_addr_ad__0[2]));
  FDCE \twiddle_addr_ad_reg[3] 
       (.C(clk),
        .CE(twiddle_addr_ad),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(p_0_in[3]),
        .Q(twiddle_addr_ad__0[3]));
  CARRY4 \twiddle_addr_ad_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\twiddle_addr_ad_reg[3]_i_1_n_0 ,\twiddle_addr_ad_reg[3]_i_1_n_1 ,\twiddle_addr_ad_reg[3]_i_1_n_2 ,\twiddle_addr_ad_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(twiddle_addr_o[3:0]),
        .O(p_0_in[3:0]),
        .S({\twiddle_addr_ad[3]_i_2_n_0 ,\twiddle_addr_ad[3]_i_3_n_0 ,\twiddle_addr_ad[3]_i_4_n_0 ,\twiddle_addr_ad[3]_i_5_n_0 }));
  FDCE \twiddle_addr_ad_reg[4] 
       (.C(clk),
        .CE(twiddle_addr_ad),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(p_0_in[4]),
        .Q(twiddle_addr_ad__0[4]));
  FDCE \twiddle_addr_ad_reg[5] 
       (.C(clk),
        .CE(twiddle_addr_ad),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(p_0_in[5]),
        .Q(twiddle_addr_ad__0[5]));
  FDCE \twiddle_addr_ad_reg[6] 
       (.C(clk),
        .CE(twiddle_addr_ad),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(p_0_in[6]),
        .Q(twiddle_addr_ad__0[6]));
  FDCE \twiddle_addr_ad_reg[7] 
       (.C(clk),
        .CE(twiddle_addr_ad),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(p_0_in[7]),
        .Q(twiddle_addr_ad__0[7]));
  CARRY4 \twiddle_addr_ad_reg[7]_i_1 
       (.CI(\twiddle_addr_ad_reg[3]_i_1_n_0 ),
        .CO({\twiddle_addr_ad_reg[7]_i_1_n_0 ,\twiddle_addr_ad_reg[7]_i_1_n_1 ,\twiddle_addr_ad_reg[7]_i_1_n_2 ,\twiddle_addr_ad_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(twiddle_addr_o[7:4]),
        .O(p_0_in[7:4]),
        .S({\twiddle_addr_ad[7]_i_2_n_0 ,\twiddle_addr_ad[7]_i_3_n_0 ,\twiddle_addr_ad[7]_i_4_n_0 ,\twiddle_addr_ad[7]_i_5_n_0 }));
  FDCE \twiddle_addr_ad_reg[8] 
       (.C(clk),
        .CE(twiddle_addr_ad),
        .CLR(\data_counter[10]_i_3_n_0 ),
        .D(p_0_in[8]),
        .Q(twiddle_addr_ad__0[8]));
  CARRY4 \twiddle_addr_ad_reg[8]_i_1 
       (.CI(\twiddle_addr_ad_reg[7]_i_1_n_0 ),
        .CO(\NLW_twiddle_addr_ad_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_twiddle_addr_ad_reg[8]_i_1_O_UNCONNECTED [3:1],p_0_in[8]}),
        .S({1'b0,1'b0,1'b0,\twiddle_addr_ad[8]_i_2_n_0 }));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \twiddle_addr_o_reg[0] 
       (.CLR(1'b0),
        .D(\twiddle_addr_o_reg[0]_i_1_n_0 ),
        .G(\twiddle_addr_o_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(twiddle_addr_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \twiddle_addr_o_reg[0]_i_1 
       (.I0(twiddle_addr_ad__0[0]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\twiddle_addr_o_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \twiddle_addr_o_reg[1] 
       (.CLR(1'b0),
        .D(\twiddle_addr_o_reg[1]_i_1_n_0 ),
        .G(\twiddle_addr_o_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(twiddle_addr_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \twiddle_addr_o_reg[1]_i_1 
       (.I0(twiddle_addr_ad__0[1]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\twiddle_addr_o_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \twiddle_addr_o_reg[2] 
       (.CLR(1'b0),
        .D(\twiddle_addr_o_reg[2]_i_1_n_0 ),
        .G(\twiddle_addr_o_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(twiddle_addr_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \twiddle_addr_o_reg[2]_i_1 
       (.I0(twiddle_addr_ad__0[2]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\twiddle_addr_o_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \twiddle_addr_o_reg[3] 
       (.CLR(1'b0),
        .D(\twiddle_addr_o_reg[3]_i_1_n_0 ),
        .G(\twiddle_addr_o_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(twiddle_addr_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \twiddle_addr_o_reg[3]_i_1 
       (.I0(twiddle_addr_ad__0[3]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\twiddle_addr_o_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \twiddle_addr_o_reg[4] 
       (.CLR(1'b0),
        .D(\twiddle_addr_o_reg[4]_i_1_n_0 ),
        .G(\twiddle_addr_o_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(twiddle_addr_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \twiddle_addr_o_reg[4]_i_1 
       (.I0(twiddle_addr_ad__0[4]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\twiddle_addr_o_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \twiddle_addr_o_reg[5] 
       (.CLR(1'b0),
        .D(\twiddle_addr_o_reg[5]_i_1_n_0 ),
        .G(\twiddle_addr_o_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(twiddle_addr_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \twiddle_addr_o_reg[5]_i_1 
       (.I0(twiddle_addr_ad__0[5]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\twiddle_addr_o_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \twiddle_addr_o_reg[6] 
       (.CLR(1'b0),
        .D(\twiddle_addr_o_reg[6]_i_1_n_0 ),
        .G(\twiddle_addr_o_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(twiddle_addr_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \twiddle_addr_o_reg[6]_i_1 
       (.I0(twiddle_addr_ad__0[6]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\twiddle_addr_o_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \twiddle_addr_o_reg[7] 
       (.CLR(1'b0),
        .D(\twiddle_addr_o_reg[7]_i_1_n_0 ),
        .G(\twiddle_addr_o_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(twiddle_addr_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \twiddle_addr_o_reg[7]_i_1 
       (.I0(twiddle_addr_ad__0[7]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\twiddle_addr_o_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \twiddle_addr_o_reg[8] 
       (.CLR(1'b0),
        .D(\twiddle_addr_o_reg[8]_i_1_n_0 ),
        .G(\twiddle_addr_o_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(twiddle_addr_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \twiddle_addr_o_reg[8]_i_1 
       (.I0(twiddle_addr_ad__0[8]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\twiddle_addr_o_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \twiddle_addr_o_reg[8]_i_2 
       (.I0(src_sel_o_reg_i_3_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\twiddle_addr_o_reg[8]_i_2_n_0 ));
  (* CHECK_LICENSE_TYPE = "data_counter_mux2,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  fft_control_unit_2_data_counter_mux2 your_instance_name
       (.d0(data_counter_rev),
        .d1(data_counter[9:0]),
        .s(your_instance_name_i_1_n_0),
        .y(data_counter_mux));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    your_instance_name_i_1
       (.I0(\stage_counter_reg_n_0_[1] ),
        .I1(\stage_counter_reg_n_0_[0] ),
        .I2(\stage_counter_reg_n_0_[3] ),
        .I3(\stage_counter_reg_n_0_[2] ),
        .O(your_instance_name_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "data_counter_mux2,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "data_counter_mux2" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module fft_control_unit_2_data_counter_mux2
   (d0,
    d1,
    s,
    y);
  input [9:0]d0;
  input [9:0]d1;
  input s;
  output [9:0]y;

  wire [9:0]d0;
  wire [9:0]d1;
  wire s;
  wire [9:0]y;

  fft_control_unit_2_mux2 inst
       (.d0(d0),
        .d1(d1),
        .s(s),
        .y(y));
endmodule

(* CHECK_LICENSE_TYPE = "div_10bit,divu_int,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "div_10bit" *) (* X_CORE_INFO = "divu_int,Vivado 2021.1" *) 
module fft_control_unit_2_div_10bit
   (clk,
    rst,
    start,
    busy,
    done,
    valid,
    dbz,
    a,
    b,
    val,
    rem);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  output busy;
  output done;
  output valid;
  output dbz;
  input [9:0]a;
  input [9:0]b;
  output [9:0]val;
  output [9:0]rem;

  wire \<const0> ;
  wire [9:0]b;
  wire clk;
  wire rst;
  wire start;
  wire [8:0]\^val ;

  assign busy = \<const0> ;
  assign dbz = \<const0> ;
  assign done = \<const0> ;
  assign rem[9] = \<const0> ;
  assign rem[8] = \<const0> ;
  assign rem[7] = \<const0> ;
  assign rem[6] = \<const0> ;
  assign rem[5] = \<const0> ;
  assign rem[4] = \<const0> ;
  assign rem[3] = \<const0> ;
  assign rem[2] = \<const0> ;
  assign rem[1] = \<const0> ;
  assign rem[0] = \<const0> ;
  assign val[9] = \<const0> ;
  assign val[8:0] = \^val [8:0];
  assign valid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  fft_control_unit_2_divu_int inst
       (.b(b),
        .clk(clk),
        .rst(rst),
        .start(start),
        .val(\^val ));
endmodule

(* ORIG_REF_NAME = "divu_int" *) 
module fft_control_unit_2_divu_int
   (val,
    clk,
    start,
    b,
    rst);
  output [8:0]val;
  input clk;
  input start;
  input [9:0]b;
  input rst;

  wire [10:0]acc;
  wire \acc[0]_i_1_n_0 ;
  wire \acc[10]_i_1_n_0 ;
  wire \acc[1]_i_1_n_0 ;
  wire \acc[2]_i_1_n_0 ;
  wire \acc[3]_i_1_n_0 ;
  wire \acc[4]_i_1_n_0 ;
  wire \acc[5]_i_1_n_0 ;
  wire \acc[6]_i_1_n_0 ;
  wire \acc[7]_i_1_n_0 ;
  wire \acc[8]_i_1_n_0 ;
  wire \acc[9]_i_1_n_0 ;
  wire [9:0]b;
  wire [9:0]b1;
  wire \b1[9]_i_1_n_0 ;
  wire \b1[9]_i_2_n_0 ;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire busy_reg_n_0;
  wire clk;
  wire i;
  wire \i[0]_i_1_n_0 ;
  wire [3:0]i_reg;
  wire [3:1]p_0_in;
  wire p_2_in0;
  wire \quo[0]_i_1_n_0 ;
  wire \quo[0]_i_2_n_0 ;
  wire \quo[0]_i_3_n_0 ;
  wire \quo[9]_i_1_n_0 ;
  wire [9:1]quo_next;
  wire [9:0]quo_next0;
  wire quo_next0_carry__0_i_1_n_0;
  wire quo_next0_carry__0_i_2_n_0;
  wire quo_next0_carry__0_i_3_n_0;
  wire quo_next0_carry__0_i_4_n_0;
  wire quo_next0_carry__0_n_0;
  wire quo_next0_carry__0_n_1;
  wire quo_next0_carry__0_n_2;
  wire quo_next0_carry__0_n_3;
  wire quo_next0_carry__1_i_1_n_0;
  wire quo_next0_carry__1_i_2_n_0;
  wire quo_next0_carry__1_n_3;
  wire quo_next0_carry_i_1_n_0;
  wire quo_next0_carry_i_2_n_0;
  wire quo_next0_carry_i_3_n_0;
  wire quo_next0_carry_i_4_n_0;
  wire quo_next0_carry_n_0;
  wire quo_next0_carry_n_1;
  wire quo_next0_carry_n_2;
  wire quo_next0_carry_n_3;
  wire quo_next1;
  wire quo_next1_carry__0_i_1_n_0;
  wire quo_next1_carry__0_i_2_n_0;
  wire quo_next1_carry__0_i_3_n_0;
  wire quo_next1_carry__0_n_3;
  wire quo_next1_carry_i_1_n_0;
  wire quo_next1_carry_i_2_n_0;
  wire quo_next1_carry_i_3_n_0;
  wire quo_next1_carry_i_4_n_0;
  wire quo_next1_carry_i_5_n_0;
  wire quo_next1_carry_i_6_n_0;
  wire quo_next1_carry_i_7_n_0;
  wire quo_next1_carry_i_8_n_0;
  wire quo_next1_carry_n_0;
  wire quo_next1_carry_n_1;
  wire quo_next1_carry_n_2;
  wire quo_next1_carry_n_3;
  wire rst;
  wire start;
  wire [8:0]val;
  wire \val[8]_i_1_n_0 ;
  wire [3:1]NLW_quo_next0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_quo_next0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_quo_next1_carry_O_UNCONNECTED;
  wire [3:2]NLW_quo_next1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_quo_next1_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \acc[0]_i_1 
       (.I0(start),
        .I1(p_2_in0),
        .O(\acc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \acc[10]_i_1 
       (.I0(quo_next0[9]),
        .I1(acc[9]),
        .I2(quo_next1),
        .I3(start),
        .O(\acc[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \acc[1]_i_1 
       (.I0(quo_next0[0]),
        .I1(acc[0]),
        .I2(quo_next1),
        .I3(start),
        .O(\acc[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \acc[2]_i_1 
       (.I0(quo_next0[1]),
        .I1(acc[1]),
        .I2(quo_next1),
        .I3(start),
        .O(\acc[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \acc[3]_i_1 
       (.I0(quo_next0[2]),
        .I1(acc[2]),
        .I2(quo_next1),
        .I3(start),
        .O(\acc[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \acc[4]_i_1 
       (.I0(quo_next0[3]),
        .I1(acc[3]),
        .I2(quo_next1),
        .I3(start),
        .O(\acc[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \acc[5]_i_1 
       (.I0(quo_next0[4]),
        .I1(acc[4]),
        .I2(quo_next1),
        .I3(start),
        .O(\acc[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \acc[6]_i_1 
       (.I0(quo_next0[5]),
        .I1(acc[5]),
        .I2(quo_next1),
        .I3(start),
        .O(\acc[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \acc[7]_i_1 
       (.I0(quo_next0[6]),
        .I1(acc[6]),
        .I2(quo_next1),
        .I3(start),
        .O(\acc[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \acc[8]_i_1 
       (.I0(quo_next0[7]),
        .I1(acc[7]),
        .I2(quo_next1),
        .I3(start),
        .O(\acc[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \acc[9]_i_1 
       (.I0(quo_next0[8]),
        .I1(acc[8]),
        .I2(quo_next1),
        .I3(start),
        .O(\acc[9]_i_1_n_0 ));
  FDRE \acc_reg[0] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(\acc[0]_i_1_n_0 ),
        .Q(acc[0]),
        .R(1'b0));
  FDRE \acc_reg[10] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(\acc[10]_i_1_n_0 ),
        .Q(acc[10]),
        .R(1'b0));
  FDRE \acc_reg[1] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(\acc[1]_i_1_n_0 ),
        .Q(acc[1]),
        .R(1'b0));
  FDRE \acc_reg[2] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(\acc[2]_i_1_n_0 ),
        .Q(acc[2]),
        .R(1'b0));
  FDRE \acc_reg[3] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(\acc[3]_i_1_n_0 ),
        .Q(acc[3]),
        .R(1'b0));
  FDRE \acc_reg[4] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(\acc[4]_i_1_n_0 ),
        .Q(acc[4]),
        .R(1'b0));
  FDRE \acc_reg[5] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(\acc[5]_i_1_n_0 ),
        .Q(acc[5]),
        .R(1'b0));
  FDRE \acc_reg[6] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(\acc[6]_i_1_n_0 ),
        .Q(acc[6]),
        .R(1'b0));
  FDRE \acc_reg[7] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(\acc[7]_i_1_n_0 ),
        .Q(acc[7]),
        .R(1'b0));
  FDRE \acc_reg[8] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(\acc[8]_i_1_n_0 ),
        .Q(acc[8]),
        .R(1'b0));
  FDRE \acc_reg[9] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(\acc[9]_i_1_n_0 ),
        .Q(acc[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \b1[9]_i_1 
       (.I0(b[3]),
        .I1(b[2]),
        .I2(b[5]),
        .I3(b[4]),
        .I4(\b1[9]_i_2_n_0 ),
        .I5(start),
        .O(\b1[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \b1[9]_i_2 
       (.I0(b[8]),
        .I1(b[9]),
        .I2(b[6]),
        .I3(b[7]),
        .I4(b[1]),
        .I5(b[0]),
        .O(\b1[9]_i_2_n_0 ));
  FDRE \b1_reg[0] 
       (.C(clk),
        .CE(\b1[9]_i_1_n_0 ),
        .D(b[0]),
        .Q(b1[0]),
        .R(1'b0));
  FDRE \b1_reg[1] 
       (.C(clk),
        .CE(\b1[9]_i_1_n_0 ),
        .D(b[1]),
        .Q(b1[1]),
        .R(1'b0));
  FDRE \b1_reg[2] 
       (.C(clk),
        .CE(\b1[9]_i_1_n_0 ),
        .D(b[2]),
        .Q(b1[2]),
        .R(1'b0));
  FDRE \b1_reg[3] 
       (.C(clk),
        .CE(\b1[9]_i_1_n_0 ),
        .D(b[3]),
        .Q(b1[3]),
        .R(1'b0));
  FDRE \b1_reg[4] 
       (.C(clk),
        .CE(\b1[9]_i_1_n_0 ),
        .D(b[4]),
        .Q(b1[4]),
        .R(1'b0));
  FDRE \b1_reg[5] 
       (.C(clk),
        .CE(\b1[9]_i_1_n_0 ),
        .D(b[5]),
        .Q(b1[5]),
        .R(1'b0));
  FDRE \b1_reg[6] 
       (.C(clk),
        .CE(\b1[9]_i_1_n_0 ),
        .D(b[6]),
        .Q(b1[6]),
        .R(1'b0));
  FDRE \b1_reg[7] 
       (.C(clk),
        .CE(\b1[9]_i_1_n_0 ),
        .D(b[7]),
        .Q(b1[7]),
        .R(1'b0));
  FDRE \b1_reg[8] 
       (.C(clk),
        .CE(\b1[9]_i_1_n_0 ),
        .D(b[8]),
        .Q(b1[8]),
        .R(1'b0));
  FDRE \b1_reg[9] 
       (.C(clk),
        .CE(\b1[9]_i_1_n_0 ),
        .D(b[9]),
        .Q(b1[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000B888)) 
    busy_i_1
       (.I0(busy_i_2_n_0),
        .I1(start),
        .I2(\quo[0]_i_3_n_0 ),
        .I3(busy_reg_n_0),
        .I4(rst),
        .O(busy_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    busy_i_2
       (.I0(\b1[9]_i_2_n_0 ),
        .I1(b[4]),
        .I2(b[5]),
        .I3(b[2]),
        .I4(b[3]),
        .O(busy_i_2_n_0));
  FDRE busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_1 
       (.I0(i_reg[0]),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i[1]_i_1 
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i[2]_i_1 
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .I2(i_reg[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hFBFF0000)) 
    \i[3]_i_1 
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(busy_reg_n_0),
        .O(i));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \i[3]_i_2 
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .I2(i_reg[0]),
        .I3(i_reg[1]),
        .O(p_0_in[3]));
  FDRE \i_reg[0] 
       (.C(clk),
        .CE(i),
        .D(\i[0]_i_1_n_0 ),
        .Q(i_reg[0]),
        .R(start));
  FDRE \i_reg[1] 
       (.C(clk),
        .CE(i),
        .D(p_0_in[1]),
        .Q(i_reg[1]),
        .R(start));
  FDRE \i_reg[2] 
       (.C(clk),
        .CE(i),
        .D(p_0_in[2]),
        .Q(i_reg[2]),
        .R(start));
  FDRE \i_reg[3] 
       (.C(clk),
        .CE(i),
        .D(p_0_in[3]),
        .Q(i_reg[3]),
        .R(start));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \quo[0]_i_1 
       (.I0(\b1[9]_i_1_n_0 ),
        .I1(\quo[0]_i_3_n_0 ),
        .I2(busy_reg_n_0),
        .I3(start),
        .O(\quo[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \quo[0]_i_2 
       (.I0(quo_next1),
        .I1(start),
        .O(\quo[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \quo[0]_i_3 
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .O(\quo[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \quo[9]_i_1 
       (.I0(start),
        .I1(\b1[9]_i_1_n_0 ),
        .O(\quo[9]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 quo_next0_carry
       (.CI(1'b0),
        .CO({quo_next0_carry_n_0,quo_next0_carry_n_1,quo_next0_carry_n_2,quo_next0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(acc[3:0]),
        .O(quo_next0[3:0]),
        .S({quo_next0_carry_i_1_n_0,quo_next0_carry_i_2_n_0,quo_next0_carry_i_3_n_0,quo_next0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 quo_next0_carry__0
       (.CI(quo_next0_carry_n_0),
        .CO({quo_next0_carry__0_n_0,quo_next0_carry__0_n_1,quo_next0_carry__0_n_2,quo_next0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(acc[7:4]),
        .O(quo_next0[7:4]),
        .S({quo_next0_carry__0_i_1_n_0,quo_next0_carry__0_i_2_n_0,quo_next0_carry__0_i_3_n_0,quo_next0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    quo_next0_carry__0_i_1
       (.I0(acc[7]),
        .I1(b1[7]),
        .O(quo_next0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    quo_next0_carry__0_i_2
       (.I0(acc[6]),
        .I1(b1[6]),
        .O(quo_next0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    quo_next0_carry__0_i_3
       (.I0(acc[5]),
        .I1(b1[5]),
        .O(quo_next0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    quo_next0_carry__0_i_4
       (.I0(acc[4]),
        .I1(b1[4]),
        .O(quo_next0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 quo_next0_carry__1
       (.CI(quo_next0_carry__0_n_0),
        .CO({NLW_quo_next0_carry__1_CO_UNCONNECTED[3:1],quo_next0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,acc[8]}),
        .O({NLW_quo_next0_carry__1_O_UNCONNECTED[3:2],quo_next0[9:8]}),
        .S({1'b0,1'b0,quo_next0_carry__1_i_1_n_0,quo_next0_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    quo_next0_carry__1_i_1
       (.I0(b1[9]),
        .I1(acc[9]),
        .O(quo_next0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    quo_next0_carry__1_i_2
       (.I0(acc[8]),
        .I1(b1[8]),
        .O(quo_next0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    quo_next0_carry_i_1
       (.I0(acc[3]),
        .I1(b1[3]),
        .O(quo_next0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    quo_next0_carry_i_2
       (.I0(acc[2]),
        .I1(b1[2]),
        .O(quo_next0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    quo_next0_carry_i_3
       (.I0(acc[1]),
        .I1(b1[1]),
        .O(quo_next0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    quo_next0_carry_i_4
       (.I0(acc[0]),
        .I1(b1[0]),
        .O(quo_next0_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 quo_next1_carry
       (.CI(1'b0),
        .CO({quo_next1_carry_n_0,quo_next1_carry_n_1,quo_next1_carry_n_2,quo_next1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({quo_next1_carry_i_1_n_0,quo_next1_carry_i_2_n_0,quo_next1_carry_i_3_n_0,quo_next1_carry_i_4_n_0}),
        .O(NLW_quo_next1_carry_O_UNCONNECTED[3:0]),
        .S({quo_next1_carry_i_5_n_0,quo_next1_carry_i_6_n_0,quo_next1_carry_i_7_n_0,quo_next1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 quo_next1_carry__0
       (.CI(quo_next1_carry_n_0),
        .CO({NLW_quo_next1_carry__0_CO_UNCONNECTED[3:2],quo_next1,quo_next1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,acc[10],quo_next1_carry__0_i_1_n_0}),
        .O(NLW_quo_next1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,quo_next1_carry__0_i_2_n_0,quo_next1_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    quo_next1_carry__0_i_1
       (.I0(acc[9]),
        .I1(b1[9]),
        .I2(acc[8]),
        .I3(b1[8]),
        .O(quo_next1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    quo_next1_carry__0_i_2
       (.I0(acc[10]),
        .O(quo_next1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    quo_next1_carry__0_i_3
       (.I0(b1[9]),
        .I1(acc[9]),
        .I2(b1[8]),
        .I3(acc[8]),
        .O(quo_next1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    quo_next1_carry_i_1
       (.I0(acc[7]),
        .I1(b1[7]),
        .I2(acc[6]),
        .I3(b1[6]),
        .O(quo_next1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    quo_next1_carry_i_2
       (.I0(acc[5]),
        .I1(b1[5]),
        .I2(acc[4]),
        .I3(b1[4]),
        .O(quo_next1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    quo_next1_carry_i_3
       (.I0(acc[3]),
        .I1(b1[3]),
        .I2(acc[2]),
        .I3(b1[2]),
        .O(quo_next1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    quo_next1_carry_i_4
       (.I0(acc[1]),
        .I1(b1[1]),
        .I2(acc[0]),
        .I3(b1[0]),
        .O(quo_next1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    quo_next1_carry_i_5
       (.I0(b1[7]),
        .I1(acc[7]),
        .I2(b1[6]),
        .I3(acc[6]),
        .O(quo_next1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    quo_next1_carry_i_6
       (.I0(b1[5]),
        .I1(acc[5]),
        .I2(b1[4]),
        .I3(acc[4]),
        .O(quo_next1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    quo_next1_carry_i_7
       (.I0(b1[3]),
        .I1(acc[3]),
        .I2(b1[2]),
        .I3(acc[2]),
        .O(quo_next1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    quo_next1_carry_i_8
       (.I0(b1[1]),
        .I1(acc[1]),
        .I2(b1[0]),
        .I3(acc[0]),
        .O(quo_next1_carry_i_8_n_0));
  FDRE \quo_reg[0] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(\quo[0]_i_2_n_0 ),
        .Q(quo_next[1]),
        .R(1'b0));
  FDRE \quo_reg[1] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(quo_next[1]),
        .Q(quo_next[2]),
        .R(\quo[9]_i_1_n_0 ));
  FDRE \quo_reg[2] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(quo_next[2]),
        .Q(quo_next[3]),
        .R(\quo[9]_i_1_n_0 ));
  FDRE \quo_reg[3] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(quo_next[3]),
        .Q(quo_next[4]),
        .R(\quo[9]_i_1_n_0 ));
  FDRE \quo_reg[4] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(quo_next[4]),
        .Q(quo_next[5]),
        .R(\quo[9]_i_1_n_0 ));
  FDRE \quo_reg[5] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(quo_next[5]),
        .Q(quo_next[6]),
        .R(\quo[9]_i_1_n_0 ));
  FDRE \quo_reg[6] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(quo_next[6]),
        .Q(quo_next[7]),
        .R(\quo[9]_i_1_n_0 ));
  FDRE \quo_reg[7] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(quo_next[7]),
        .Q(quo_next[8]),
        .R(\quo[9]_i_1_n_0 ));
  FDRE \quo_reg[8] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(quo_next[8]),
        .Q(quo_next[9]),
        .R(\quo[9]_i_1_n_0 ));
  FDRE \quo_reg[9] 
       (.C(clk),
        .CE(\quo[0]_i_1_n_0 ),
        .D(quo_next[9]),
        .Q(p_2_in0),
        .R(\quo[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \val[8]_i_1 
       (.I0(start),
        .I1(busy_reg_n_0),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[1]),
        .I5(i_reg[0]),
        .O(\val[8]_i_1_n_0 ));
  FDRE \val_reg[0] 
       (.C(clk),
        .CE(\val[8]_i_1_n_0 ),
        .D(quo_next1),
        .Q(val[0]),
        .R(rst));
  FDRE \val_reg[1] 
       (.C(clk),
        .CE(\val[8]_i_1_n_0 ),
        .D(quo_next[1]),
        .Q(val[1]),
        .R(rst));
  FDRE \val_reg[2] 
       (.C(clk),
        .CE(\val[8]_i_1_n_0 ),
        .D(quo_next[2]),
        .Q(val[2]),
        .R(rst));
  FDRE \val_reg[3] 
       (.C(clk),
        .CE(\val[8]_i_1_n_0 ),
        .D(quo_next[3]),
        .Q(val[3]),
        .R(rst));
  FDRE \val_reg[4] 
       (.C(clk),
        .CE(\val[8]_i_1_n_0 ),
        .D(quo_next[4]),
        .Q(val[4]),
        .R(rst));
  FDRE \val_reg[5] 
       (.C(clk),
        .CE(\val[8]_i_1_n_0 ),
        .D(quo_next[5]),
        .Q(val[5]),
        .R(rst));
  FDRE \val_reg[6] 
       (.C(clk),
        .CE(\val[8]_i_1_n_0 ),
        .D(quo_next[6]),
        .Q(val[6]),
        .R(rst));
  FDRE \val_reg[7] 
       (.C(clk),
        .CE(\val[8]_i_1_n_0 ),
        .D(quo_next[7]),
        .Q(val[7]),
        .R(rst));
  FDRE \val_reg[8] 
       (.C(clk),
        .CE(\val[8]_i_1_n_0 ),
        .D(quo_next[8]),
        .Q(val[8]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "mux2" *) 
module fft_control_unit_2_mux2
   (y,
    d1,
    d0,
    s);
  output [9:0]y;
  input [9:0]d1;
  input [9:0]d0;
  input s;

  wire [9:0]d0;
  wire [9:0]d1;
  wire s;
  wire [9:0]y;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[0]_INST_0 
       (.I0(d1[0]),
        .I1(d0[0]),
        .I2(s),
        .O(y[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[1]_INST_0 
       (.I0(d1[1]),
        .I1(d0[1]),
        .I2(s),
        .O(y[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[2]_INST_0 
       (.I0(d1[2]),
        .I1(d0[2]),
        .I2(s),
        .O(y[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[3]_INST_0 
       (.I0(d1[3]),
        .I1(d0[3]),
        .I2(s),
        .O(y[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[4]_INST_0 
       (.I0(d1[4]),
        .I1(d0[4]),
        .I2(s),
        .O(y[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[5]_INST_0 
       (.I0(d1[5]),
        .I1(d0[5]),
        .I2(s),
        .O(y[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[6]_INST_0 
       (.I0(d1[6]),
        .I1(d0[6]),
        .I2(s),
        .O(y[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[7]_INST_0 
       (.I0(d1[7]),
        .I1(d0[7]),
        .I2(s),
        .O(y[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[8]_INST_0 
       (.I0(d1[8]),
        .I1(d0[8]),
        .I2(s),
        .O(y[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[9]_INST_0 
       (.I0(d1[9]),
        .I1(d0[9]),
        .I2(s),
        .O(y[9]));
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
