// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Mar 28 13:07:04 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top butterfly_full_0 -prefix
//               butterfly_full_0_ butterfly_full_0_sim_netlist.v
// Design      : butterfly_full_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_subtracter32_ip,adder_subtracter32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
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

(* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_17,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "mult_gen_v12_0_17,Vivado 2021.1" *) 
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
(* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
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
YVlDb/X3q3jh0CIbr/ILyOC3XZlraOTzUU9wUNKqr34LHpNx66XeakB3BDzQEnwsVK7AGmOaNsC3
QA6jBqoVKEyH3GkS+D5sE7YgS91Lx/5nHBEgIJ0/LZCGpeJ4tLlzw3AQ40lailYQx06VhImQZJbv
QtQMjaVa8okhHjweCXtZu4uZeP/TDnFCgI0+weDB/xRvv422qXFlgBbC+XkM1aUfXlwxV7Fa3Jiv
mWpz8TK+cnJ+a7Am750u2HtFviBuRtfBtA1ihwLuFr/YNc62gTl7K53FRc51qpIjzaFZPRfGcrlr
ZEHburG9WqY3cGjgOX9Tx3CjciMwfj4FXuyImQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ABhm20PCMZWTSbkT82JeMGSt7VLSCVZfgy/7dePGSJvRXqvphCIFhflL+vesilH11IzQ6c/kfpHQ
ZAIgCk7QRKGlwBMUPkrQZ++mqHPPT6Tvd4RtBLFNDj9FDoqkDJNFprLsb8QPyEdavHO+l8JJ4RKM
OyBCyJPZNch1wF6y3LWtPk+gYsec1BJz76+xYHDHWYFq0UbcnC+b8SQR1O8aMzlpBK4BzNPx+neW
xhjArZdWdn29syEdWgOnyBVxTbPb9hyALR6ytEwJElB2lN8YWVBgkDf9x+ACicTtsrySxVsLGOwC
YbBep2UyujZlWnClR4fX+IWHVzgHRTYhabonjA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43008)
`pragma protect data_block
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
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
