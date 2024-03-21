// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Mar  7 17:54:51 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/butterfly_full_0/butterfly_full_0_sim_netlist.v
// Design      : butterfly_full_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "butterfly_full_0,butterfly_full,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "butterfly_full,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module butterfly_full_0
   (clk,
    CE,
    x0_re_i,
    x0_im_i,
    x1_re_i,
    x1_im_i,
    w_re_i,
    w_im_i,
    X0_re_o,
    X0_im_o,
    X1_re_o,
    X1_im_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input CE;
  input [31:0]x0_re_i;
  input [31:0]x0_im_i;
  input [31:0]x1_re_i;
  input [31:0]x1_im_i;
  input [31:0]w_re_i;
  input [31:0]w_im_i;
  output [31:0]X0_re_o;
  output [31:0]X0_im_o;
  output [31:0]X1_re_o;
  output [31:0]X1_im_o;

  wire CE;
  wire [31:0]X0_im_o;
  wire [31:0]X0_re_o;
  wire [31:0]X1_im_o;
  wire [31:0]X1_re_o;
  wire clk;
  wire [31:0]w_im_i;
  wire [31:0]w_re_i;
  wire [31:0]x0_im_i;
  wire [31:0]x0_re_i;
  wire [31:0]x1_im_i;
  wire [31:0]x1_re_i;

  butterfly_full_0_butterfly_full inst
       (.CE(CE),
        .X0_im_o(X0_im_o),
        .X0_re_o(X0_re_o),
        .X1_im_o(X1_im_o),
        .X1_re_o(X1_re_o),
        .clk(clk),
        .w_im_i(w_im_i[0]),
        .w_re_i(w_re_i[0]),
        .x0_im_i(x0_im_i),
        .x0_re_i(x0_re_i),
        .x1_im_i(x1_im_i[0]),
        .x1_re_i(x1_re_i[0]));
endmodule

(* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_subtracter32_ip" *) (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
module butterfly_full_0_adder_subtracter32_ip
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
  wire [1:0]\^r ;
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
  assign r[9] = \<const0> ;
  assign r[8] = \<const0> ;
  assign r[7] = \<const0> ;
  assign r[6] = \<const0> ;
  assign r[5] = \<const0> ;
  assign r[4] = \<const0> ;
  assign r[3] = \<const0> ;
  assign r[2] = \<const0> ;
  assign r[1:0] = \^r [1:0];
  assign v = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[0]_INST_0 
       (.I0(y[0]),
        .I1(x[0]),
        .O(\^r [0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[1]_INST_0 
       (.I0(x[0]),
        .I1(y[0]),
        .O(\^r [1]));
endmodule

(* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_subtracter32_ip" *) (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
module butterfly_full_0_adder_subtracter32_ip__1
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
  wire \inst/add0/s0__0 ;
  wire \inst/add10/c_out00_out ;
  wire \inst/add10/c_out0__0 ;
  wire \inst/add10/s0__0 ;
  wire \inst/add15/c_out00_out ;
  wire \inst/add15/c_out0__0 ;
  wire \inst/add15/s0__0 ;
  wire \inst/add20/c_out00_out ;
  wire \inst/add20/c_out0__0 ;
  wire \inst/add20/s0__0 ;
  wire \inst/add25/c_out00_out ;
  wire \inst/add25/c_out0__0 ;
  wire \inst/add25/s0__0 ;
  wire \inst/add29/s0__0 ;
  wire \inst/add5/c_out00_out ;
  wire \inst/add5/c_out0__0 ;
  wire \inst/add5/s0__0 ;
  wire \inst/c_out_10 ;
  wire \inst/c_out_11 ;
  wire \inst/c_out_12 ;
  wire \inst/c_out_13 ;
  wire \inst/c_out_14 ;
  wire \inst/c_out_15 ;
  wire \inst/c_out_16 ;
  wire \inst/c_out_17 ;
  wire \inst/c_out_18 ;
  wire \inst/c_out_19 ;
  wire \inst/c_out_2 ;
  wire \inst/c_out_20 ;
  wire \inst/c_out_21 ;
  wire \inst/c_out_22 ;
  wire \inst/c_out_23 ;
  wire \inst/c_out_24 ;
  wire \inst/c_out_25 ;
  wire \inst/c_out_26 ;
  wire \inst/c_out_27 ;
  wire \inst/c_out_29 ;
  wire \inst/c_out_4 ;
  wire \inst/c_out_6 ;
  wire \inst/c_out_7 ;
  wire \inst/c_out_8 ;
  wire \inst/c_out_9 ;
  wire [29:1]\inst/s ;
  wire [31:0]r;
  wire [31:0]x;
  wire [31:0]y;

  assign v = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[0]_INST_0 
       (.I0(\inst/add0/s0__0 ),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[0]_INST_0_i_1 
       (.I0(y[0]),
        .I1(x[0]),
        .O(\inst/add0/s0__0 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[10]_INST_0 
       (.I0(\inst/s [10]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[10]_INST_0_i_1 
       (.I0(\inst/c_out_8 ),
        .I1(x[9]),
        .I2(y[9]),
        .I3(x[10]),
        .I4(y[10]),
        .O(\inst/s [10]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[10]_INST_0_i_2 
       (.I0(y[8]),
        .I1(x[8]),
        .I2(y[7]),
        .I3(x[7]),
        .I4(\inst/c_out_6 ),
        .O(\inst/c_out_8 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[11]_INST_0 
       (.I0(\inst/s [11]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \r[11]_INST_0_i_1 
       (.I0(\inst/c_out_10 ),
        .I1(x[11]),
        .I2(y[11]),
        .O(\inst/s [11]));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[12]_INST_0 
       (.I0(\inst/s [12]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[12]_INST_0_i_1 
       (.I0(\inst/c_out_10 ),
        .I1(x[11]),
        .I2(y[11]),
        .I3(x[12]),
        .I4(y[12]),
        .O(\inst/s [12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[12]_INST_0_i_2 
       (.I0(y[10]),
        .I1(x[10]),
        .I2(y[9]),
        .I3(x[9]),
        .I4(\inst/c_out_8 ),
        .O(\inst/c_out_10 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[13]_INST_0 
       (.I0(\inst/s [13]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[13]_INST_0_i_1 
       (.I0(\inst/c_out_11 ),
        .I1(x[12]),
        .I2(y[12]),
        .I3(x[13]),
        .I4(y[13]),
        .O(\inst/s [13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[13]_INST_0_i_2 
       (.I0(y[11]),
        .I1(x[11]),
        .I2(y[10]),
        .I3(x[10]),
        .I4(\inst/c_out_9 ),
        .O(\inst/c_out_11 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[13]_INST_0_i_3 
       (.I0(y[9]),
        .I1(x[9]),
        .I2(y[8]),
        .I3(x[8]),
        .I4(\inst/c_out_7 ),
        .O(\inst/c_out_9 ));
  LUT6 #(
    .INIT(64'hE888EEE8EEE8E888)) 
    \r[13]_INST_0_i_4 
       (.I0(y[7]),
        .I1(x[7]),
        .I2(y[6]),
        .I3(x[6]),
        .I4(\inst/add5/c_out00_out ),
        .I5(\inst/add5/c_out0__0 ),
        .O(\inst/c_out_7 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r[13]_INST_0_i_5 
       (.I0(x[5]),
        .I1(y[5]),
        .O(\inst/add5/c_out00_out ));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \r[13]_INST_0_i_6 
       (.I0(\inst/c_out_2 ),
        .I1(x[3]),
        .I2(y[3]),
        .I3(x[4]),
        .I4(y[4]),
        .I5(\inst/add5/s0__0 ),
        .O(\inst/add5/c_out0__0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[13]_INST_0_i_7 
       (.I0(y[5]),
        .I1(x[5]),
        .O(\inst/add5/s0__0 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[14]_INST_0 
       (.I0(\inst/s [14]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[14]));
  LUT3 #(
    .INIT(8'h96)) 
    \r[14]_INST_0_i_1 
       (.I0(\inst/c_out_13 ),
        .I1(x[14]),
        .I2(y[14]),
        .O(\inst/s [14]));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[15]_INST_0 
       (.I0(\inst/s [15]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[15]_INST_0_i_1 
       (.I0(\inst/c_out_13 ),
        .I1(x[14]),
        .I2(y[14]),
        .I3(x[15]),
        .I4(y[15]),
        .O(\inst/s [15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[15]_INST_0_i_2 
       (.I0(y[13]),
        .I1(x[13]),
        .I2(y[12]),
        .I3(x[12]),
        .I4(\inst/c_out_11 ),
        .O(\inst/c_out_13 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[16]_INST_0 
       (.I0(\inst/s [16]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \r[16]_INST_0_i_1 
       (.I0(\inst/c_out_15 ),
        .I1(x[16]),
        .I2(y[16]),
        .O(\inst/s [16]));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[17]_INST_0 
       (.I0(\inst/s [17]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[17]_INST_0_i_1 
       (.I0(\inst/c_out_15 ),
        .I1(x[16]),
        .I2(y[16]),
        .I3(x[17]),
        .I4(y[17]),
        .O(\inst/s [17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[17]_INST_0_i_2 
       (.I0(y[15]),
        .I1(x[15]),
        .I2(y[14]),
        .I3(x[14]),
        .I4(\inst/c_out_13 ),
        .O(\inst/c_out_15 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[18]_INST_0 
       (.I0(\inst/s [18]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[18]_INST_0_i_1 
       (.I0(\inst/c_out_16 ),
        .I1(x[17]),
        .I2(y[17]),
        .I3(x[18]),
        .I4(y[18]),
        .O(\inst/s [18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[18]_INST_0_i_2 
       (.I0(y[16]),
        .I1(x[16]),
        .I2(y[15]),
        .I3(x[15]),
        .I4(\inst/c_out_14 ),
        .O(\inst/c_out_16 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[18]_INST_0_i_3 
       (.I0(y[14]),
        .I1(x[14]),
        .I2(y[13]),
        .I3(x[13]),
        .I4(\inst/c_out_12 ),
        .O(\inst/c_out_14 ));
  LUT6 #(
    .INIT(64'hE888EEE8EEE8E888)) 
    \r[18]_INST_0_i_4 
       (.I0(y[12]),
        .I1(x[12]),
        .I2(y[11]),
        .I3(x[11]),
        .I4(\inst/add10/c_out00_out ),
        .I5(\inst/add10/c_out0__0 ),
        .O(\inst/c_out_12 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r[18]_INST_0_i_5 
       (.I0(x[10]),
        .I1(y[10]),
        .O(\inst/add10/c_out00_out ));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \r[18]_INST_0_i_6 
       (.I0(\inst/c_out_7 ),
        .I1(x[8]),
        .I2(y[8]),
        .I3(x[9]),
        .I4(y[9]),
        .I5(\inst/add10/s0__0 ),
        .O(\inst/add10/c_out0__0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[18]_INST_0_i_7 
       (.I0(y[10]),
        .I1(x[10]),
        .O(\inst/add10/s0__0 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[19]_INST_0 
       (.I0(\inst/s [19]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[19]));
  LUT3 #(
    .INIT(8'h96)) 
    \r[19]_INST_0_i_1 
       (.I0(\inst/c_out_18 ),
        .I1(x[19]),
        .I2(y[19]),
        .O(\inst/s [19]));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[1]_INST_0 
       (.I0(\inst/s [1]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \r[1]_INST_0_i_1 
       (.I0(y[0]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(y[1]),
        .O(\inst/s [1]));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[20]_INST_0 
       (.I0(\inst/s [20]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[20]_INST_0_i_1 
       (.I0(\inst/c_out_18 ),
        .I1(x[19]),
        .I2(y[19]),
        .I3(x[20]),
        .I4(y[20]),
        .O(\inst/s [20]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[20]_INST_0_i_2 
       (.I0(y[18]),
        .I1(x[18]),
        .I2(y[17]),
        .I3(x[17]),
        .I4(\inst/c_out_16 ),
        .O(\inst/c_out_18 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[21]_INST_0 
       (.I0(\inst/s [21]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \r[21]_INST_0_i_1 
       (.I0(\inst/c_out_20 ),
        .I1(x[21]),
        .I2(y[21]),
        .O(\inst/s [21]));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[22]_INST_0 
       (.I0(\inst/s [22]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[22]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[22]_INST_0_i_1 
       (.I0(\inst/c_out_20 ),
        .I1(x[21]),
        .I2(y[21]),
        .I3(x[22]),
        .I4(y[22]),
        .O(\inst/s [22]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[22]_INST_0_i_2 
       (.I0(y[20]),
        .I1(x[20]),
        .I2(y[19]),
        .I3(x[19]),
        .I4(\inst/c_out_18 ),
        .O(\inst/c_out_20 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[23]_INST_0 
       (.I0(\inst/s [23]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[23]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[23]_INST_0_i_1 
       (.I0(\inst/c_out_21 ),
        .I1(x[22]),
        .I2(y[22]),
        .I3(x[23]),
        .I4(y[23]),
        .O(\inst/s [23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[23]_INST_0_i_2 
       (.I0(y[21]),
        .I1(x[21]),
        .I2(y[20]),
        .I3(x[20]),
        .I4(\inst/c_out_19 ),
        .O(\inst/c_out_21 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[23]_INST_0_i_3 
       (.I0(y[19]),
        .I1(x[19]),
        .I2(y[18]),
        .I3(x[18]),
        .I4(\inst/c_out_17 ),
        .O(\inst/c_out_19 ));
  LUT6 #(
    .INIT(64'hE888EEE8EEE8E888)) 
    \r[23]_INST_0_i_4 
       (.I0(y[17]),
        .I1(x[17]),
        .I2(y[16]),
        .I3(x[16]),
        .I4(\inst/add15/c_out00_out ),
        .I5(\inst/add15/c_out0__0 ),
        .O(\inst/c_out_17 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r[23]_INST_0_i_5 
       (.I0(x[15]),
        .I1(y[15]),
        .O(\inst/add15/c_out00_out ));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \r[23]_INST_0_i_6 
       (.I0(\inst/c_out_12 ),
        .I1(x[13]),
        .I2(y[13]),
        .I3(x[14]),
        .I4(y[14]),
        .I5(\inst/add15/s0__0 ),
        .O(\inst/add15/c_out0__0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[23]_INST_0_i_7 
       (.I0(y[15]),
        .I1(x[15]),
        .O(\inst/add15/s0__0 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[24]_INST_0 
       (.I0(\inst/s [24]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[24]));
  LUT3 #(
    .INIT(8'h96)) 
    \r[24]_INST_0_i_1 
       (.I0(\inst/c_out_23 ),
        .I1(x[24]),
        .I2(y[24]),
        .O(\inst/s [24]));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[25]_INST_0 
       (.I0(\inst/s [25]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[25]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[25]_INST_0_i_1 
       (.I0(\inst/c_out_23 ),
        .I1(x[24]),
        .I2(y[24]),
        .I3(x[25]),
        .I4(y[25]),
        .O(\inst/s [25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[25]_INST_0_i_2 
       (.I0(y[23]),
        .I1(x[23]),
        .I2(y[22]),
        .I3(x[22]),
        .I4(\inst/c_out_21 ),
        .O(\inst/c_out_23 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[26]_INST_0 
       (.I0(\inst/s [26]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[26]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \r[26]_INST_0_i_1 
       (.I0(\inst/c_out_25 ),
        .I1(x[26]),
        .I2(y[26]),
        .O(\inst/s [26]));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[27]_INST_0 
       (.I0(\inst/s [27]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[27]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[27]_INST_0_i_1 
       (.I0(\inst/c_out_25 ),
        .I1(x[26]),
        .I2(y[26]),
        .I3(x[27]),
        .I4(y[27]),
        .O(\inst/s [27]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[27]_INST_0_i_2 
       (.I0(y[25]),
        .I1(x[25]),
        .I2(y[24]),
        .I3(x[24]),
        .I4(\inst/c_out_23 ),
        .O(\inst/c_out_25 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[28]_INST_0 
       (.I0(\inst/s [28]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[28]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[28]_INST_0_i_1 
       (.I0(\inst/c_out_26 ),
        .I1(x[27]),
        .I2(y[27]),
        .I3(x[28]),
        .I4(y[28]),
        .O(\inst/s [28]));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[29]_INST_0 
       (.I0(\inst/s [29]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[29]));
  LUT6 #(
    .INIT(64'h001717FFFFE8E800)) 
    \r[29]_INST_0_i_1 
       (.I0(\inst/c_out_26 ),
        .I1(x[27]),
        .I2(y[27]),
        .I3(x[28]),
        .I4(y[28]),
        .I5(\inst/add29/s0__0 ),
        .O(\inst/s [29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[29]_INST_0_i_2 
       (.I0(y[26]),
        .I1(x[26]),
        .I2(y[25]),
        .I3(x[25]),
        .I4(\inst/c_out_24 ),
        .O(\inst/c_out_26 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r[29]_INST_0_i_3 
       (.I0(y[29]),
        .I1(x[29]),
        .O(\inst/add29/s0__0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[29]_INST_0_i_4 
       (.I0(y[24]),
        .I1(x[24]),
        .I2(y[23]),
        .I3(x[23]),
        .I4(\inst/c_out_22 ),
        .O(\inst/c_out_24 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[2]_INST_0 
       (.I0(\inst/s [2]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[2]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \r[2]_INST_0_i_1 
       (.I0(y[0]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(y[1]),
        .I4(x[2]),
        .I5(y[2]),
        .O(\inst/s [2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC114D77C)) 
    \r[30]_INST_0 
       (.I0(x[31]),
        .I1(y[30]),
        .I2(x[30]),
        .I3(\inst/c_out_29 ),
        .I4(y[31]),
        .O(r[30]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hABBF022A)) 
    \r[31]_INST_0 
       (.I0(y[31]),
        .I1(\inst/c_out_29 ),
        .I2(x[30]),
        .I3(y[30]),
        .I4(x[31]),
        .O(r[31]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[31]_INST_0_i_1 
       (.I0(y[29]),
        .I1(x[29]),
        .I2(y[28]),
        .I3(x[28]),
        .I4(\inst/c_out_27 ),
        .O(\inst/c_out_29 ));
  LUT6 #(
    .INIT(64'hE888EEE8EEE8E888)) 
    \r[31]_INST_0_i_2 
       (.I0(y[27]),
        .I1(x[27]),
        .I2(y[26]),
        .I3(x[26]),
        .I4(\inst/add25/c_out00_out ),
        .I5(\inst/add25/c_out0__0 ),
        .O(\inst/c_out_27 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r[31]_INST_0_i_3 
       (.I0(x[25]),
        .I1(y[25]),
        .O(\inst/add25/c_out00_out ));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \r[31]_INST_0_i_4 
       (.I0(\inst/c_out_22 ),
        .I1(x[23]),
        .I2(y[23]),
        .I3(x[24]),
        .I4(y[24]),
        .I5(\inst/add25/s0__0 ),
        .O(\inst/add25/c_out0__0 ));
  LUT6 #(
    .INIT(64'hE888EEE8EEE8E888)) 
    \r[31]_INST_0_i_5 
       (.I0(y[22]),
        .I1(x[22]),
        .I2(y[21]),
        .I3(x[21]),
        .I4(\inst/add20/c_out00_out ),
        .I5(\inst/add20/c_out0__0 ),
        .O(\inst/c_out_22 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[31]_INST_0_i_6 
       (.I0(y[25]),
        .I1(x[25]),
        .O(\inst/add25/s0__0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r[31]_INST_0_i_7 
       (.I0(x[20]),
        .I1(y[20]),
        .O(\inst/add20/c_out00_out ));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \r[31]_INST_0_i_8 
       (.I0(\inst/c_out_17 ),
        .I1(x[18]),
        .I2(y[18]),
        .I3(x[19]),
        .I4(y[19]),
        .I5(\inst/add20/s0__0 ),
        .O(\inst/add20/c_out0__0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[31]_INST_0_i_9 
       (.I0(y[20]),
        .I1(x[20]),
        .O(\inst/add20/s0__0 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[3]_INST_0 
       (.I0(\inst/s [3]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \r[3]_INST_0_i_1 
       (.I0(\inst/c_out_2 ),
        .I1(x[3]),
        .I2(y[3]),
        .O(\inst/s [3]));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[4]_INST_0 
       (.I0(\inst/s [4]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[4]_INST_0_i_1 
       (.I0(\inst/c_out_2 ),
        .I1(x[3]),
        .I2(y[3]),
        .I3(x[4]),
        .I4(y[4]),
        .O(\inst/s [4]));
  LUT6 #(
    .INIT(64'hEEE8E888E888E888)) 
    \r[4]_INST_0_i_2 
       (.I0(y[2]),
        .I1(x[2]),
        .I2(y[1]),
        .I3(x[1]),
        .I4(x[0]),
        .I5(y[0]),
        .O(\inst/c_out_2 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[5]_INST_0 
       (.I0(\inst/s [5]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \r[5]_INST_0_i_1 
       (.I0(\inst/c_out_4 ),
        .I1(x[5]),
        .I2(y[5]),
        .O(\inst/s [5]));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[6]_INST_0 
       (.I0(\inst/s [6]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[6]_INST_0_i_1 
       (.I0(\inst/c_out_4 ),
        .I1(x[5]),
        .I2(y[5]),
        .I3(x[6]),
        .I4(y[6]),
        .O(\inst/s [6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[6]_INST_0_i_2 
       (.I0(y[4]),
        .I1(x[4]),
        .I2(y[3]),
        .I3(x[3]),
        .I4(\inst/c_out_2 ),
        .O(\inst/c_out_4 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[7]_INST_0 
       (.I0(\inst/s [7]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \r[7]_INST_0_i_1 
       (.I0(\inst/c_out_6 ),
        .I1(x[7]),
        .I2(y[7]),
        .O(\inst/s [7]));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[8]_INST_0 
       (.I0(\inst/s [8]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \r[8]_INST_0_i_1 
       (.I0(\inst/c_out_6 ),
        .I1(x[7]),
        .I2(y[7]),
        .I3(x[8]),
        .I4(y[8]),
        .O(\inst/s [8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \r[8]_INST_0_i_2 
       (.I0(y[6]),
        .I1(x[6]),
        .I2(y[5]),
        .I3(x[5]),
        .I4(\inst/c_out_4 ),
        .O(\inst/c_out_6 ));
  LUT6 #(
    .INIT(64'hAAA2A222BBBABAAA)) 
    \r[9]_INST_0 
       (.I0(\inst/s [9]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[9]));
  LUT3 #(
    .INIT(8'h96)) 
    \r[9]_INST_0_i_1 
       (.I0(\inst/c_out_8 ),
        .I1(x[9]),
        .I2(y[9]),
        .O(\inst/s [9]));
endmodule

(* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_subtracter32_ip" *) (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
module butterfly_full_0_adder_subtracter32_ip__2
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
  wire \inst/add10/c_out0__0 ;
  wire \inst/add11/c_out0__0 ;
  wire \inst/add12/c_out0__0 ;
  wire \inst/add13/c_out0__0 ;
  wire \inst/add14/c_out0__0 ;
  wire \inst/add15/c_out0__0 ;
  wire \inst/add16/c_out0__0 ;
  wire \inst/add17/c_out0__0 ;
  wire \inst/add18/c_out0__0 ;
  wire \inst/add19/c_out0__0 ;
  wire \inst/add2/c_out0__0 ;
  wire \inst/add20/c_out0__0 ;
  wire \inst/add21/c_out0__0 ;
  wire \inst/add22/c_out0__0 ;
  wire \inst/add23/c_out0__0 ;
  wire \inst/add24/c_out0__0 ;
  wire \inst/add25/c_out0__0 ;
  wire \inst/add26/c_out0__0 ;
  wire \inst/add27/c_out0__0 ;
  wire \inst/add28/c_out0__0 ;
  wire \inst/add3/c_out0__0 ;
  wire \inst/add4/c_out0__0 ;
  wire \inst/add5/c_out0__0 ;
  wire \inst/add6/c_out0__0 ;
  wire \inst/add7/c_out0__0 ;
  wire \inst/add8/c_out0__0 ;
  wire \inst/add9/c_out0__0 ;
  wire \inst/c_out_1 ;
  wire [1:1]\inst/s ;
  wire [31:0]r;
  wire [31:0]x;
  wire [31:0]y;

  assign v = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[0]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[0]),
        .I5(y[0]),
        .O(r[0]));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[10]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[10]),
        .I5(\inst/add9/c_out0__0 ),
        .O(r[10]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[10]_INST_0_i_1 
       (.I0(\inst/add8/c_out0__0 ),
        .I1(x[9]),
        .O(\inst/add9/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[11]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[11]),
        .I5(\inst/add10/c_out0__0 ),
        .O(r[11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r[11]_INST_0_i_1 
       (.I0(x[9]),
        .I1(\inst/add8/c_out0__0 ),
        .I2(x[10]),
        .O(\inst/add10/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[12]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[12]),
        .I5(\inst/add11/c_out0__0 ),
        .O(r[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r[12]_INST_0_i_1 
       (.I0(x[10]),
        .I1(\inst/add8/c_out0__0 ),
        .I2(x[9]),
        .I3(x[11]),
        .O(\inst/add11/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[13]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[13]),
        .I5(\inst/add12/c_out0__0 ),
        .O(r[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r[13]_INST_0_i_1 
       (.I0(x[11]),
        .I1(x[9]),
        .I2(\inst/add8/c_out0__0 ),
        .I3(x[10]),
        .I4(x[12]),
        .O(\inst/add12/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[14]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[14]),
        .I5(\inst/add13/c_out0__0 ),
        .O(r[14]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r[14]_INST_0_i_1 
       (.I0(x[12]),
        .I1(x[10]),
        .I2(\inst/add8/c_out0__0 ),
        .I3(x[9]),
        .I4(x[11]),
        .I5(x[13]),
        .O(\inst/add13/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[15]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[15]),
        .I5(\inst/add14/c_out0__0 ),
        .O(r[15]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[15]_INST_0_i_1 
       (.I0(\inst/add13/c_out0__0 ),
        .I1(x[14]),
        .O(\inst/add14/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[16]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[16]),
        .I5(\inst/add15/c_out0__0 ),
        .O(r[16]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r[16]_INST_0_i_1 
       (.I0(x[14]),
        .I1(\inst/add13/c_out0__0 ),
        .I2(x[15]),
        .O(\inst/add15/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[17]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[17]),
        .I5(\inst/add16/c_out0__0 ),
        .O(r[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r[17]_INST_0_i_1 
       (.I0(x[15]),
        .I1(\inst/add13/c_out0__0 ),
        .I2(x[14]),
        .I3(x[16]),
        .O(\inst/add16/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[18]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[18]),
        .I5(\inst/add17/c_out0__0 ),
        .O(r[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r[18]_INST_0_i_1 
       (.I0(x[16]),
        .I1(x[14]),
        .I2(\inst/add13/c_out0__0 ),
        .I3(x[15]),
        .I4(x[17]),
        .O(\inst/add17/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[19]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[19]),
        .I5(\inst/add18/c_out0__0 ),
        .O(r[19]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r[19]_INST_0_i_1 
       (.I0(x[17]),
        .I1(x[15]),
        .I2(\inst/add13/c_out0__0 ),
        .I3(x[14]),
        .I4(x[16]),
        .I5(x[18]),
        .O(\inst/add18/c_out0__0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \r[1]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(\inst/s ),
        .O(r[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \r[1]_INST_0_i_1 
       (.I0(y[0]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(y[1]),
        .O(\inst/s ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[20]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[20]),
        .I5(\inst/add19/c_out0__0 ),
        .O(r[20]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[20]_INST_0_i_1 
       (.I0(\inst/add18/c_out0__0 ),
        .I1(x[19]),
        .O(\inst/add19/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[21]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[21]),
        .I5(\inst/add20/c_out0__0 ),
        .O(r[21]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r[21]_INST_0_i_1 
       (.I0(x[19]),
        .I1(\inst/add18/c_out0__0 ),
        .I2(x[20]),
        .O(\inst/add20/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[22]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[22]),
        .I5(\inst/add21/c_out0__0 ),
        .O(r[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r[22]_INST_0_i_1 
       (.I0(x[20]),
        .I1(\inst/add18/c_out0__0 ),
        .I2(x[19]),
        .I3(x[21]),
        .O(\inst/add21/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[23]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[23]),
        .I5(\inst/add22/c_out0__0 ),
        .O(r[23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r[23]_INST_0_i_1 
       (.I0(x[21]),
        .I1(x[19]),
        .I2(\inst/add18/c_out0__0 ),
        .I3(x[20]),
        .I4(x[22]),
        .O(\inst/add22/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[24]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[24]),
        .I5(\inst/add23/c_out0__0 ),
        .O(r[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r[24]_INST_0_i_1 
       (.I0(x[22]),
        .I1(x[20]),
        .I2(\inst/add18/c_out0__0 ),
        .I3(x[19]),
        .I4(x[21]),
        .I5(x[23]),
        .O(\inst/add23/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[25]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[25]),
        .I5(\inst/add24/c_out0__0 ),
        .O(r[25]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[25]_INST_0_i_1 
       (.I0(\inst/add23/c_out0__0 ),
        .I1(x[24]),
        .O(\inst/add24/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[26]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[26]),
        .I5(\inst/add25/c_out0__0 ),
        .O(r[26]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r[26]_INST_0_i_1 
       (.I0(x[24]),
        .I1(\inst/add23/c_out0__0 ),
        .I2(x[25]),
        .O(\inst/add25/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF0000)) 
    \r[27]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(x[28]),
        .I3(x[30]),
        .I4(x[27]),
        .I5(\inst/add26/c_out0__0 ),
        .O(r[27]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r[27]_INST_0_i_1 
       (.I0(x[25]),
        .I1(\inst/add23/c_out0__0 ),
        .I2(x[24]),
        .I3(x[26]),
        .O(\inst/add26/c_out0__0 ));
  LUT5 #(
    .INIT(32'h40FFFF00)) 
    \r[28]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(x[30]),
        .I3(x[28]),
        .I4(\inst/add27/c_out0__0 ),
        .O(r[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r[28]_INST_0_i_1 
       (.I0(x[26]),
        .I1(x[24]),
        .I2(\inst/add23/c_out0__0 ),
        .I3(x[25]),
        .I4(x[27]),
        .O(\inst/add27/c_out0__0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4FF0)) 
    \r[29]_INST_0 
       (.I0(x[31]),
        .I1(x[30]),
        .I2(x[29]),
        .I3(\inst/add28/c_out0__0 ),
        .O(r[29]));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[2]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[2]),
        .I5(\inst/c_out_1 ),
        .O(r[2]));
  LUT4 #(
    .INIT(16'hE888)) 
    \r[2]_INST_0_i_1 
       (.I0(y[1]),
        .I1(x[1]),
        .I2(x[0]),
        .I3(y[0]),
        .O(\inst/c_out_1 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7CCC)) 
    \r[30]_INST_0 
       (.I0(x[31]),
        .I1(x[30]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[29]),
        .O(r[30]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \r[31]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .O(r[31]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r[31]_INST_0_i_1 
       (.I0(x[27]),
        .I1(x[25]),
        .I2(\inst/add23/c_out0__0 ),
        .I3(x[24]),
        .I4(x[26]),
        .I5(x[28]),
        .O(\inst/add28/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[3]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[3]),
        .I5(\inst/add2/c_out0__0 ),
        .O(r[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hF8800000)) 
    \r[3]_INST_0_i_1 
       (.I0(y[0]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(y[1]),
        .I4(x[2]),
        .O(\inst/add2/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[4]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[4]),
        .I5(\inst/add3/c_out0__0 ),
        .O(r[4]));
  LUT6 #(
    .INIT(64'hA880808000000000)) 
    \r[4]_INST_0_i_1 
       (.I0(x[2]),
        .I1(y[1]),
        .I2(x[1]),
        .I3(x[0]),
        .I4(y[0]),
        .I5(x[3]),
        .O(\inst/add3/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[5]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[5]),
        .I5(\inst/add4/c_out0__0 ),
        .O(r[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[5]_INST_0_i_1 
       (.I0(\inst/add3/c_out0__0 ),
        .I1(x[4]),
        .O(\inst/add4/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[6]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[6]),
        .I5(\inst/add5/c_out0__0 ),
        .O(r[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r[6]_INST_0_i_1 
       (.I0(x[4]),
        .I1(\inst/add3/c_out0__0 ),
        .I2(x[5]),
        .O(\inst/add5/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[7]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[7]),
        .I5(\inst/add6/c_out0__0 ),
        .O(r[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r[7]_INST_0_i_1 
       (.I0(x[5]),
        .I1(\inst/add3/c_out0__0 ),
        .I2(x[4]),
        .I3(x[6]),
        .O(\inst/add6/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[8]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[8]),
        .I5(\inst/add7/c_out0__0 ),
        .O(r[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r[8]_INST_0_i_1 
       (.I0(x[6]),
        .I1(x[4]),
        .I2(\inst/add3/c_out0__0 ),
        .I3(x[5]),
        .I4(x[7]),
        .O(\inst/add7/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4000FFFFFFFF4000)) 
    \r[9]_INST_0 
       (.I0(x[31]),
        .I1(x[29]),
        .I2(\inst/add28/c_out0__0 ),
        .I3(x[30]),
        .I4(x[9]),
        .I5(\inst/add8/c_out0__0 ),
        .O(r[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r[9]_INST_0_i_1 
       (.I0(x[7]),
        .I1(x[5]),
        .I2(\inst/add3/c_out0__0 ),
        .I3(x[4]),
        .I4(x[6]),
        .I5(x[8]),
        .O(\inst/add8/c_out0__0 ));
endmodule

(* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_subtracter32_ip" *) (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
module butterfly_full_0_adder_subtracter32_ip__3
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
  wire \inst/add10/c_out0__0 ;
  wire \inst/add15/c_out0__0 ;
  wire \inst/add20/c_out0__0 ;
  wire \inst/add25/c_out0__0 ;
  wire \inst/add5/c_out0__0 ;
  wire \inst/c_out_10 ;
  wire \inst/c_out_11 ;
  wire \inst/c_out_12 ;
  wire \inst/c_out_13 ;
  wire \inst/c_out_14 ;
  wire \inst/c_out_15 ;
  wire \inst/c_out_16 ;
  wire \inst/c_out_17 ;
  wire \inst/c_out_18 ;
  wire \inst/c_out_19 ;
  wire \inst/c_out_2 ;
  wire \inst/c_out_20 ;
  wire \inst/c_out_21 ;
  wire \inst/c_out_22 ;
  wire \inst/c_out_23 ;
  wire \inst/c_out_24 ;
  wire \inst/c_out_25 ;
  wire \inst/c_out_26 ;
  wire \inst/c_out_27 ;
  wire \inst/c_out_29 ;
  wire \inst/c_out_4 ;
  wire \inst/c_out_6 ;
  wire \inst/c_out_7 ;
  wire \inst/c_out_8 ;
  wire \inst/c_out_9 ;
  wire [29:1]\inst/s ;
  wire [31:0]r;
  wire \r[0]_INST_0_i_1_n_0 ;
  wire \r[13]_INST_0_i_5_n_0 ;
  wire \r[13]_INST_0_i_7_n_0 ;
  wire \r[18]_INST_0_i_5_n_0 ;
  wire \r[18]_INST_0_i_7_n_0 ;
  wire \r[23]_INST_0_i_5_n_0 ;
  wire \r[23]_INST_0_i_7_n_0 ;
  wire \r[29]_INST_0_i_3_n_0 ;
  wire \r[31]_INST_0_i_3_n_0 ;
  wire \r[31]_INST_0_i_6_n_0 ;
  wire \r[31]_INST_0_i_7_n_0 ;
  wire \r[31]_INST_0_i_9_n_0 ;
  wire [31:0]x;
  wire [31:0]y;

  assign v = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h5555555555151511)) 
    \r[0]_INST_0 
       (.I0(\r[0]_INST_0_i_1_n_0 ),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \r[0]_INST_0_i_1 
       (.I0(y[0]),
        .I1(x[0]),
        .O(\r[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[10]_INST_0 
       (.I0(\inst/s [10]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[10]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[10]_INST_0_i_1 
       (.I0(\inst/c_out_8 ),
        .I1(x[9]),
        .I2(y[9]),
        .I3(x[10]),
        .I4(y[10]),
        .O(\inst/s [10]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[10]_INST_0_i_2 
       (.I0(y[8]),
        .I1(x[8]),
        .I2(y[7]),
        .I3(x[7]),
        .I4(\inst/c_out_6 ),
        .O(\inst/c_out_8 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[11]_INST_0 
       (.I0(\inst/s [11]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \r[11]_INST_0_i_1 
       (.I0(\inst/c_out_10 ),
        .I1(x[11]),
        .I2(y[11]),
        .O(\inst/s [11]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[12]_INST_0 
       (.I0(\inst/s [12]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[12]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[12]_INST_0_i_1 
       (.I0(\inst/c_out_10 ),
        .I1(x[11]),
        .I2(y[11]),
        .I3(x[12]),
        .I4(y[12]),
        .O(\inst/s [12]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[12]_INST_0_i_2 
       (.I0(y[10]),
        .I1(x[10]),
        .I2(y[9]),
        .I3(x[9]),
        .I4(\inst/c_out_8 ),
        .O(\inst/c_out_10 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[13]_INST_0 
       (.I0(\inst/s [13]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[13]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[13]_INST_0_i_1 
       (.I0(\inst/c_out_11 ),
        .I1(x[12]),
        .I2(y[12]),
        .I3(x[13]),
        .I4(y[13]),
        .O(\inst/s [13]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[13]_INST_0_i_2 
       (.I0(y[11]),
        .I1(x[11]),
        .I2(y[10]),
        .I3(x[10]),
        .I4(\inst/c_out_9 ),
        .O(\inst/c_out_11 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[13]_INST_0_i_3 
       (.I0(y[9]),
        .I1(x[9]),
        .I2(y[8]),
        .I3(x[8]),
        .I4(\inst/c_out_7 ),
        .O(\inst/c_out_9 ));
  LUT6 #(
    .INIT(64'h4D44DD4DDD4D4D44)) 
    \r[13]_INST_0_i_4 
       (.I0(y[7]),
        .I1(x[7]),
        .I2(y[6]),
        .I3(x[6]),
        .I4(\r[13]_INST_0_i_5_n_0 ),
        .I5(\inst/add5/c_out0__0 ),
        .O(\inst/c_out_7 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[13]_INST_0_i_5 
       (.I0(x[5]),
        .I1(y[5]),
        .O(\r[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E00FF8E00000000)) 
    \r[13]_INST_0_i_6 
       (.I0(\inst/c_out_2 ),
        .I1(x[3]),
        .I2(y[3]),
        .I3(x[4]),
        .I4(y[4]),
        .I5(\r[13]_INST_0_i_7_n_0 ),
        .O(\inst/add5/c_out0__0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[13]_INST_0_i_7 
       (.I0(y[5]),
        .I1(x[5]),
        .O(\r[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[14]_INST_0 
       (.I0(\inst/s [14]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[14]));
  LUT3 #(
    .INIT(8'h69)) 
    \r[14]_INST_0_i_1 
       (.I0(\inst/c_out_13 ),
        .I1(x[14]),
        .I2(y[14]),
        .O(\inst/s [14]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[15]_INST_0 
       (.I0(\inst/s [15]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[15]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[15]_INST_0_i_1 
       (.I0(\inst/c_out_13 ),
        .I1(x[14]),
        .I2(y[14]),
        .I3(x[15]),
        .I4(y[15]),
        .O(\inst/s [15]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[15]_INST_0_i_2 
       (.I0(y[13]),
        .I1(x[13]),
        .I2(y[12]),
        .I3(x[12]),
        .I4(\inst/c_out_11 ),
        .O(\inst/c_out_13 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[16]_INST_0 
       (.I0(\inst/s [16]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[16]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \r[16]_INST_0_i_1 
       (.I0(\inst/c_out_15 ),
        .I1(x[16]),
        .I2(y[16]),
        .O(\inst/s [16]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[17]_INST_0 
       (.I0(\inst/s [17]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[17]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[17]_INST_0_i_1 
       (.I0(\inst/c_out_15 ),
        .I1(x[16]),
        .I2(y[16]),
        .I3(x[17]),
        .I4(y[17]),
        .O(\inst/s [17]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[17]_INST_0_i_2 
       (.I0(y[15]),
        .I1(x[15]),
        .I2(y[14]),
        .I3(x[14]),
        .I4(\inst/c_out_13 ),
        .O(\inst/c_out_15 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[18]_INST_0 
       (.I0(\inst/s [18]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[18]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[18]_INST_0_i_1 
       (.I0(\inst/c_out_16 ),
        .I1(x[17]),
        .I2(y[17]),
        .I3(x[18]),
        .I4(y[18]),
        .O(\inst/s [18]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[18]_INST_0_i_2 
       (.I0(y[16]),
        .I1(x[16]),
        .I2(y[15]),
        .I3(x[15]),
        .I4(\inst/c_out_14 ),
        .O(\inst/c_out_16 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[18]_INST_0_i_3 
       (.I0(y[14]),
        .I1(x[14]),
        .I2(y[13]),
        .I3(x[13]),
        .I4(\inst/c_out_12 ),
        .O(\inst/c_out_14 ));
  LUT6 #(
    .INIT(64'h4D44DD4DDD4D4D44)) 
    \r[18]_INST_0_i_4 
       (.I0(y[12]),
        .I1(x[12]),
        .I2(y[11]),
        .I3(x[11]),
        .I4(\r[18]_INST_0_i_5_n_0 ),
        .I5(\inst/add10/c_out0__0 ),
        .O(\inst/c_out_12 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[18]_INST_0_i_5 
       (.I0(x[10]),
        .I1(y[10]),
        .O(\r[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E00FF8E00000000)) 
    \r[18]_INST_0_i_6 
       (.I0(\inst/c_out_7 ),
        .I1(x[8]),
        .I2(y[8]),
        .I3(x[9]),
        .I4(y[9]),
        .I5(\r[18]_INST_0_i_7_n_0 ),
        .O(\inst/add10/c_out0__0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[18]_INST_0_i_7 
       (.I0(y[10]),
        .I1(x[10]),
        .O(\r[18]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[19]_INST_0 
       (.I0(\inst/s [19]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[19]));
  LUT3 #(
    .INIT(8'h69)) 
    \r[19]_INST_0_i_1 
       (.I0(\inst/c_out_18 ),
        .I1(x[19]),
        .I2(y[19]),
        .O(\inst/s [19]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[1]_INST_0 
       (.I0(\inst/s [1]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \r[1]_INST_0_i_1 
       (.I0(y[0]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(y[1]),
        .O(\inst/s [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[20]_INST_0 
       (.I0(\inst/s [20]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[20]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[20]_INST_0_i_1 
       (.I0(\inst/c_out_18 ),
        .I1(x[19]),
        .I2(y[19]),
        .I3(x[20]),
        .I4(y[20]),
        .O(\inst/s [20]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[20]_INST_0_i_2 
       (.I0(y[18]),
        .I1(x[18]),
        .I2(y[17]),
        .I3(x[17]),
        .I4(\inst/c_out_16 ),
        .O(\inst/c_out_18 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[21]_INST_0 
       (.I0(\inst/s [21]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[21]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \r[21]_INST_0_i_1 
       (.I0(\inst/c_out_20 ),
        .I1(x[21]),
        .I2(y[21]),
        .O(\inst/s [21]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[22]_INST_0 
       (.I0(\inst/s [22]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[22]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[22]_INST_0_i_1 
       (.I0(\inst/c_out_20 ),
        .I1(x[21]),
        .I2(y[21]),
        .I3(x[22]),
        .I4(y[22]),
        .O(\inst/s [22]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[22]_INST_0_i_2 
       (.I0(y[20]),
        .I1(x[20]),
        .I2(y[19]),
        .I3(x[19]),
        .I4(\inst/c_out_18 ),
        .O(\inst/c_out_20 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[23]_INST_0 
       (.I0(\inst/s [23]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[23]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[23]_INST_0_i_1 
       (.I0(\inst/c_out_21 ),
        .I1(x[22]),
        .I2(y[22]),
        .I3(x[23]),
        .I4(y[23]),
        .O(\inst/s [23]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[23]_INST_0_i_2 
       (.I0(y[21]),
        .I1(x[21]),
        .I2(y[20]),
        .I3(x[20]),
        .I4(\inst/c_out_19 ),
        .O(\inst/c_out_21 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[23]_INST_0_i_3 
       (.I0(y[19]),
        .I1(x[19]),
        .I2(y[18]),
        .I3(x[18]),
        .I4(\inst/c_out_17 ),
        .O(\inst/c_out_19 ));
  LUT6 #(
    .INIT(64'h4D44DD4DDD4D4D44)) 
    \r[23]_INST_0_i_4 
       (.I0(y[17]),
        .I1(x[17]),
        .I2(y[16]),
        .I3(x[16]),
        .I4(\r[23]_INST_0_i_5_n_0 ),
        .I5(\inst/add15/c_out0__0 ),
        .O(\inst/c_out_17 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[23]_INST_0_i_5 
       (.I0(x[15]),
        .I1(y[15]),
        .O(\r[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E00FF8E00000000)) 
    \r[23]_INST_0_i_6 
       (.I0(\inst/c_out_12 ),
        .I1(x[13]),
        .I2(y[13]),
        .I3(x[14]),
        .I4(y[14]),
        .I5(\r[23]_INST_0_i_7_n_0 ),
        .O(\inst/add15/c_out0__0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[23]_INST_0_i_7 
       (.I0(y[15]),
        .I1(x[15]),
        .O(\r[23]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[24]_INST_0 
       (.I0(\inst/s [24]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[24]));
  LUT3 #(
    .INIT(8'h69)) 
    \r[24]_INST_0_i_1 
       (.I0(\inst/c_out_23 ),
        .I1(x[24]),
        .I2(y[24]),
        .O(\inst/s [24]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[25]_INST_0 
       (.I0(\inst/s [25]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[25]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[25]_INST_0_i_1 
       (.I0(\inst/c_out_23 ),
        .I1(x[24]),
        .I2(y[24]),
        .I3(x[25]),
        .I4(y[25]),
        .O(\inst/s [25]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[25]_INST_0_i_2 
       (.I0(y[23]),
        .I1(x[23]),
        .I2(y[22]),
        .I3(x[22]),
        .I4(\inst/c_out_21 ),
        .O(\inst/c_out_23 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[26]_INST_0 
       (.I0(\inst/s [26]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[26]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \r[26]_INST_0_i_1 
       (.I0(\inst/c_out_25 ),
        .I1(x[26]),
        .I2(y[26]),
        .O(\inst/s [26]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[27]_INST_0 
       (.I0(\inst/s [27]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[27]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[27]_INST_0_i_1 
       (.I0(\inst/c_out_25 ),
        .I1(x[26]),
        .I2(y[26]),
        .I3(x[27]),
        .I4(y[27]),
        .O(\inst/s [27]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[27]_INST_0_i_2 
       (.I0(y[25]),
        .I1(x[25]),
        .I2(y[24]),
        .I3(x[24]),
        .I4(\inst/c_out_23 ),
        .O(\inst/c_out_25 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[28]_INST_0 
       (.I0(\inst/s [28]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[28]));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[28]_INST_0_i_1 
       (.I0(\inst/c_out_26 ),
        .I1(x[27]),
        .I2(y[27]),
        .I3(x[28]),
        .I4(y[28]),
        .O(\inst/s [28]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[29]_INST_0 
       (.I0(\inst/s [29]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[29]));
  LUT6 #(
    .INIT(64'h71FF00718E00FF8E)) 
    \r[29]_INST_0_i_1 
       (.I0(\inst/c_out_26 ),
        .I1(x[27]),
        .I2(y[27]),
        .I3(x[28]),
        .I4(y[28]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(\inst/s [29]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[29]_INST_0_i_2 
       (.I0(y[26]),
        .I1(x[26]),
        .I2(y[25]),
        .I3(x[25]),
        .I4(\inst/c_out_24 ),
        .O(\inst/c_out_26 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[29]_INST_0_i_3 
       (.I0(y[29]),
        .I1(x[29]),
        .O(\r[29]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[29]_INST_0_i_4 
       (.I0(y[24]),
        .I1(x[24]),
        .I2(y[23]),
        .I3(x[23]),
        .I4(\inst/c_out_22 ),
        .O(\inst/c_out_24 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[2]_INST_0 
       (.I0(\inst/s [2]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[2]));
  LUT6 #(
    .INIT(64'h2F02D0FDD0FD2F02)) 
    \r[2]_INST_0_i_1 
       (.I0(y[0]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(y[1]),
        .I4(x[2]),
        .I5(y[2]),
        .O(\inst/s [2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h3CC33441)) 
    \r[30]_INST_0 
       (.I0(x[31]),
        .I1(y[30]),
        .I2(x[30]),
        .I3(\inst/c_out_29 ),
        .I4(y[31]),
        .O(r[30]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h66D6D6DD)) 
    \r[31]_INST_0 
       (.I0(y[31]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .O(r[31]));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[31]_INST_0_i_1 
       (.I0(y[29]),
        .I1(x[29]),
        .I2(y[28]),
        .I3(x[28]),
        .I4(\inst/c_out_27 ),
        .O(\inst/c_out_29 ));
  LUT6 #(
    .INIT(64'h4D44DD4DDD4D4D44)) 
    \r[31]_INST_0_i_2 
       (.I0(y[27]),
        .I1(x[27]),
        .I2(y[26]),
        .I3(x[26]),
        .I4(\r[31]_INST_0_i_3_n_0 ),
        .I5(\inst/add25/c_out0__0 ),
        .O(\inst/c_out_27 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[31]_INST_0_i_3 
       (.I0(x[25]),
        .I1(y[25]),
        .O(\r[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8E00FF8E00000000)) 
    \r[31]_INST_0_i_4 
       (.I0(\inst/c_out_22 ),
        .I1(x[23]),
        .I2(y[23]),
        .I3(x[24]),
        .I4(y[24]),
        .I5(\r[31]_INST_0_i_6_n_0 ),
        .O(\inst/add25/c_out0__0 ));
  LUT6 #(
    .INIT(64'h4D44DD4DDD4D4D44)) 
    \r[31]_INST_0_i_5 
       (.I0(y[22]),
        .I1(x[22]),
        .I2(y[21]),
        .I3(x[21]),
        .I4(\r[31]_INST_0_i_7_n_0 ),
        .I5(\inst/add20/c_out0__0 ),
        .O(\inst/c_out_22 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[31]_INST_0_i_6 
       (.I0(y[25]),
        .I1(x[25]),
        .O(\r[31]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[31]_INST_0_i_7 
       (.I0(x[20]),
        .I1(y[20]),
        .O(\r[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E00FF8E00000000)) 
    \r[31]_INST_0_i_8 
       (.I0(\inst/c_out_17 ),
        .I1(x[18]),
        .I2(y[18]),
        .I3(x[19]),
        .I4(y[19]),
        .I5(\r[31]_INST_0_i_9_n_0 ),
        .O(\inst/add20/c_out0__0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[31]_INST_0_i_9 
       (.I0(y[20]),
        .I1(x[20]),
        .O(\r[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[3]_INST_0 
       (.I0(\inst/s [3]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[3]));
  LUT3 #(
    .INIT(8'h69)) 
    \r[3]_INST_0_i_1 
       (.I0(\inst/c_out_2 ),
        .I1(x[3]),
        .I2(y[3]),
        .O(\inst/s [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[4]_INST_0 
       (.I0(\inst/s [4]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[4]_INST_0_i_1 
       (.I0(\inst/c_out_2 ),
        .I1(x[3]),
        .I2(y[3]),
        .I3(x[4]),
        .I4(y[4]),
        .O(\inst/s [4]));
  LUT6 #(
    .INIT(64'hDD4D4D44DD4DDD4D)) 
    \r[4]_INST_0_i_2 
       (.I0(y[2]),
        .I1(x[2]),
        .I2(y[1]),
        .I3(x[1]),
        .I4(x[0]),
        .I5(y[0]),
        .O(\inst/c_out_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[5]_INST_0 
       (.I0(\inst/s [5]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \r[5]_INST_0_i_1 
       (.I0(\inst/c_out_4 ),
        .I1(x[5]),
        .I2(y[5]),
        .O(\inst/s [5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[6]_INST_0 
       (.I0(\inst/s [6]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[6]_INST_0_i_1 
       (.I0(\inst/c_out_4 ),
        .I1(x[5]),
        .I2(y[5]),
        .I3(x[6]),
        .I4(y[6]),
        .O(\inst/s [6]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[6]_INST_0_i_2 
       (.I0(y[4]),
        .I1(x[4]),
        .I2(y[3]),
        .I3(x[3]),
        .I4(\inst/c_out_2 ),
        .O(\inst/c_out_4 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[7]_INST_0 
       (.I0(\inst/s [7]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[7]));
  LUT3 #(
    .INIT(8'h69)) 
    \r[7]_INST_0_i_1 
       (.I0(\inst/c_out_6 ),
        .I1(x[7]),
        .I2(y[7]),
        .O(\inst/s [7]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[8]_INST_0 
       (.I0(\inst/s [8]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[8]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \r[8]_INST_0_i_1 
       (.I0(\inst/c_out_6 ),
        .I1(x[7]),
        .I2(y[7]),
        .I3(x[8]),
        .I4(y[8]),
        .O(\inst/s [8]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \r[8]_INST_0_i_2 
       (.I0(y[6]),
        .I1(x[6]),
        .I2(y[5]),
        .I3(x[5]),
        .I4(\inst/c_out_4 ),
        .O(\inst/c_out_6 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2A2A22)) 
    \r[9]_INST_0 
       (.I0(\inst/s [9]),
        .I1(x[31]),
        .I2(y[30]),
        .I3(x[30]),
        .I4(\inst/c_out_29 ),
        .I5(y[31]),
        .O(r[9]));
  LUT3 #(
    .INIT(8'h69)) 
    \r[9]_INST_0_i_1 
       (.I0(\inst/c_out_8 ),
        .I1(x[9]),
        .I2(y[9]),
        .O(\inst/s [9]));
endmodule

(* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_subtracter32_ip" *) (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
module butterfly_full_0_adder_subtracter32_ip__4
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
  wire \inst/c_out_1 ;
  wire \inst/c_out_10 ;
  wire \inst/c_out_11 ;
  wire \inst/c_out_12 ;
  wire \inst/c_out_13 ;
  wire \inst/c_out_14 ;
  wire \inst/c_out_15 ;
  wire \inst/c_out_16 ;
  wire \inst/c_out_17 ;
  wire \inst/c_out_18 ;
  wire \inst/c_out_19 ;
  wire \inst/c_out_2 ;
  wire \inst/c_out_20 ;
  wire \inst/c_out_21 ;
  wire \inst/c_out_22 ;
  wire \inst/c_out_23 ;
  wire \inst/c_out_24 ;
  wire \inst/c_out_25 ;
  wire \inst/c_out_26 ;
  wire \inst/c_out_27 ;
  wire \inst/c_out_28 ;
  wire \inst/c_out_3 ;
  wire \inst/c_out_4 ;
  wire \inst/c_out_5 ;
  wire \inst/c_out_6 ;
  wire \inst/c_out_7 ;
  wire \inst/c_out_8 ;
  wire \inst/c_out_9 ;
  wire [1:1]\inst/s ;
  wire [31:0]r;
  wire [31:0]x;
  wire [31:0]y;

  assign v = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h6666666066666666)) 
    \r[0]_INST_0 
       (.I0(x[0]),
        .I1(y[0]),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[0]));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[10]_INST_0 
       (.I0(x[10]),
        .I1(\inst/c_out_9 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[10]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r[10]_INST_0_i_1 
       (.I0(x[9]),
        .I1(\inst/c_out_8 ),
        .O(\inst/c_out_9 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[11]_INST_0 
       (.I0(x[11]),
        .I1(\inst/c_out_10 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[11]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r[11]_INST_0_i_1 
       (.I0(x[10]),
        .I1(x[9]),
        .I2(\inst/c_out_8 ),
        .O(\inst/c_out_10 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[12]_INST_0 
       (.I0(x[12]),
        .I1(\inst/c_out_11 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[12]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r[12]_INST_0_i_1 
       (.I0(x[11]),
        .I1(x[10]),
        .I2(x[9]),
        .I3(\inst/c_out_8 ),
        .O(\inst/c_out_11 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[13]_INST_0 
       (.I0(x[13]),
        .I1(\inst/c_out_12 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[13]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r[13]_INST_0_i_1 
       (.I0(x[12]),
        .I1(x[11]),
        .I2(x[10]),
        .I3(x[9]),
        .I4(\inst/c_out_8 ),
        .O(\inst/c_out_12 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[14]_INST_0 
       (.I0(x[14]),
        .I1(\inst/c_out_13 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r[14]_INST_0_i_1 
       (.I0(x[13]),
        .I1(x[12]),
        .I2(x[11]),
        .I3(x[10]),
        .I4(x[9]),
        .I5(\inst/c_out_8 ),
        .O(\inst/c_out_13 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[15]_INST_0 
       (.I0(x[15]),
        .I1(\inst/c_out_14 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[15]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r[15]_INST_0_i_1 
       (.I0(x[14]),
        .I1(\inst/c_out_13 ),
        .O(\inst/c_out_14 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[16]_INST_0 
       (.I0(x[16]),
        .I1(\inst/c_out_15 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[16]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r[16]_INST_0_i_1 
       (.I0(x[15]),
        .I1(x[14]),
        .I2(\inst/c_out_13 ),
        .O(\inst/c_out_15 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[17]_INST_0 
       (.I0(x[17]),
        .I1(\inst/c_out_16 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[17]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r[17]_INST_0_i_1 
       (.I0(x[16]),
        .I1(x[15]),
        .I2(x[14]),
        .I3(\inst/c_out_13 ),
        .O(\inst/c_out_16 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[18]_INST_0 
       (.I0(x[18]),
        .I1(\inst/c_out_17 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[18]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r[18]_INST_0_i_1 
       (.I0(x[17]),
        .I1(x[16]),
        .I2(x[15]),
        .I3(x[14]),
        .I4(\inst/c_out_13 ),
        .O(\inst/c_out_17 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[19]_INST_0 
       (.I0(x[19]),
        .I1(\inst/c_out_18 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r[19]_INST_0_i_1 
       (.I0(x[18]),
        .I1(x[17]),
        .I2(x[16]),
        .I3(x[15]),
        .I4(x[14]),
        .I5(\inst/c_out_13 ),
        .O(\inst/c_out_18 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \r[1]_INST_0 
       (.I0(\inst/s ),
        .I1(\inst/c_out_28 ),
        .I2(x[29]),
        .I3(x[30]),
        .I4(x[31]),
        .O(r[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \r[1]_INST_0_i_1 
       (.I0(y[0]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(y[1]),
        .O(\inst/s ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[20]_INST_0 
       (.I0(x[20]),
        .I1(\inst/c_out_19 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[20]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r[20]_INST_0_i_1 
       (.I0(x[19]),
        .I1(\inst/c_out_18 ),
        .O(\inst/c_out_19 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[21]_INST_0 
       (.I0(x[21]),
        .I1(\inst/c_out_20 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[21]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r[21]_INST_0_i_1 
       (.I0(x[20]),
        .I1(x[19]),
        .I2(\inst/c_out_18 ),
        .O(\inst/c_out_20 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[22]_INST_0 
       (.I0(x[22]),
        .I1(\inst/c_out_21 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[22]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r[22]_INST_0_i_1 
       (.I0(x[21]),
        .I1(x[20]),
        .I2(x[19]),
        .I3(\inst/c_out_18 ),
        .O(\inst/c_out_21 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[23]_INST_0 
       (.I0(x[23]),
        .I1(\inst/c_out_22 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[23]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r[23]_INST_0_i_1 
       (.I0(x[22]),
        .I1(x[21]),
        .I2(x[20]),
        .I3(x[19]),
        .I4(\inst/c_out_18 ),
        .O(\inst/c_out_22 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[24]_INST_0 
       (.I0(x[24]),
        .I1(\inst/c_out_23 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r[24]_INST_0_i_1 
       (.I0(x[23]),
        .I1(x[22]),
        .I2(x[21]),
        .I3(x[20]),
        .I4(x[19]),
        .I5(\inst/c_out_18 ),
        .O(\inst/c_out_23 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[25]_INST_0 
       (.I0(x[25]),
        .I1(\inst/c_out_24 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[25]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r[25]_INST_0_i_1 
       (.I0(x[24]),
        .I1(\inst/c_out_23 ),
        .O(\inst/c_out_24 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[26]_INST_0 
       (.I0(x[26]),
        .I1(\inst/c_out_25 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[26]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r[26]_INST_0_i_1 
       (.I0(x[25]),
        .I1(x[24]),
        .I2(\inst/c_out_23 ),
        .O(\inst/c_out_25 ));
  LUT6 #(
    .INIT(64'h9999999899999999)) 
    \r[27]_INST_0 
       (.I0(\inst/c_out_26 ),
        .I1(x[27]),
        .I2(x[28]),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[27]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r[27]_INST_0_i_1 
       (.I0(x[26]),
        .I1(x[25]),
        .I2(x[24]),
        .I3(\inst/c_out_23 ),
        .O(\inst/c_out_26 ));
  LUT5 #(
    .INIT(32'h99989999)) 
    \r[28]_INST_0 
       (.I0(\inst/c_out_27 ),
        .I1(x[28]),
        .I2(x[29]),
        .I3(x[30]),
        .I4(x[31]),
        .O(r[28]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r[28]_INST_0_i_1 
       (.I0(x[27]),
        .I1(x[26]),
        .I2(x[25]),
        .I3(x[24]),
        .I4(\inst/c_out_23 ),
        .O(\inst/c_out_27 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h9899)) 
    \r[29]_INST_0 
       (.I0(\inst/c_out_28 ),
        .I1(x[29]),
        .I2(x[30]),
        .I3(x[31]),
        .O(r[29]));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[2]_INST_0 
       (.I0(x[2]),
        .I1(\inst/c_out_1 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[2]));
  LUT4 #(
    .INIT(16'hD4DD)) 
    \r[2]_INST_0_i_1 
       (.I0(y[1]),
        .I1(x[1]),
        .I2(x[0]),
        .I3(y[0]),
        .O(\inst/c_out_1 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hE0E1)) 
    \r[30]_INST_0 
       (.I0(\inst/c_out_28 ),
        .I1(x[29]),
        .I2(x[30]),
        .I3(x[31]),
        .O(r[30]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \r[31]_INST_0 
       (.I0(x[31]),
        .I1(x[30]),
        .I2(x[29]),
        .I3(\inst/c_out_28 ),
        .O(r[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r[31]_INST_0_i_1 
       (.I0(x[28]),
        .I1(x[27]),
        .I2(x[26]),
        .I3(x[25]),
        .I4(x[24]),
        .I5(\inst/c_out_23 ),
        .O(\inst/c_out_28 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[3]_INST_0 
       (.I0(x[3]),
        .I1(\inst/c_out_2 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFBBAFBFB)) 
    \r[3]_INST_0_i_1 
       (.I0(x[2]),
        .I1(y[1]),
        .I2(x[1]),
        .I3(x[0]),
        .I4(y[0]),
        .O(\inst/c_out_2 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[4]_INST_0 
       (.I0(x[4]),
        .I1(\inst/c_out_3 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[4]));
  LUT6 #(
    .INIT(64'hFFEFEFEEFFEFFFEF)) 
    \r[4]_INST_0_i_1 
       (.I0(x[3]),
        .I1(x[2]),
        .I2(y[1]),
        .I3(x[1]),
        .I4(x[0]),
        .I5(y[0]),
        .O(\inst/c_out_3 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[5]_INST_0 
       (.I0(x[5]),
        .I1(\inst/c_out_4 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[5]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r[5]_INST_0_i_1 
       (.I0(x[4]),
        .I1(\inst/c_out_3 ),
        .O(\inst/c_out_4 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[6]_INST_0 
       (.I0(x[6]),
        .I1(\inst/c_out_5 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[6]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r[6]_INST_0_i_1 
       (.I0(x[5]),
        .I1(x[4]),
        .I2(\inst/c_out_3 ),
        .O(\inst/c_out_5 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[7]_INST_0 
       (.I0(x[7]),
        .I1(\inst/c_out_6 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[7]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r[7]_INST_0_i_1 
       (.I0(x[6]),
        .I1(x[5]),
        .I2(x[4]),
        .I3(\inst/c_out_3 ),
        .O(\inst/c_out_6 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[8]_INST_0 
       (.I0(x[8]),
        .I1(\inst/c_out_7 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[8]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r[8]_INST_0_i_1 
       (.I0(x[7]),
        .I1(x[6]),
        .I2(x[5]),
        .I3(x[4]),
        .I4(\inst/c_out_3 ),
        .O(\inst/c_out_7 ));
  LUT6 #(
    .INIT(64'h9999999099999999)) 
    \r[9]_INST_0 
       (.I0(x[9]),
        .I1(\inst/c_out_8 ),
        .I2(\inst/c_out_28 ),
        .I3(x[29]),
        .I4(x[30]),
        .I5(x[31]),
        .O(r[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r[9]_INST_0_i_1 
       (.I0(x[8]),
        .I1(x[7]),
        .I2(x[6]),
        .I3(x[5]),
        .I4(x[4]),
        .I5(\inst/c_out_3 ),
        .O(\inst/c_out_8 ));
endmodule

(* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_subtracter32_ip" *) (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
module butterfly_full_0_adder_subtracter32_ip__5
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
  wire [1:0]\^r ;
  wire [31:0]x;
  wire [31:0]y;

  assign r[31] = \^r [1];
  assign r[30] = \^r [1];
  assign r[29] = \^r [1];
  assign r[28] = \^r [1];
  assign r[27] = \^r [1];
  assign r[26] = \^r [1];
  assign r[25] = \^r [1];
  assign r[24] = \^r [1];
  assign r[23] = \^r [1];
  assign r[22] = \^r [1];
  assign r[21] = \^r [1];
  assign r[20] = \^r [1];
  assign r[19] = \^r [1];
  assign r[18] = \^r [1];
  assign r[17] = \^r [1];
  assign r[16] = \^r [1];
  assign r[15] = \^r [1];
  assign r[14] = \^r [1];
  assign r[13] = \^r [1];
  assign r[12] = \^r [1];
  assign r[11] = \^r [1];
  assign r[10] = \^r [1];
  assign r[9] = \^r [1];
  assign r[8] = \^r [1];
  assign r[7] = \^r [1];
  assign r[6] = \^r [1];
  assign r[5] = \^r [1];
  assign r[4] = \^r [1];
  assign r[3] = \^r [1];
  assign r[2] = \^r [1];
  assign r[1:0] = \^r [1:0];
  assign v = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h6)) 
    \r[0]_INST_0 
       (.I0(x[0]),
        .I1(y[0]),
        .O(\^r [0]));
  LUT2 #(
    .INIT(4'h4)) 
    \r[1]_INST_0 
       (.I0(x[0]),
        .I1(y[0]),
        .O(\^r [1]));
endmodule

(* ORIG_REF_NAME = "butterfly_full" *) 
module butterfly_full_0_butterfly_full
   (X0_re_o,
    X0_im_o,
    X1_re_o,
    X1_im_o,
    x0_re_i,
    x0_im_i,
    x1_re_i,
    x1_im_i,
    w_re_i,
    w_im_i,
    clk,
    CE);
  output [31:0]X0_re_o;
  output [31:0]X0_im_o;
  output [31:0]X1_re_o;
  output [31:0]X1_im_o;
  input [31:0]x0_re_i;
  input [31:0]x0_im_i;
  input [0:0]x1_re_i;
  input [0:0]x1_im_i;
  input [0:0]w_re_i;
  input [0:0]w_im_i;
  input clk;
  input CE;

  wire CE;
  wire [31:0]X0_im_o;
  wire [31:0]X0_re_o;
  wire [31:0]X1_im_o;
  wire [31:0]X1_re_o;
  wire clk;
  wire [0:0]w_im;
  wire [0:0]w_im_i;
  wire [0:0]w_re;
  wire [0:0]w_re_i;
  wire [31:0]x0_im_i;
  wire [31:0]x0_re_i;
  wire [0:0]x1_im;
  wire [0:0]x1_im_i;
  wire x1_im_x_w_im;
  wire [0:0]x1_im_x_w_im_m;
  wire x1_im_x_w_re;
  wire [0:0]x1_im_x_w_re_m;
  wire [0:0]x1_re;
  wire [0:0]x1_re_i;
  wire x1_re_x_w_im;
  wire [0:0]x1_re_x_w_im_m;
  wire x1_re_x_w_re;
  wire [0:0]x1_re_x_w_re_m;
  wire [1:0]z_im;
  wire [31:0]z_re;
  wire NLW_X0_im_add_v_UNCONNECTED;
  wire NLW_X0_re_add_v_UNCONNECTED;
  wire NLW_X1_im_sub_v_UNCONNECTED;
  wire NLW_X1_re_sub_v_UNCONNECTED;
  wire [31:1]NLW_w_im_mux_y_UNCONNECTED;
  wire [31:1]NLW_w_re_mux_y_UNCONNECTED;
  wire [31:1]NLW_x1_im_mux_y_UNCONNECTED;
  wire [31:1]NLW_x1_im_w_im_mul_P_UNCONNECTED;
  wire [31:1]NLW_x1_im_w_im_mux_y_UNCONNECTED;
  wire [31:1]NLW_x1_im_w_re_y_UNCONNECTED;
  wire [31:1]NLW_x1_im_w_re_mul_P_UNCONNECTED;
  wire [31:1]NLW_x1_re_mux_y_UNCONNECTED;
  wire [31:1]NLW_x1_re_w_im_mul_P_UNCONNECTED;
  wire [31:1]NLW_x1_re_w_im_mux_y_UNCONNECTED;
  wire [31:1]NLW_x1_re_w_re_mul_P_UNCONNECTED;
  wire [31:1]NLW_x1_re_w_re_mux_y_UNCONNECTED;
  wire NLW_z_im_add_v_UNCONNECTED;
  wire [31:2]NLW_z_im_add_r_UNCONNECTED;
  wire NLW_z_re_sub_v_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
  butterfly_full_0_adder_subtracter32_ip__2 X0_im_add
       (.c_in(1'b0),
        .r(X0_im_o),
        .v(NLW_X0_im_add_v_UNCONNECTED),
        .x(x0_im_i),
        .y({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,z_im}));
  (* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
  butterfly_full_0_adder_subtracter32_ip__1 X0_re_add
       (.c_in(1'b0),
        .r(X0_re_o),
        .v(NLW_X0_re_add_v_UNCONNECTED),
        .x(x0_re_i),
        .y(z_re));
  (* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
  butterfly_full_0_adder_subtracter32_ip__4 X1_im_sub
       (.c_in(1'b1),
        .r(X1_im_o),
        .v(NLW_X1_im_sub_v_UNCONNECTED),
        .x(x0_im_i),
        .y({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,z_im}));
  (* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
  butterfly_full_0_adder_subtracter32_ip__3 X1_re_sub
       (.c_in(1'b1),
        .r(X1_re_o),
        .v(NLW_X1_re_sub_v_UNCONNECTED),
        .x(x0_re_i),
        .y(z_re));
  (* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  butterfly_full_0_mux2_0__4 w_im_mux
       (.d0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,w_im_i}),
        .d1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s(1'b0),
        .y({NLW_w_im_mux_y_UNCONNECTED[31:1],w_im}));
  (* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  butterfly_full_0_mux2_0__3 w_re_mux
       (.d0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,w_re_i}),
        .d1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s(1'b0),
        .y({NLW_w_re_mux_y_UNCONNECTED[31:1],w_re}));
  (* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  butterfly_full_0_mux2_0__2 x1_im_mux
       (.d0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_im_i}),
        .d1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s(1'b0),
        .y({NLW_x1_im_mux_y_UNCONNECTED[31:1],x1_im}));
  (* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_17,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "mult_gen_v12_0_17,Vivado 2021.1" *) 
  butterfly_full_0_multiplier__2 x1_im_w_im_mul
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_im}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,w_im}),
        .CE(CE),
        .CLK(clk),
        .P({NLW_x1_im_w_im_mul_P_UNCONNECTED[31:1],x1_im_x_w_im_m}));
  (* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  butterfly_full_0_mux2_0__6 x1_im_w_im_mux
       (.d0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_im_x_w_im_m}),
        .d1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s(1'b0),
        .y({NLW_x1_im_w_im_mux_y_UNCONNECTED[31:1],x1_im_x_w_im}));
  (* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  butterfly_full_0_mux2_0 x1_im_w_re
       (.d0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_im_x_w_re_m}),
        .d1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s(1'b0),
        .y({NLW_x1_im_w_re_y_UNCONNECTED[31:1],x1_im_x_w_re}));
  (* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_17,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "mult_gen_v12_0_17,Vivado 2021.1" *) 
  butterfly_full_0_multiplier x1_im_w_re_mul
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_im}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,w_re}),
        .CE(CE),
        .CLK(clk),
        .P({NLW_x1_im_w_re_mul_P_UNCONNECTED[31:1],x1_im_x_w_re_m}));
  (* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  butterfly_full_0_mux2_0__1 x1_re_mux
       (.d0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_re_i}),
        .d1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s(1'b0),
        .y({NLW_x1_re_mux_y_UNCONNECTED[31:1],x1_re}));
  (* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_17,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "mult_gen_v12_0_17,Vivado 2021.1" *) 
  butterfly_full_0_multiplier__3 x1_re_w_im_mul
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_re}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,w_im}),
        .CE(CE),
        .CLK(clk),
        .P({NLW_x1_re_w_im_mul_P_UNCONNECTED[31:1],x1_re_x_w_im_m}));
  (* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  butterfly_full_0_mux2_0__7 x1_re_w_im_mux
       (.d0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_re_x_w_im_m}),
        .d1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s(1'b0),
        .y({NLW_x1_re_w_im_mux_y_UNCONNECTED[31:1],x1_re_x_w_im}));
  (* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_17,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "mult_gen_v12_0_17,Vivado 2021.1" *) 
  butterfly_full_0_multiplier__1 x1_re_w_re_mul
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_re}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,w_re}),
        .CE(CE),
        .CLK(clk),
        .P({NLW_x1_re_w_re_mul_P_UNCONNECTED[31:1],x1_re_x_w_re_m}));
  (* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
  butterfly_full_0_mux2_0__5 x1_re_w_re_mux
       (.d0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_re_x_w_re_m}),
        .d1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s(1'b0),
        .y({NLW_x1_re_w_re_mux_y_UNCONNECTED[31:1],x1_re_x_w_re}));
  (* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
  butterfly_full_0_adder_subtracter32_ip z_im_add
       (.c_in(1'b0),
        .r({NLW_z_im_add_r_UNCONNECTED[31:2],z_im}),
        .v(NLW_z_im_add_v_UNCONNECTED),
        .x({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_re_x_w_im}),
        .y({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_im_x_w_re}));
  (* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
  butterfly_full_0_adder_subtracter32_ip__5 z_re_sub
       (.c_in(1'b1),
        .r(z_re),
        .v(NLW_z_re_sub_v_UNCONNECTED),
        .x({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_re_x_w_re}),
        .y({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x1_im_x_w_im}));
endmodule

(* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_17,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "multiplier" *) 
(* X_CORE_INFO = "mult_gen_v12_0_17,Vivado 2021.1" *) 
module butterfly_full_0_multiplier
   (CLK,
    A,
    B,
    CE,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [0:0]\^P ;
  wire [31:1]NLW_U0_P_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  assign P[31] = \<const0> ;
  assign P[30] = \<const0> ;
  assign P[29] = \<const0> ;
  assign P[28] = \<const0> ;
  assign P[27] = \<const0> ;
  assign P[26] = \<const0> ;
  assign P[25] = \<const0> ;
  assign P[24] = \<const0> ;
  assign P[23] = \<const0> ;
  assign P[22] = \<const0> ;
  assign P[21] = \<const0> ;
  assign P[20] = \<const0> ;
  assign P[19] = \<const0> ;
  assign P[18] = \<const0> ;
  assign P[17] = \<const0> ;
  assign P[16] = \<const0> ;
  assign P[15] = \<const0> ;
  assign P[14] = \<const0> ;
  assign P[13] = \<const0> ;
  assign P[12] = \<const0> ;
  assign P[11] = \<const0> ;
  assign P[10] = \<const0> ;
  assign P[9] = \<const0> ;
  assign P[8] = \<const0> ;
  assign P[7] = \<const0> ;
  assign P[6] = \<const0> ;
  assign P[5] = \<const0> ;
  assign P[4] = \<const0> ;
  assign P[3] = \<const0> ;
  assign P[2] = \<const0> ;
  assign P[1] = \<const0> ;
  assign P[0] = \^P [0];
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_optimize_goal = "1" *) 
  (* is_du_within_envelope = "true" *) 
  butterfly_full_0_mult_gen_v12_0_17 U0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A[0]}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B[0]}),
        .CE(CE),
        .CLK(CLK),
        .P({NLW_U0_P_UNCONNECTED[31:1],\^P }),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_17,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "multiplier" *) 
(* X_CORE_INFO = "mult_gen_v12_0_17,Vivado 2021.1" *) 
module butterfly_full_0_multiplier__1
   (CLK,
    A,
    B,
    CE,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [0:0]\^P ;
  wire [31:1]NLW_U0_P_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  assign P[31] = \<const0> ;
  assign P[30] = \<const0> ;
  assign P[29] = \<const0> ;
  assign P[28] = \<const0> ;
  assign P[27] = \<const0> ;
  assign P[26] = \<const0> ;
  assign P[25] = \<const0> ;
  assign P[24] = \<const0> ;
  assign P[23] = \<const0> ;
  assign P[22] = \<const0> ;
  assign P[21] = \<const0> ;
  assign P[20] = \<const0> ;
  assign P[19] = \<const0> ;
  assign P[18] = \<const0> ;
  assign P[17] = \<const0> ;
  assign P[16] = \<const0> ;
  assign P[15] = \<const0> ;
  assign P[14] = \<const0> ;
  assign P[13] = \<const0> ;
  assign P[12] = \<const0> ;
  assign P[11] = \<const0> ;
  assign P[10] = \<const0> ;
  assign P[9] = \<const0> ;
  assign P[8] = \<const0> ;
  assign P[7] = \<const0> ;
  assign P[6] = \<const0> ;
  assign P[5] = \<const0> ;
  assign P[4] = \<const0> ;
  assign P[3] = \<const0> ;
  assign P[2] = \<const0> ;
  assign P[1] = \<const0> ;
  assign P[0] = \^P [0];
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_optimize_goal = "1" *) 
  (* is_du_within_envelope = "true" *) 
  butterfly_full_0_mult_gen_v12_0_17__1 U0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A[0]}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B[0]}),
        .CE(CE),
        .CLK(CLK),
        .P({NLW_U0_P_UNCONNECTED[31:1],\^P }),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_17,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "multiplier" *) 
(* X_CORE_INFO = "mult_gen_v12_0_17,Vivado 2021.1" *) 
module butterfly_full_0_multiplier__2
   (CLK,
    A,
    B,
    CE,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [0:0]\^P ;
  wire [31:1]NLW_U0_P_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  assign P[31] = \<const0> ;
  assign P[30] = \<const0> ;
  assign P[29] = \<const0> ;
  assign P[28] = \<const0> ;
  assign P[27] = \<const0> ;
  assign P[26] = \<const0> ;
  assign P[25] = \<const0> ;
  assign P[24] = \<const0> ;
  assign P[23] = \<const0> ;
  assign P[22] = \<const0> ;
  assign P[21] = \<const0> ;
  assign P[20] = \<const0> ;
  assign P[19] = \<const0> ;
  assign P[18] = \<const0> ;
  assign P[17] = \<const0> ;
  assign P[16] = \<const0> ;
  assign P[15] = \<const0> ;
  assign P[14] = \<const0> ;
  assign P[13] = \<const0> ;
  assign P[12] = \<const0> ;
  assign P[11] = \<const0> ;
  assign P[10] = \<const0> ;
  assign P[9] = \<const0> ;
  assign P[8] = \<const0> ;
  assign P[7] = \<const0> ;
  assign P[6] = \<const0> ;
  assign P[5] = \<const0> ;
  assign P[4] = \<const0> ;
  assign P[3] = \<const0> ;
  assign P[2] = \<const0> ;
  assign P[1] = \<const0> ;
  assign P[0] = \^P [0];
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_optimize_goal = "1" *) 
  (* is_du_within_envelope = "true" *) 
  butterfly_full_0_mult_gen_v12_0_17__2 U0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A[0]}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B[0]}),
        .CE(CE),
        .CLK(CLK),
        .P({NLW_U0_P_UNCONNECTED[31:1],\^P }),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_17,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "multiplier" *) 
(* X_CORE_INFO = "mult_gen_v12_0_17,Vivado 2021.1" *) 
module butterfly_full_0_multiplier__3
   (CLK,
    A,
    B,
    CE,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [0:0]\^P ;
  wire [31:1]NLW_U0_P_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  assign P[31] = \<const0> ;
  assign P[30] = \<const0> ;
  assign P[29] = \<const0> ;
  assign P[28] = \<const0> ;
  assign P[27] = \<const0> ;
  assign P[26] = \<const0> ;
  assign P[25] = \<const0> ;
  assign P[24] = \<const0> ;
  assign P[23] = \<const0> ;
  assign P[22] = \<const0> ;
  assign P[21] = \<const0> ;
  assign P[20] = \<const0> ;
  assign P[19] = \<const0> ;
  assign P[18] = \<const0> ;
  assign P[17] = \<const0> ;
  assign P[16] = \<const0> ;
  assign P[15] = \<const0> ;
  assign P[14] = \<const0> ;
  assign P[13] = \<const0> ;
  assign P[12] = \<const0> ;
  assign P[11] = \<const0> ;
  assign P[10] = \<const0> ;
  assign P[9] = \<const0> ;
  assign P[8] = \<const0> ;
  assign P[7] = \<const0> ;
  assign P[6] = \<const0> ;
  assign P[5] = \<const0> ;
  assign P[4] = \<const0> ;
  assign P[3] = \<const0> ;
  assign P[2] = \<const0> ;
  assign P[1] = \<const0> ;
  assign P[0] = \^P [0];
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_optimize_goal = "1" *) 
  (* is_du_within_envelope = "true" *) 
  butterfly_full_0_mult_gen_v12_0_17__3 U0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A[0]}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B[0]}),
        .CE(CE),
        .CLK(CLK),
        .P({NLW_U0_P_UNCONNECTED[31:1],\^P }),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "mux2_0" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module butterfly_full_0_mux2_0
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire \<const0> ;
  wire [31:0]d0;

  assign y[31] = \<const0> ;
  assign y[30] = \<const0> ;
  assign y[29] = \<const0> ;
  assign y[28] = \<const0> ;
  assign y[27] = \<const0> ;
  assign y[26] = \<const0> ;
  assign y[25] = \<const0> ;
  assign y[24] = \<const0> ;
  assign y[23] = \<const0> ;
  assign y[22] = \<const0> ;
  assign y[21] = \<const0> ;
  assign y[20] = \<const0> ;
  assign y[19] = \<const0> ;
  assign y[18] = \<const0> ;
  assign y[17] = \<const0> ;
  assign y[16] = \<const0> ;
  assign y[15] = \<const0> ;
  assign y[14] = \<const0> ;
  assign y[13] = \<const0> ;
  assign y[12] = \<const0> ;
  assign y[11] = \<const0> ;
  assign y[10] = \<const0> ;
  assign y[9] = \<const0> ;
  assign y[8] = \<const0> ;
  assign y[7] = \<const0> ;
  assign y[6] = \<const0> ;
  assign y[5] = \<const0> ;
  assign y[4] = \<const0> ;
  assign y[3] = \<const0> ;
  assign y[2] = \<const0> ;
  assign y[1] = \<const0> ;
  assign y[0] = d0[0];
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "mux2_0" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module butterfly_full_0_mux2_0__1
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire \<const0> ;
  wire [31:0]d0;

  assign y[31] = \<const0> ;
  assign y[30] = \<const0> ;
  assign y[29] = \<const0> ;
  assign y[28] = \<const0> ;
  assign y[27] = \<const0> ;
  assign y[26] = \<const0> ;
  assign y[25] = \<const0> ;
  assign y[24] = \<const0> ;
  assign y[23] = \<const0> ;
  assign y[22] = \<const0> ;
  assign y[21] = \<const0> ;
  assign y[20] = \<const0> ;
  assign y[19] = \<const0> ;
  assign y[18] = \<const0> ;
  assign y[17] = \<const0> ;
  assign y[16] = \<const0> ;
  assign y[15] = \<const0> ;
  assign y[14] = \<const0> ;
  assign y[13] = \<const0> ;
  assign y[12] = \<const0> ;
  assign y[11] = \<const0> ;
  assign y[10] = \<const0> ;
  assign y[9] = \<const0> ;
  assign y[8] = \<const0> ;
  assign y[7] = \<const0> ;
  assign y[6] = \<const0> ;
  assign y[5] = \<const0> ;
  assign y[4] = \<const0> ;
  assign y[3] = \<const0> ;
  assign y[2] = \<const0> ;
  assign y[1] = \<const0> ;
  assign y[0] = d0[0];
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "mux2_0" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module butterfly_full_0_mux2_0__2
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire \<const0> ;
  wire [31:0]d0;

  assign y[31] = \<const0> ;
  assign y[30] = \<const0> ;
  assign y[29] = \<const0> ;
  assign y[28] = \<const0> ;
  assign y[27] = \<const0> ;
  assign y[26] = \<const0> ;
  assign y[25] = \<const0> ;
  assign y[24] = \<const0> ;
  assign y[23] = \<const0> ;
  assign y[22] = \<const0> ;
  assign y[21] = \<const0> ;
  assign y[20] = \<const0> ;
  assign y[19] = \<const0> ;
  assign y[18] = \<const0> ;
  assign y[17] = \<const0> ;
  assign y[16] = \<const0> ;
  assign y[15] = \<const0> ;
  assign y[14] = \<const0> ;
  assign y[13] = \<const0> ;
  assign y[12] = \<const0> ;
  assign y[11] = \<const0> ;
  assign y[10] = \<const0> ;
  assign y[9] = \<const0> ;
  assign y[8] = \<const0> ;
  assign y[7] = \<const0> ;
  assign y[6] = \<const0> ;
  assign y[5] = \<const0> ;
  assign y[4] = \<const0> ;
  assign y[3] = \<const0> ;
  assign y[2] = \<const0> ;
  assign y[1] = \<const0> ;
  assign y[0] = d0[0];
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "mux2_0" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module butterfly_full_0_mux2_0__3
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire \<const0> ;
  wire [31:0]d0;

  assign y[31] = \<const0> ;
  assign y[30] = \<const0> ;
  assign y[29] = \<const0> ;
  assign y[28] = \<const0> ;
  assign y[27] = \<const0> ;
  assign y[26] = \<const0> ;
  assign y[25] = \<const0> ;
  assign y[24] = \<const0> ;
  assign y[23] = \<const0> ;
  assign y[22] = \<const0> ;
  assign y[21] = \<const0> ;
  assign y[20] = \<const0> ;
  assign y[19] = \<const0> ;
  assign y[18] = \<const0> ;
  assign y[17] = \<const0> ;
  assign y[16] = \<const0> ;
  assign y[15] = \<const0> ;
  assign y[14] = \<const0> ;
  assign y[13] = \<const0> ;
  assign y[12] = \<const0> ;
  assign y[11] = \<const0> ;
  assign y[10] = \<const0> ;
  assign y[9] = \<const0> ;
  assign y[8] = \<const0> ;
  assign y[7] = \<const0> ;
  assign y[6] = \<const0> ;
  assign y[5] = \<const0> ;
  assign y[4] = \<const0> ;
  assign y[3] = \<const0> ;
  assign y[2] = \<const0> ;
  assign y[1] = \<const0> ;
  assign y[0] = d0[0];
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "mux2_0" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module butterfly_full_0_mux2_0__4
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire \<const0> ;
  wire [31:0]d0;

  assign y[31] = \<const0> ;
  assign y[30] = \<const0> ;
  assign y[29] = \<const0> ;
  assign y[28] = \<const0> ;
  assign y[27] = \<const0> ;
  assign y[26] = \<const0> ;
  assign y[25] = \<const0> ;
  assign y[24] = \<const0> ;
  assign y[23] = \<const0> ;
  assign y[22] = \<const0> ;
  assign y[21] = \<const0> ;
  assign y[20] = \<const0> ;
  assign y[19] = \<const0> ;
  assign y[18] = \<const0> ;
  assign y[17] = \<const0> ;
  assign y[16] = \<const0> ;
  assign y[15] = \<const0> ;
  assign y[14] = \<const0> ;
  assign y[13] = \<const0> ;
  assign y[12] = \<const0> ;
  assign y[11] = \<const0> ;
  assign y[10] = \<const0> ;
  assign y[9] = \<const0> ;
  assign y[8] = \<const0> ;
  assign y[7] = \<const0> ;
  assign y[6] = \<const0> ;
  assign y[5] = \<const0> ;
  assign y[4] = \<const0> ;
  assign y[3] = \<const0> ;
  assign y[2] = \<const0> ;
  assign y[1] = \<const0> ;
  assign y[0] = d0[0];
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "mux2_0" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module butterfly_full_0_mux2_0__5
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire \<const0> ;
  wire [31:0]d0;

  assign y[31] = \<const0> ;
  assign y[30] = \<const0> ;
  assign y[29] = \<const0> ;
  assign y[28] = \<const0> ;
  assign y[27] = \<const0> ;
  assign y[26] = \<const0> ;
  assign y[25] = \<const0> ;
  assign y[24] = \<const0> ;
  assign y[23] = \<const0> ;
  assign y[22] = \<const0> ;
  assign y[21] = \<const0> ;
  assign y[20] = \<const0> ;
  assign y[19] = \<const0> ;
  assign y[18] = \<const0> ;
  assign y[17] = \<const0> ;
  assign y[16] = \<const0> ;
  assign y[15] = \<const0> ;
  assign y[14] = \<const0> ;
  assign y[13] = \<const0> ;
  assign y[12] = \<const0> ;
  assign y[11] = \<const0> ;
  assign y[10] = \<const0> ;
  assign y[9] = \<const0> ;
  assign y[8] = \<const0> ;
  assign y[7] = \<const0> ;
  assign y[6] = \<const0> ;
  assign y[5] = \<const0> ;
  assign y[4] = \<const0> ;
  assign y[3] = \<const0> ;
  assign y[2] = \<const0> ;
  assign y[1] = \<const0> ;
  assign y[0] = d0[0];
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "mux2_0" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module butterfly_full_0_mux2_0__6
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire \<const0> ;
  wire [31:0]d0;

  assign y[31] = \<const0> ;
  assign y[30] = \<const0> ;
  assign y[29] = \<const0> ;
  assign y[28] = \<const0> ;
  assign y[27] = \<const0> ;
  assign y[26] = \<const0> ;
  assign y[25] = \<const0> ;
  assign y[24] = \<const0> ;
  assign y[23] = \<const0> ;
  assign y[22] = \<const0> ;
  assign y[21] = \<const0> ;
  assign y[20] = \<const0> ;
  assign y[19] = \<const0> ;
  assign y[18] = \<const0> ;
  assign y[17] = \<const0> ;
  assign y[16] = \<const0> ;
  assign y[15] = \<const0> ;
  assign y[14] = \<const0> ;
  assign y[13] = \<const0> ;
  assign y[12] = \<const0> ;
  assign y[11] = \<const0> ;
  assign y[10] = \<const0> ;
  assign y[9] = \<const0> ;
  assign y[8] = \<const0> ;
  assign y[7] = \<const0> ;
  assign y[6] = \<const0> ;
  assign y[5] = \<const0> ;
  assign y[4] = \<const0> ;
  assign y[3] = \<const0> ;
  assign y[2] = \<const0> ;
  assign y[1] = \<const0> ;
  assign y[0] = d0[0];
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "mux2_0" *) (* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
module butterfly_full_0_mux2_0__7
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire \<const0> ;
  wire [31:0]d0;

  assign y[31] = \<const0> ;
  assign y[30] = \<const0> ;
  assign y[29] = \<const0> ;
  assign y[28] = \<const0> ;
  assign y[27] = \<const0> ;
  assign y[26] = \<const0> ;
  assign y[25] = \<const0> ;
  assign y[24] = \<const0> ;
  assign y[23] = \<const0> ;
  assign y[22] = \<const0> ;
  assign y[21] = \<const0> ;
  assign y[20] = \<const0> ;
  assign y[19] = \<const0> ;
  assign y[18] = \<const0> ;
  assign y[17] = \<const0> ;
  assign y[16] = \<const0> ;
  assign y[15] = \<const0> ;
  assign y[14] = \<const0> ;
  assign y[13] = \<const0> ;
  assign y[12] = \<const0> ;
  assign y[11] = \<const0> ;
  assign y[10] = \<const0> ;
  assign y[9] = \<const0> ;
  assign y[8] = \<const0> ;
  assign y[7] = \<const0> ;
  assign y[6] = \<const0> ;
  assign y[5] = \<const0> ;
  assign y[4] = \<const0> ;
  assign y[3] = \<const0> ;
  assign y[2] = \<const0> ;
  assign y[1] = \<const0> ;
  assign y[0] = d0[0];
  GND GND
       (.G(\<const0> ));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OWAggS0mE6JxmIlB4IqLhyMXRYPJs2DDE2a2JuZy5MB/PdXC/CaU/QRB+AqcK6JP4szhXBycSS8z
iqxQxDTUg4A3iOIyJWDbM6Yncj1VoDx+K0dqn0H+Ux6ekz1SBdoBO4EU4Q5HLCtXLJW8EgM4jzqP
00dxe67N+SsT04R4oZY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W60eta8irdb38mdRDzCg4GlgwIYW3/Lru9l+tJih4ChBAcKfnfaR/vOiTL+ROuIZKJnwzJcrpzmt
gvCgGzHC7YTXilcaPZwKLJGNDJz1ephChHv+dU3RVUsAD/2hTtCy4ufxwBlvovQkfC/Lj1duYn0h
OSEhgHWR+DeMUPK2qQQbBb9ABKyCPg4Lz4jFlEL0WZOm0tl9WkZ2Rm3weM0zt1B539Waq4iEp23R
cjqiwLGibXKz4dVw0e8sQSzt2A1TAWBrBGX3u9QEmYGTRB5cP/N+EuOZmOBNhHzRMDgHUduPy9IS
T0HpKpqzIIZ0OwjalMVA697TIeOPpprjIuzHBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
M3QC1E4EAgFwAqgbMpRj62ZSqGtwACtMfRQvzY5xpdVjwZ2o2aUOzqn08h+DpIbitujiMLpxPUyY
lcPiiMFuzADP0+HvnkKh+nqlni8Fnu+SpjDueyH4bQJ2dEx4L2m6E/ZRMYE/21qZ+IL9Mdwhy2zM
6J4NpTA3GU+XaQ48wh0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Joy1pwH/OfLUGgLJRqMOST5TZobooPL/KHnb20ZjYwOKq7TVLXA6nkZ+J/8E9K70lSRvS1UpSRH0
t5Xf+iolfdIIM7/OPQhbsr7sGEWHdc0Q64eg+2GGAtSF2BZhsT705w77/DIW4nJKkUpC+VtMtRti
4i/AZB4v3m63KchVydIiWT2eypZaOcJdUaYuq7w3OS5NU1piGksgHh5Xb+szulbvxqFKE4Euv4Yx
O7uUo/+9PH/CzsgmGmKDh2HAp7VMhCk1Hmog74d7Pl7wyr3Y4dBrBBjw1c9mS9qqLDPt/gNTlehB
iOvhgs2sgiqrvmfcmcjLfXJB/a6mYZAOTPKzdA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g5GY+ruVbJTSNLBZAxKMjzWHqiIBBFLVm0mTIk/27vAJCn/7qN2eNybonN/BbLo0bhsIPnygWtUL
HnBzb30j9hTIkOmb4h3ghEtCopb8bWgen8W+K7lAXMMqSm7UP7SZS+oM+10KcJe73JRSORmhfQmO
1F9OJcu1SAirUVlJoJqHPQM+dVcXzqk6Cy0tnQfjOZzeDPrV6KdMtxexq8eq6tFX+nHwbh71bmwl
4OMHzfEhBHHlRAUDFfsH8FYwkZAH2dnFSqcyb8m+vXobKB4O1tVszhDIgza9r+ofijta9/KCeReP
oi5b+rs6mP4QE2kKqCEN3629NW5mbzUug9MxiA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HNsfBze5a6QtwiAVnGLfFdHHbrU0Oi1c4+CJlHFAOZfXnXZ/b0aEkATWnGGXfvTJAl/Vcr9Whmt+
ekNOhMdu6oXKJ+MJfm2u2jzE3biF+Xa2B9OUw2cnR3sWidPCSfrg1AS5LI2BdlfVD335L8jMJwSV
9dfiE+IthObOKpmZsPiY8zMjdsXwLNxi03pCI8Xly1WwfwvnPHx8W9QTlilHJGrd8NoS1J4RBmrZ
V4U7cpvPr5rFlz0kaBhufye7oY6yr+YRvjdzygxJ9Is4LecDDaRMF4r1PTAtwheEd5a3Fpb6OLzb
12VR4H77zZWEihgmoRyssQ/RlLdENnMf74PhDA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qajdWELb7xq5MRKDXqbY5G9KalZ6KvS/OFspNPgehavTLyCjfNFwOe7rD6u4OQ9DhpFj21XMOcHT
4IpirpdyiIXOWlDbI0L7UF7fg+oZhywH/4zzeLjKZ1VuNWMxku8tJIciokgfgS0Rc5zJRkFE1fFh
XqKbA8o5V2On2ZWFsxXRHCowiAVXpEbk4hoxIV8L5vuYfM+LmEAQrfNmzVr7ggxMKIAYY8HGsD5y
y68JxstiU/xG1rcmnjRIdeZIHXXBRuFGZjouuAthvqQCk4Aqa0dBLg1Pa5bvF8xwe+FNLdELWLsI
p4Imohkk8nqjgLE5kfHUvK6lNSUTJIGtfR7lWQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
G99JGOPeAWEzvhKOQHBjIJBTWpBqc6eHcwpnoconyJGsCO3rY4RPzw0sPWdTfUbZVf28/xzMdMAw
5Bl0VSYMJ3cfG3uenDKsZF2v9KBin+XsJwfKWs/gxK9A2D8qVJQyLd4ION84axXVPxfI5Gzv2FIm
d2V4C4p5YxpnLiGdskIrPJ2AAa4yZEeWuN01HCD/W+H9Ca3vsRn+2VmFDJbOHyec2GOMH66evWmZ
AlFNPDQSwT+6TVCHFXgpOYsFwwIg3mVZl2EBK7oPx1QESXZOnOLee+VELSumkJOFUI2v3kGFm4+2
yANu0tMCR+Ch57FICMokLG1y7s0yZ7DCuokjx1SKM3Ap/yHSSjBMyE6cOAjHL+oF9ZHdDbGV5v0U
s6Ses23kmJMCOcHQDKgORHBaU5DaZgcdobyCs2MMkJo9CarOL4u/Feim00de/2xjgBS0jQPmVxYI
DV5Y6z4b2qpXJD9yvkwweqY8ZifrG3dHasuUscjtRiYqbLIMonADOsos

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Yg8e7EeHtxErkKZVvi6QJXJCvHzYThtbtZDWYWwhr0hMZCh7wlRPMUDcoEsUXREL9HKBlNIU/8Ip
RFJXEQyG4fzyXOfxoqTV5aFAlBcJbbBITUlrf6b/PM/ef8SPakuJVxDFuGpznAfWV7MaQwD4pGCi
1hZVmFLCjiNVZ/pcZslIeU1yCGclZYjf4Ru+ChXq4zcRuRDybOhAnvOk6/sQJZHGiDiA/H5Lghki
plk50q2/VS4rx+xPeNogEvz/tKK3mUhK/3Sx0BqDTR9u+8Ltxs+0gK55oKH0CNj0HtBdvVId3fDy
w5WvPz8SmltzhMCYDtDP+iKXf+EKR9m/Co0FQA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g9Vbb30wSgxL/t73uQRTl1qfMU2Oqr2vtLFJZISYKFMk+q/Ru/P26atr1/y9Un75jbdlhXudRtjt
QIBgt5z7RJMK7NFJObkN0BG2C5+X/ltzodKzFtg3w1zfaTL0lODNjP0vzDnBdpNjc6Pl4DjkYpfy
aV96C1t6MeozaNIxYatDx3IcMf7K8Mlx0EzF26dBaBLh57XAEsdcFkGoCey8eknJoXBJaorN59u3
V+MwCeOVzYi0+1N1qncC9JxK7jOdE45AYwIdNRj26UChYtJsHLwXUjASadO6mnTC4uHEJklAfTPs
/guz4jPhVKt/xOuCgNxcSkuWTbkopgQgR77uiA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xc+7NaMX7Le5S5DNs75KyODgd4UXiWptIWuZ1ryzGCfMMU7zJwvkYjVAUMdGmtmwHxOhcpBvQAJe
rAYqWY/EP/xyhdsyq3jGFoNmfRFVwKT4zlQEAQFEY7px9EULHDITjZjKN8CTj56br3PvLqeCkaDX
XZtU6UZKf+rwRUPQyqnLqT6hU1+BulfdojIAQ7eDqq0ESfTQr+bvzUSxj8mrZjNj+ceJ7/3OjIGN
zH4Gno0NEhb/q6c0h57A9Y0wQ1GxIE9ZUZHz1thRqh+xDV6Cyloz2N4eldoJjTVWgjW0tuSch9Rq
+9WVmWcSFCdAQJ7NszkCrA7J6tfu+APGk01yOw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43120)
`pragma protect data_block
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
5J735yydqEI9h1NpMC1iNXME4QOwLsp1XmsMjg==
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
