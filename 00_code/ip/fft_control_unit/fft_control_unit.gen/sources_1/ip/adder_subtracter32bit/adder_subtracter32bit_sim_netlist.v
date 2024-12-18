// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Oct 29 12:07:01 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/ip/fft_control_unit/fft_control_unit.gen/sources_1/ip/adder_subtracter32bit/adder_subtracter32bit_sim_netlist.v
// Design      : adder_subtracter32bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_subtracter32bit,adder_subtracter32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module adder_subtracter32bit
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

  wire c_in;
  wire [31:0]r;
  wire \r[10]_INST_0_i_1_n_0 ;
  wire \r[11]_INST_0_i_10_n_0 ;
  wire \r[11]_INST_0_i_1_n_0 ;
  wire \r[11]_INST_0_i_2_n_0 ;
  wire \r[11]_INST_0_i_3_n_0 ;
  wire \r[11]_INST_0_i_4_n_0 ;
  wire \r[11]_INST_0_i_5_n_0 ;
  wire \r[11]_INST_0_i_6_n_0 ;
  wire \r[11]_INST_0_i_7_n_0 ;
  wire \r[11]_INST_0_i_8_n_0 ;
  wire \r[11]_INST_0_i_9_n_0 ;
  wire \r[12]_INST_0_i_1_n_0 ;
  wire \r[13]_INST_0_i_1_n_0 ;
  wire \r[14]_INST_0_i_1_n_0 ;
  wire \r[15]_INST_0_i_1_n_0 ;
  wire \r[16]_INST_0_i_10_n_0 ;
  wire \r[16]_INST_0_i_1_n_0 ;
  wire \r[16]_INST_0_i_2_n_0 ;
  wire \r[16]_INST_0_i_3_n_0 ;
  wire \r[16]_INST_0_i_4_n_0 ;
  wire \r[16]_INST_0_i_5_n_0 ;
  wire \r[16]_INST_0_i_6_n_0 ;
  wire \r[16]_INST_0_i_7_n_0 ;
  wire \r[16]_INST_0_i_8_n_0 ;
  wire \r[16]_INST_0_i_9_n_0 ;
  wire \r[17]_INST_0_i_1_n_0 ;
  wire \r[18]_INST_0_i_1_n_0 ;
  wire \r[19]_INST_0_i_1_n_0 ;
  wire \r[1]_INST_0_i_1_n_0 ;
  wire \r[20]_INST_0_i_1_n_0 ;
  wire \r[21]_INST_0_i_10_n_0 ;
  wire \r[21]_INST_0_i_1_n_0 ;
  wire \r[21]_INST_0_i_2_n_0 ;
  wire \r[21]_INST_0_i_3_n_0 ;
  wire \r[21]_INST_0_i_4_n_0 ;
  wire \r[21]_INST_0_i_5_n_0 ;
  wire \r[21]_INST_0_i_6_n_0 ;
  wire \r[21]_INST_0_i_7_n_0 ;
  wire \r[21]_INST_0_i_8_n_0 ;
  wire \r[21]_INST_0_i_9_n_0 ;
  wire \r[22]_INST_0_i_1_n_0 ;
  wire \r[23]_INST_0_i_1_n_0 ;
  wire \r[24]_INST_0_i_1_n_0 ;
  wire \r[25]_INST_0_i_1_n_0 ;
  wire \r[26]_INST_0_i_10_n_0 ;
  wire \r[26]_INST_0_i_1_n_0 ;
  wire \r[26]_INST_0_i_2_n_0 ;
  wire \r[26]_INST_0_i_3_n_0 ;
  wire \r[26]_INST_0_i_4_n_0 ;
  wire \r[26]_INST_0_i_5_n_0 ;
  wire \r[26]_INST_0_i_6_n_0 ;
  wire \r[26]_INST_0_i_7_n_0 ;
  wire \r[26]_INST_0_i_8_n_0 ;
  wire \r[26]_INST_0_i_9_n_0 ;
  wire \r[27]_INST_0_i_1_n_0 ;
  wire \r[28]_INST_0_i_1_n_0 ;
  wire \r[29]_INST_0_i_1_n_0 ;
  wire \r[29]_INST_0_i_2_n_0 ;
  wire \r[29]_INST_0_i_3_n_0 ;
  wire \r[29]_INST_0_i_4_n_0 ;
  wire \r[29]_INST_0_i_5_n_0 ;
  wire \r[29]_INST_0_i_6_n_0 ;
  wire \r[29]_INST_0_i_7_n_0 ;
  wire \r[2]_INST_0_i_1_n_0 ;
  wire \r[30]_INST_0_i_1_n_0 ;
  wire \r[31]_INST_0_i_10_n_0 ;
  wire \r[31]_INST_0_i_1_n_0 ;
  wire \r[31]_INST_0_i_2_n_0 ;
  wire \r[31]_INST_0_i_3_n_0 ;
  wire \r[31]_INST_0_i_4_n_0 ;
  wire \r[31]_INST_0_i_5_n_0 ;
  wire \r[31]_INST_0_i_6_n_0 ;
  wire \r[31]_INST_0_i_7_n_0 ;
  wire \r[31]_INST_0_i_8_n_0 ;
  wire \r[31]_INST_0_i_9_n_0 ;
  wire \r[3]_INST_0_i_1_n_0 ;
  wire \r[4]_INST_0_i_1_n_0 ;
  wire \r[5]_INST_0_i_1_n_0 ;
  wire \r[6]_INST_0_i_1_n_0 ;
  wire \r[7]_INST_0_i_1_n_0 ;
  wire \r[8]_INST_0_i_1_n_0 ;
  wire \r[9]_INST_0_i_1_n_0 ;
  wire v;
  wire [31:0]x;
  wire [31:0]y;

  LUT4 #(
    .INIT(16'h28AA)) 
    \r[0]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(y[0]),
        .I2(x[0]),
        .I3(\r[29]_INST_0_i_3_n_0 ),
        .O(r[0]));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[10]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[10]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[10]),
        .I4(x[10]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[10]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[10]_INST_0_i_1 
       (.I0(x[9]),
        .I1(y[9]),
        .I2(c_in),
        .I3(x[8]),
        .I4(y[8]),
        .I5(\r[8]_INST_0_i_1_n_0 ),
        .O(\r[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[11]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[11]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[11]),
        .I4(x[11]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[11]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[11]_INST_0_i_1 
       (.I0(x[10]),
        .I1(y[10]),
        .I2(c_in),
        .I3(x[9]),
        .I4(y[9]),
        .I5(\r[11]_INST_0_i_2_n_0 ),
        .O(\r[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \r[11]_INST_0_i_10 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(c_in),
        .O(\r[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[11]_INST_0_i_2 
       (.I0(x[8]),
        .I1(y[8]),
        .I2(c_in),
        .I3(x[7]),
        .I4(y[7]),
        .I5(\r[11]_INST_0_i_3_n_0 ),
        .O(\r[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE888EEE8EEE8EEE8)) 
    \r[11]_INST_0_i_3 
       (.I0(x[6]),
        .I1(\r[11]_INST_0_i_4_n_0 ),
        .I2(x[5]),
        .I3(\r[11]_INST_0_i_5_n_0 ),
        .I4(\r[11]_INST_0_i_6_n_0 ),
        .I5(\r[11]_INST_0_i_7_n_0 ),
        .O(\r[11]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[11]_INST_0_i_4 
       (.I0(c_in),
        .I1(y[6]),
        .O(\r[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[11]_INST_0_i_5 
       (.I0(c_in),
        .I1(y[5]),
        .O(\r[11]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \r[11]_INST_0_i_6 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(c_in),
        .O(\r[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h001717FFFFFFFFFF)) 
    \r[11]_INST_0_i_7 
       (.I0(\r[2]_INST_0_i_1_n_0 ),
        .I1(\r[11]_INST_0_i_8_n_0 ),
        .I2(x[2]),
        .I3(\r[11]_INST_0_i_9_n_0 ),
        .I4(x[3]),
        .I5(\r[11]_INST_0_i_10_n_0 ),
        .O(\r[11]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[11]_INST_0_i_8 
       (.I0(c_in),
        .I1(y[2]),
        .O(\r[11]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[11]_INST_0_i_9 
       (.I0(c_in),
        .I1(y[3]),
        .O(\r[11]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r[12]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[12]_INST_0_i_1_n_0 ),
        .I2(\r[29]_INST_0_i_3_n_0 ),
        .O(r[12]));
  LUT6 #(
    .INIT(64'h4DE8B217B2174DE8)) 
    \r[12]_INST_0_i_1 
       (.I0(\r[11]_INST_0_i_1_n_0 ),
        .I1(y[11]),
        .I2(x[11]),
        .I3(c_in),
        .I4(y[12]),
        .I5(x[12]),
        .O(\r[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[13]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[13]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[13]),
        .I4(x[13]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[13]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[13]_INST_0_i_1 
       (.I0(x[12]),
        .I1(y[12]),
        .I2(c_in),
        .I3(x[11]),
        .I4(y[11]),
        .I5(\r[11]_INST_0_i_1_n_0 ),
        .O(\r[13]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r[14]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[14]_INST_0_i_1_n_0 ),
        .I2(\r[29]_INST_0_i_3_n_0 ),
        .O(r[14]));
  LUT6 #(
    .INIT(64'h4DE8B217B2174DE8)) 
    \r[14]_INST_0_i_1 
       (.I0(\r[13]_INST_0_i_1_n_0 ),
        .I1(y[13]),
        .I2(x[13]),
        .I3(c_in),
        .I4(y[14]),
        .I5(x[14]),
        .O(\r[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[15]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[15]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[15]),
        .I4(x[15]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[15]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[15]_INST_0_i_1 
       (.I0(x[14]),
        .I1(y[14]),
        .I2(c_in),
        .I3(x[13]),
        .I4(y[13]),
        .I5(\r[13]_INST_0_i_1_n_0 ),
        .O(\r[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[16]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[16]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[16]),
        .I4(x[16]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[16]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[16]_INST_0_i_1 
       (.I0(x[15]),
        .I1(y[15]),
        .I2(c_in),
        .I3(x[14]),
        .I4(y[14]),
        .I5(\r[16]_INST_0_i_2_n_0 ),
        .O(\r[16]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \r[16]_INST_0_i_10 
       (.I0(x[9]),
        .I1(y[9]),
        .I2(c_in),
        .O(\r[16]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[16]_INST_0_i_2 
       (.I0(x[13]),
        .I1(y[13]),
        .I2(c_in),
        .I3(x[12]),
        .I4(y[12]),
        .I5(\r[16]_INST_0_i_3_n_0 ),
        .O(\r[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE888EEE8EEE8EEE8)) 
    \r[16]_INST_0_i_3 
       (.I0(x[11]),
        .I1(\r[16]_INST_0_i_4_n_0 ),
        .I2(x[10]),
        .I3(\r[16]_INST_0_i_5_n_0 ),
        .I4(\r[16]_INST_0_i_6_n_0 ),
        .I5(\r[16]_INST_0_i_7_n_0 ),
        .O(\r[16]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[16]_INST_0_i_4 
       (.I0(c_in),
        .I1(y[11]),
        .O(\r[16]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[16]_INST_0_i_5 
       (.I0(c_in),
        .I1(y[10]),
        .O(\r[16]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \r[16]_INST_0_i_6 
       (.I0(x[9]),
        .I1(y[9]),
        .I2(c_in),
        .O(\r[16]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h001717FFFFFFFFFF)) 
    \r[16]_INST_0_i_7 
       (.I0(\r[11]_INST_0_i_3_n_0 ),
        .I1(\r[16]_INST_0_i_8_n_0 ),
        .I2(x[7]),
        .I3(\r[16]_INST_0_i_9_n_0 ),
        .I4(x[8]),
        .I5(\r[16]_INST_0_i_10_n_0 ),
        .O(\r[16]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[16]_INST_0_i_8 
       (.I0(c_in),
        .I1(y[7]),
        .O(\r[16]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[16]_INST_0_i_9 
       (.I0(c_in),
        .I1(y[8]),
        .O(\r[16]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r[17]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[17]_INST_0_i_1_n_0 ),
        .I2(\r[29]_INST_0_i_3_n_0 ),
        .O(r[17]));
  LUT6 #(
    .INIT(64'h4DE8B217B2174DE8)) 
    \r[17]_INST_0_i_1 
       (.I0(\r[16]_INST_0_i_1_n_0 ),
        .I1(y[16]),
        .I2(x[16]),
        .I3(c_in),
        .I4(y[17]),
        .I5(x[17]),
        .O(\r[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[18]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[18]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[18]),
        .I4(x[18]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[18]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[18]_INST_0_i_1 
       (.I0(x[17]),
        .I1(y[17]),
        .I2(c_in),
        .I3(x[16]),
        .I4(y[16]),
        .I5(\r[16]_INST_0_i_1_n_0 ),
        .O(\r[18]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r[19]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[19]_INST_0_i_1_n_0 ),
        .I2(\r[29]_INST_0_i_3_n_0 ),
        .O(r[19]));
  LUT6 #(
    .INIT(64'h4DE8B217B2174DE8)) 
    \r[19]_INST_0_i_1 
       (.I0(\r[18]_INST_0_i_1_n_0 ),
        .I1(y[18]),
        .I2(x[18]),
        .I3(c_in),
        .I4(y[19]),
        .I5(x[19]),
        .O(\r[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA80802A2AAAAAAAA)) 
    \r[1]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(c_in),
        .I2(y[0]),
        .I3(x[0]),
        .I4(\r[1]_INST_0_i_1_n_0 ),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \r[1]_INST_0_i_1 
       (.I0(x[1]),
        .I1(y[1]),
        .I2(c_in),
        .O(\r[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[20]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[20]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[20]),
        .I4(x[20]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[20]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[20]_INST_0_i_1 
       (.I0(x[19]),
        .I1(y[19]),
        .I2(c_in),
        .I3(x[18]),
        .I4(y[18]),
        .I5(\r[18]_INST_0_i_1_n_0 ),
        .O(\r[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[21]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[21]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[21]),
        .I4(x[21]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[21]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[21]_INST_0_i_1 
       (.I0(x[20]),
        .I1(y[20]),
        .I2(c_in),
        .I3(x[19]),
        .I4(y[19]),
        .I5(\r[21]_INST_0_i_2_n_0 ),
        .O(\r[21]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \r[21]_INST_0_i_10 
       (.I0(x[14]),
        .I1(y[14]),
        .I2(c_in),
        .O(\r[21]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[21]_INST_0_i_2 
       (.I0(x[18]),
        .I1(y[18]),
        .I2(c_in),
        .I3(x[17]),
        .I4(y[17]),
        .I5(\r[21]_INST_0_i_3_n_0 ),
        .O(\r[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE888EEE8EEE8EEE8)) 
    \r[21]_INST_0_i_3 
       (.I0(x[16]),
        .I1(\r[21]_INST_0_i_4_n_0 ),
        .I2(x[15]),
        .I3(\r[21]_INST_0_i_5_n_0 ),
        .I4(\r[21]_INST_0_i_6_n_0 ),
        .I5(\r[21]_INST_0_i_7_n_0 ),
        .O(\r[21]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[21]_INST_0_i_4 
       (.I0(c_in),
        .I1(y[16]),
        .O(\r[21]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[21]_INST_0_i_5 
       (.I0(c_in),
        .I1(y[15]),
        .O(\r[21]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \r[21]_INST_0_i_6 
       (.I0(x[14]),
        .I1(y[14]),
        .I2(c_in),
        .O(\r[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h001717FFFFFFFFFF)) 
    \r[21]_INST_0_i_7 
       (.I0(\r[16]_INST_0_i_3_n_0 ),
        .I1(\r[21]_INST_0_i_8_n_0 ),
        .I2(x[12]),
        .I3(\r[21]_INST_0_i_9_n_0 ),
        .I4(x[13]),
        .I5(\r[21]_INST_0_i_10_n_0 ),
        .O(\r[21]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[21]_INST_0_i_8 
       (.I0(c_in),
        .I1(y[12]),
        .O(\r[21]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[21]_INST_0_i_9 
       (.I0(c_in),
        .I1(y[13]),
        .O(\r[21]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r[22]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[22]_INST_0_i_1_n_0 ),
        .I2(\r[29]_INST_0_i_3_n_0 ),
        .O(r[22]));
  LUT6 #(
    .INIT(64'h4DE8B217B2174DE8)) 
    \r[22]_INST_0_i_1 
       (.I0(\r[21]_INST_0_i_1_n_0 ),
        .I1(y[21]),
        .I2(x[21]),
        .I3(c_in),
        .I4(y[22]),
        .I5(x[22]),
        .O(\r[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[23]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[23]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[23]),
        .I4(x[23]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[23]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[23]_INST_0_i_1 
       (.I0(x[22]),
        .I1(y[22]),
        .I2(c_in),
        .I3(x[21]),
        .I4(y[21]),
        .I5(\r[21]_INST_0_i_1_n_0 ),
        .O(\r[23]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r[24]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[24]_INST_0_i_1_n_0 ),
        .I2(\r[29]_INST_0_i_3_n_0 ),
        .O(r[24]));
  LUT6 #(
    .INIT(64'h4DE8B217B2174DE8)) 
    \r[24]_INST_0_i_1 
       (.I0(\r[23]_INST_0_i_1_n_0 ),
        .I1(y[23]),
        .I2(x[23]),
        .I3(c_in),
        .I4(y[24]),
        .I5(x[24]),
        .O(\r[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[25]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[25]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[25]),
        .I4(x[25]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[25]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[25]_INST_0_i_1 
       (.I0(x[24]),
        .I1(y[24]),
        .I2(c_in),
        .I3(x[23]),
        .I4(y[23]),
        .I5(\r[23]_INST_0_i_1_n_0 ),
        .O(\r[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[26]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[26]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[26]),
        .I4(x[26]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[26]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[26]_INST_0_i_1 
       (.I0(x[25]),
        .I1(y[25]),
        .I2(c_in),
        .I3(x[24]),
        .I4(y[24]),
        .I5(\r[26]_INST_0_i_2_n_0 ),
        .O(\r[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \r[26]_INST_0_i_10 
       (.I0(x[19]),
        .I1(y[19]),
        .I2(c_in),
        .O(\r[26]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[26]_INST_0_i_2 
       (.I0(x[23]),
        .I1(y[23]),
        .I2(c_in),
        .I3(x[22]),
        .I4(y[22]),
        .I5(\r[26]_INST_0_i_3_n_0 ),
        .O(\r[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE888EEE8EEE8EEE8)) 
    \r[26]_INST_0_i_3 
       (.I0(x[21]),
        .I1(\r[26]_INST_0_i_4_n_0 ),
        .I2(x[20]),
        .I3(\r[26]_INST_0_i_5_n_0 ),
        .I4(\r[26]_INST_0_i_6_n_0 ),
        .I5(\r[26]_INST_0_i_7_n_0 ),
        .O(\r[26]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[26]_INST_0_i_4 
       (.I0(c_in),
        .I1(y[21]),
        .O(\r[26]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[26]_INST_0_i_5 
       (.I0(c_in),
        .I1(y[20]),
        .O(\r[26]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \r[26]_INST_0_i_6 
       (.I0(x[19]),
        .I1(y[19]),
        .I2(c_in),
        .O(\r[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h001717FFFFFFFFFF)) 
    \r[26]_INST_0_i_7 
       (.I0(\r[21]_INST_0_i_3_n_0 ),
        .I1(\r[26]_INST_0_i_8_n_0 ),
        .I2(x[17]),
        .I3(\r[26]_INST_0_i_9_n_0 ),
        .I4(x[18]),
        .I5(\r[26]_INST_0_i_10_n_0 ),
        .O(\r[26]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[26]_INST_0_i_8 
       (.I0(c_in),
        .I1(y[17]),
        .O(\r[26]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[26]_INST_0_i_9 
       (.I0(c_in),
        .I1(y[18]),
        .O(\r[26]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r[27]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[27]_INST_0_i_1_n_0 ),
        .I2(\r[29]_INST_0_i_3_n_0 ),
        .O(r[27]));
  LUT6 #(
    .INIT(64'h4DE8B217B2174DE8)) 
    \r[27]_INST_0_i_1 
       (.I0(\r[26]_INST_0_i_1_n_0 ),
        .I1(y[26]),
        .I2(x[26]),
        .I3(c_in),
        .I4(y[27]),
        .I5(x[27]),
        .O(\r[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[28]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[28]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[28]),
        .I4(x[28]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[28]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[28]_INST_0_i_1 
       (.I0(x[27]),
        .I1(y[27]),
        .I2(c_in),
        .I3(x[26]),
        .I4(y[26]),
        .I5(\r[26]_INST_0_i_1_n_0 ),
        .O(\r[28]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r[29]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[29]_INST_0_i_2_n_0 ),
        .I2(\r[29]_INST_0_i_3_n_0 ),
        .O(r[29]));
  LUT6 #(
    .INIT(64'hFFFFFEEAFEEAAAAA)) 
    \r[29]_INST_0_i_1 
       (.I0(\r[29]_INST_0_i_4_n_0 ),
        .I1(\r[31]_INST_0_i_2_n_0 ),
        .I2(\r[29]_INST_0_i_5_n_0 ),
        .I3(x[29]),
        .I4(\r[29]_INST_0_i_6_n_0 ),
        .I5(x[30]),
        .O(\r[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4DE8B217B2174DE8)) 
    \r[29]_INST_0_i_2 
       (.I0(\r[28]_INST_0_i_1_n_0 ),
        .I1(y[28]),
        .I2(x[28]),
        .I3(c_in),
        .I4(y[29]),
        .I5(x[29]),
        .O(\r[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF001717FF)) 
    \r[29]_INST_0_i_3 
       (.I0(\r[31]_INST_0_i_2_n_0 ),
        .I1(\r[29]_INST_0_i_5_n_0 ),
        .I2(x[29]),
        .I3(\r[29]_INST_0_i_6_n_0 ),
        .I4(x[30]),
        .I5(\r[29]_INST_0_i_7_n_0 ),
        .O(\r[29]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \r[29]_INST_0_i_4 
       (.I0(x[31]),
        .I1(y[31]),
        .I2(c_in),
        .O(\r[29]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[29]_INST_0_i_5 
       (.I0(c_in),
        .I1(y[29]),
        .O(\r[29]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[29]_INST_0_i_6 
       (.I0(c_in),
        .I1(y[30]),
        .O(\r[29]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r[29]_INST_0_i_7 
       (.I0(x[31]),
        .I1(y[31]),
        .I2(c_in),
        .O(\r[29]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[2]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[2]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[2]),
        .I4(x[2]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBE28B8B8)) 
    \r[2]_INST_0_i_1 
       (.I0(x[1]),
        .I1(y[1]),
        .I2(c_in),
        .I3(x[0]),
        .I4(y[0]),
        .O(\r[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6884291269967BB6)) 
    \r[30]_INST_0 
       (.I0(\r[30]_INST_0_i_1_n_0 ),
        .I1(c_in),
        .I2(y[30]),
        .I3(x[30]),
        .I4(y[31]),
        .I5(x[31]),
        .O(r[30]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[30]_INST_0_i_1 
       (.I0(x[29]),
        .I1(y[29]),
        .I2(c_in),
        .I3(x[28]),
        .I4(y[28]),
        .I5(\r[28]_INST_0_i_1_n_0 ),
        .O(\r[30]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9EE8)) 
    \r[31]_INST_0 
       (.I0(\r[31]_INST_0_i_1_n_0 ),
        .I1(x[31]),
        .I2(y[31]),
        .I3(c_in),
        .O(r[31]));
  LUT6 #(
    .INIT(64'h41D14147D1D747D7)) 
    \r[31]_INST_0_i_1 
       (.I0(x[30]),
        .I1(y[30]),
        .I2(c_in),
        .I3(x[29]),
        .I4(y[29]),
        .I5(\r[31]_INST_0_i_2_n_0 ),
        .O(\r[31]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \r[31]_INST_0_i_10 
       (.I0(x[24]),
        .I1(y[24]),
        .I2(c_in),
        .O(\r[31]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[31]_INST_0_i_2 
       (.I0(x[28]),
        .I1(y[28]),
        .I2(c_in),
        .I3(x[27]),
        .I4(y[27]),
        .I5(\r[31]_INST_0_i_3_n_0 ),
        .O(\r[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE888EEE8EEE8EEE8)) 
    \r[31]_INST_0_i_3 
       (.I0(x[26]),
        .I1(\r[31]_INST_0_i_4_n_0 ),
        .I2(x[25]),
        .I3(\r[31]_INST_0_i_5_n_0 ),
        .I4(\r[31]_INST_0_i_6_n_0 ),
        .I5(\r[31]_INST_0_i_7_n_0 ),
        .O(\r[31]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[31]_INST_0_i_4 
       (.I0(c_in),
        .I1(y[26]),
        .O(\r[31]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[31]_INST_0_i_5 
       (.I0(c_in),
        .I1(y[25]),
        .O(\r[31]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \r[31]_INST_0_i_6 
       (.I0(x[24]),
        .I1(y[24]),
        .I2(c_in),
        .O(\r[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h001717FFFFFFFFFF)) 
    \r[31]_INST_0_i_7 
       (.I0(\r[26]_INST_0_i_3_n_0 ),
        .I1(\r[31]_INST_0_i_8_n_0 ),
        .I2(x[22]),
        .I3(\r[31]_INST_0_i_9_n_0 ),
        .I4(x[23]),
        .I5(\r[31]_INST_0_i_10_n_0 ),
        .O(\r[31]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[31]_INST_0_i_8 
       (.I0(c_in),
        .I1(y[22]),
        .O(\r[31]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[31]_INST_0_i_9 
       (.I0(c_in),
        .I1(y[23]),
        .O(\r[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[3]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[3]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[3]),
        .I4(x[3]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBE28)) 
    \r[3]_INST_0_i_1 
       (.I0(x[2]),
        .I1(y[2]),
        .I2(c_in),
        .I3(\r[2]_INST_0_i_1_n_0 ),
        .O(\r[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[4]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[4]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[4]),
        .I4(x[4]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[4]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[4]_INST_0_i_1 
       (.I0(x[3]),
        .I1(y[3]),
        .I2(c_in),
        .I3(x[2]),
        .I4(y[2]),
        .I5(\r[2]_INST_0_i_1_n_0 ),
        .O(\r[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[5]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[5]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[5]),
        .I4(x[5]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBE28)) 
    \r[5]_INST_0_i_1 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(c_in),
        .I3(\r[4]_INST_0_i_1_n_0 ),
        .O(\r[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[6]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[6]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[6]),
        .I4(x[6]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[6]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[6]_INST_0_i_1 
       (.I0(x[5]),
        .I1(y[5]),
        .I2(c_in),
        .I3(x[4]),
        .I4(y[4]),
        .I5(\r[4]_INST_0_i_1_n_0 ),
        .O(\r[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r[7]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[7]_INST_0_i_1_n_0 ),
        .I2(\r[29]_INST_0_i_3_n_0 ),
        .O(r[7]));
  LUT6 #(
    .INIT(64'h4DE8B217B2174DE8)) 
    \r[7]_INST_0_i_1 
       (.I0(\r[6]_INST_0_i_1_n_0 ),
        .I1(y[6]),
        .I2(x[6]),
        .I3(c_in),
        .I4(y[7]),
        .I5(x[7]),
        .O(\r[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \r[8]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[8]_INST_0_i_1_n_0 ),
        .I2(c_in),
        .I3(y[8]),
        .I4(x[8]),
        .I5(\r[29]_INST_0_i_3_n_0 ),
        .O(r[8]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \r[8]_INST_0_i_1 
       (.I0(x[7]),
        .I1(y[7]),
        .I2(c_in),
        .I3(x[6]),
        .I4(y[6]),
        .I5(\r[6]_INST_0_i_1_n_0 ),
        .O(\r[8]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r[9]_INST_0 
       (.I0(\r[29]_INST_0_i_1_n_0 ),
        .I1(\r[9]_INST_0_i_1_n_0 ),
        .I2(\r[29]_INST_0_i_3_n_0 ),
        .O(r[9]));
  LUT6 #(
    .INIT(64'h4DE8B217B2174DE8)) 
    \r[9]_INST_0_i_1 
       (.I0(\r[8]_INST_0_i_1_n_0 ),
        .I1(y[8]),
        .I2(x[8]),
        .I3(c_in),
        .I4(y[9]),
        .I5(x[9]),
        .O(\r[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2841)) 
    v_INST_0
       (.I0(x[31]),
        .I1(y[31]),
        .I2(c_in),
        .I3(\r[31]_INST_0_i_1_n_0 ),
        .O(v));
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
