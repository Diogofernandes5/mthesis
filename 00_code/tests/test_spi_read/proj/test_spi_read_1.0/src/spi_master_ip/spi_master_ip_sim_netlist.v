// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Jan 31 18:26:22 2025
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top spi_master_ip -prefix
//               spi_master_ip_ spi_master_ip_sim_netlist.v
// Design      : spi_master_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module spi_master_ip_SPI_Master
   (Master_Ready_w,
    rstn_i_0,
    E,
    SPI_clk_o,
    SPI_MOSI_o,
    \FSM_onehot_SM_CS_r_reg[0] ,
    \FSM_onehot_SM_CS_r_reg[0]_0 ,
    \FSM_onehot_SM_CS_r_reg[0]_1 ,
    CS_r_reg,
    TX_ready_o,
    CS_r_reg_0,
    RX_byte_o,
    clk_i,
    TX_DV_i,
    Q,
    \FSM_onehot_SM_CS_r_reg[2] ,
    SM_CS_r0__0,
    \FSM_onehot_SM_CS_r_reg[2]_0 ,
    \FSM_onehot_SM_CS_r_reg[2]_1 ,
    \FSM_onehot_SM_CS_r_reg[2]_2 ,
    SR,
    \FSM_onehot_SM_CS_r_reg[1] ,
    SM_CS_r1__2,
    rstn_i,
    SPI_MISO_i,
    TX_byte_i);
  output Master_Ready_w;
  output rstn_i_0;
  output [0:0]E;
  output SPI_clk_o;
  output SPI_MOSI_o;
  output \FSM_onehot_SM_CS_r_reg[0] ;
  output \FSM_onehot_SM_CS_r_reg[0]_0 ;
  output \FSM_onehot_SM_CS_r_reg[0]_1 ;
  output [0:0]CS_r_reg;
  output TX_ready_o;
  output CS_r_reg_0;
  output [7:0]RX_byte_o;
  input clk_i;
  input TX_DV_i;
  input [3:0]Q;
  input \FSM_onehot_SM_CS_r_reg[2] ;
  input SM_CS_r0__0;
  input \FSM_onehot_SM_CS_r_reg[2]_0 ;
  input \FSM_onehot_SM_CS_r_reg[2]_1 ;
  input \FSM_onehot_SM_CS_r_reg[2]_2 ;
  input [0:0]SR;
  input \FSM_onehot_SM_CS_r_reg[1] ;
  input SM_CS_r1__2;
  input rstn_i;
  input SPI_MISO_i;
  input [7:0]TX_byte_i;

  wire [0:0]CS_r_reg;
  wire CS_r_reg_0;
  wire [0:0]E;
  wire \FSM_onehot_SM_CS_r[0]_i_2_n_0 ;
  wire \FSM_onehot_SM_CS_r[2]_i_4_n_0 ;
  wire \FSM_onehot_SM_CS_r_reg[0] ;
  wire \FSM_onehot_SM_CS_r_reg[0]_0 ;
  wire \FSM_onehot_SM_CS_r_reg[0]_1 ;
  wire \FSM_onehot_SM_CS_r_reg[1] ;
  wire \FSM_onehot_SM_CS_r_reg[2] ;
  wire \FSM_onehot_SM_CS_r_reg[2]_0 ;
  wire \FSM_onehot_SM_CS_r_reg[2]_1 ;
  wire \FSM_onehot_SM_CS_r_reg[2]_2 ;
  wire Master_Ready_w;
  wire [3:0]Q;
  wire RX_DV_o5_out;
  wire \RX_bit_count_r[0]_i_1_n_0 ;
  wire \RX_bit_count_r[1]_i_1_n_0 ;
  wire \RX_bit_count_r[2]_i_1_n_0 ;
  wire \RX_bit_count_r_reg_n_0_[0] ;
  wire \RX_bit_count_r_reg_n_0_[1] ;
  wire \RX_bit_count_r_reg_n_0_[2] ;
  wire [7:0]RX_byte_o;
  wire \RX_byte_o[0]_i_1_n_0 ;
  wire \RX_byte_o[1]_i_1_n_0 ;
  wire \RX_byte_o[2]_i_1_n_0 ;
  wire \RX_byte_o[3]_i_1_n_0 ;
  wire \RX_byte_o[4]_i_1_n_0 ;
  wire \RX_byte_o[4]_i_2_n_0 ;
  wire \RX_byte_o[5]_i_1_n_0 ;
  wire \RX_byte_o[5]_i_2_n_0 ;
  wire \RX_byte_o[6]_i_1_n_0 ;
  wire \RX_byte_o[6]_i_2_n_0 ;
  wire \RX_byte_o[7]_i_1_n_0 ;
  wire \RX_byte_o[7]_i_2_n_0 ;
  wire SM_CS_r0__0;
  wire SM_CS_r1__2;
  wire SPI_MISO_i;
  wire SPI_MOSI_o;
  wire SPI_MOSI_o_i_1_n_0;
  wire SPI_MOSI_o_i_2_n_0;
  wire SPI_MOSI_o_i_3_n_0;
  wire [4:1]SPI_clk_count_r;
  wire \SPI_clk_count_r[0]_i_1_n_0 ;
  wire \SPI_clk_count_r[4]_i_1_n_0 ;
  wire \SPI_clk_count_r_reg_n_0_[0] ;
  wire \SPI_clk_count_r_reg_n_0_[1] ;
  wire \SPI_clk_count_r_reg_n_0_[2] ;
  wire \SPI_clk_count_r_reg_n_0_[3] ;
  wire \SPI_clk_count_r_reg_n_0_[4] ;
  wire \SPI_clk_edges_r[0]_i_1_n_0 ;
  wire \SPI_clk_edges_r[1]_i_1_n_0 ;
  wire \SPI_clk_edges_r[2]_i_1_n_0 ;
  wire \SPI_clk_edges_r[3]_i_1_n_0 ;
  wire \SPI_clk_edges_r[4]_i_1_n_0 ;
  wire \SPI_clk_edges_r[4]_i_2_n_0 ;
  wire \SPI_clk_edges_r[4]_i_3_n_0 ;
  wire [4:0]SPI_clk_edges_r_reg;
  wire SPI_clk_o;
  wire SPI_clk_r;
  wire SPI_clk_r_i_1_n_0;
  wire [0:0]SR;
  wire TX_DV_i;
  wire \TX_bit_count_r[0]_i_1_n_0 ;
  wire \TX_bit_count_r[1]_i_1_n_0 ;
  wire \TX_bit_count_r[2]_i_1_n_0 ;
  wire \TX_bit_count_r_reg_n_0_[0] ;
  wire \TX_bit_count_r_reg_n_0_[1] ;
  wire \TX_bit_count_r_reg_n_0_[2] ;
  wire [7:0]TX_byte_i;
  wire [7:0]TX_byte_r;
  wire TX_ready_o;
  wire TX_ready_o1__3;
  wire TX_ready_o_i_1_n_0;
  wire clk_i;
  wire leading_edge_r;
  wire leading_edge_r3_out;
  wire rstn_i;
  wire rstn_i_0;
  wire trailing_edge_r;
  wire trailing_edge_r7_out;

  LUT6 #(
    .INIT(64'hAA2AFF2A2A2A2A2A)) 
    CS_r_i_1
       (.I0(SR),
        .I1(TX_DV_i),
        .I2(\FSM_onehot_SM_CS_r_reg[2] ),
        .I3(Master_Ready_w),
        .I4(SM_CS_r1__2),
        .I5(\FSM_onehot_SM_CS_r_reg[2]_2 ),
        .O(CS_r_reg_0));
  LUT6 #(
    .INIT(64'hFF00FF00AA2AFF2A)) 
    \FSM_onehot_SM_CS_r[0]_i_1 
       (.I0(\FSM_onehot_SM_CS_r_reg[2] ),
        .I1(SR),
        .I2(TX_DV_i),
        .I3(\FSM_onehot_SM_CS_r_reg[2]_0 ),
        .I4(\FSM_onehot_SM_CS_r_reg[2]_1 ),
        .I5(\FSM_onehot_SM_CS_r[0]_i_2_n_0 ),
        .O(\FSM_onehot_SM_CS_r_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_onehot_SM_CS_r[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Master_Ready_w),
        .I5(\FSM_onehot_SM_CS_r_reg[2]_2 ),
        .O(\FSM_onehot_SM_CS_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAFFAA80AA80)) 
    \FSM_onehot_SM_CS_r[1]_i_1 
       (.I0(\FSM_onehot_SM_CS_r_reg[2] ),
        .I1(SR),
        .I2(TX_DV_i),
        .I3(\FSM_onehot_SM_CS_r_reg[1] ),
        .I4(\FSM_onehot_SM_CS_r[2]_i_4_n_0 ),
        .I5(\FSM_onehot_SM_CS_r_reg[2]_2 ),
        .O(\FSM_onehot_SM_CS_r_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8F870007000)) 
    \FSM_onehot_SM_CS_r[2]_i_1 
       (.I0(\FSM_onehot_SM_CS_r_reg[2] ),
        .I1(SM_CS_r0__0),
        .I2(\FSM_onehot_SM_CS_r_reg[2]_0 ),
        .I3(\FSM_onehot_SM_CS_r_reg[2]_1 ),
        .I4(\FSM_onehot_SM_CS_r[2]_i_4_n_0 ),
        .I5(\FSM_onehot_SM_CS_r_reg[2]_2 ),
        .O(\FSM_onehot_SM_CS_r_reg[0] ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_SM_CS_r[2]_i_4 
       (.I0(Master_Ready_w),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\FSM_onehot_SM_CS_r[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    RX_DV_o_i_1
       (.I0(\RX_bit_count_r_reg_n_0_[1] ),
        .I1(\RX_bit_count_r_reg_n_0_[0] ),
        .I2(\RX_bit_count_r_reg_n_0_[2] ),
        .I3(Master_Ready_w),
        .I4(trailing_edge_r),
        .O(RX_DV_o5_out));
  LUT1 #(
    .INIT(2'h1)) 
    RX_DV_o_i_2
       (.I0(rstn_i),
        .O(rstn_i_0));
  FDCE RX_DV_o_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(RX_DV_o5_out),
        .Q(E));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \RX_bit_count_r[0]_i_1 
       (.I0(Master_Ready_w),
        .I1(trailing_edge_r),
        .I2(\RX_bit_count_r_reg_n_0_[0] ),
        .O(\RX_bit_count_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEFDC)) 
    \RX_bit_count_r[1]_i_1 
       (.I0(\RX_bit_count_r_reg_n_0_[0] ),
        .I1(Master_Ready_w),
        .I2(trailing_edge_r),
        .I3(\RX_bit_count_r_reg_n_0_[1] ),
        .O(\RX_bit_count_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFEFFF1F0)) 
    \RX_bit_count_r[2]_i_1 
       (.I0(\RX_bit_count_r_reg_n_0_[0] ),
        .I1(\RX_bit_count_r_reg_n_0_[1] ),
        .I2(Master_Ready_w),
        .I3(trailing_edge_r),
        .I4(\RX_bit_count_r_reg_n_0_[2] ),
        .O(\RX_bit_count_r[2]_i_1_n_0 ));
  FDPE \RX_bit_count_r_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\RX_bit_count_r[0]_i_1_n_0 ),
        .PRE(rstn_i_0),
        .Q(\RX_bit_count_r_reg_n_0_[0] ));
  FDPE \RX_bit_count_r_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\RX_bit_count_r[1]_i_1_n_0 ),
        .PRE(rstn_i_0),
        .Q(\RX_bit_count_r_reg_n_0_[1] ));
  FDPE \RX_bit_count_r_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\RX_bit_count_r[2]_i_1_n_0 ),
        .PRE(rstn_i_0),
        .Q(\RX_bit_count_r_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \RX_byte_o[0]_i_1 
       (.I0(SPI_MISO_i),
        .I1(\RX_bit_count_r_reg_n_0_[2] ),
        .I2(\RX_byte_o[4]_i_2_n_0 ),
        .I3(trailing_edge_r),
        .I4(Master_Ready_w),
        .I5(RX_byte_o[0]),
        .O(\RX_byte_o[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \RX_byte_o[1]_i_1 
       (.I0(SPI_MISO_i),
        .I1(\RX_bit_count_r_reg_n_0_[2] ),
        .I2(\RX_byte_o[5]_i_2_n_0 ),
        .I3(trailing_edge_r),
        .I4(Master_Ready_w),
        .I5(RX_byte_o[1]),
        .O(\RX_byte_o[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \RX_byte_o[2]_i_1 
       (.I0(SPI_MISO_i),
        .I1(\RX_bit_count_r_reg_n_0_[2] ),
        .I2(\RX_byte_o[6]_i_2_n_0 ),
        .I3(trailing_edge_r),
        .I4(Master_Ready_w),
        .I5(RX_byte_o[2]),
        .O(\RX_byte_o[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \RX_byte_o[3]_i_1 
       (.I0(SPI_MISO_i),
        .I1(\RX_bit_count_r_reg_n_0_[2] ),
        .I2(\RX_byte_o[7]_i_2_n_0 ),
        .I3(trailing_edge_r),
        .I4(Master_Ready_w),
        .I5(RX_byte_o[3]),
        .O(\RX_byte_o[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \RX_byte_o[4]_i_1 
       (.I0(SPI_MISO_i),
        .I1(\RX_bit_count_r_reg_n_0_[2] ),
        .I2(\RX_byte_o[4]_i_2_n_0 ),
        .I3(trailing_edge_r),
        .I4(Master_Ready_w),
        .I5(RX_byte_o[4]),
        .O(\RX_byte_o[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RX_byte_o[4]_i_2 
       (.I0(\RX_bit_count_r_reg_n_0_[1] ),
        .I1(\RX_bit_count_r_reg_n_0_[0] ),
        .O(\RX_byte_o[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \RX_byte_o[5]_i_1 
       (.I0(SPI_MISO_i),
        .I1(\RX_bit_count_r_reg_n_0_[2] ),
        .I2(\RX_byte_o[5]_i_2_n_0 ),
        .I3(trailing_edge_r),
        .I4(Master_Ready_w),
        .I5(RX_byte_o[5]),
        .O(\RX_byte_o[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \RX_byte_o[5]_i_2 
       (.I0(\RX_bit_count_r_reg_n_0_[1] ),
        .I1(\RX_bit_count_r_reg_n_0_[0] ),
        .O(\RX_byte_o[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \RX_byte_o[6]_i_1 
       (.I0(SPI_MISO_i),
        .I1(\RX_bit_count_r_reg_n_0_[2] ),
        .I2(\RX_byte_o[6]_i_2_n_0 ),
        .I3(trailing_edge_r),
        .I4(Master_Ready_w),
        .I5(RX_byte_o[6]),
        .O(\RX_byte_o[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \RX_byte_o[6]_i_2 
       (.I0(\RX_bit_count_r_reg_n_0_[0] ),
        .I1(\RX_bit_count_r_reg_n_0_[1] ),
        .O(\RX_byte_o[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \RX_byte_o[7]_i_1 
       (.I0(SPI_MISO_i),
        .I1(\RX_bit_count_r_reg_n_0_[2] ),
        .I2(\RX_byte_o[7]_i_2_n_0 ),
        .I3(trailing_edge_r),
        .I4(Master_Ready_w),
        .I5(RX_byte_o[7]),
        .O(\RX_byte_o[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \RX_byte_o[7]_i_2 
       (.I0(\RX_bit_count_r_reg_n_0_[1] ),
        .I1(\RX_bit_count_r_reg_n_0_[0] ),
        .O(\RX_byte_o[7]_i_2_n_0 ));
  FDCE \RX_byte_o_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(\RX_byte_o[0]_i_1_n_0 ),
        .Q(RX_byte_o[0]));
  FDCE \RX_byte_o_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(\RX_byte_o[1]_i_1_n_0 ),
        .Q(RX_byte_o[1]));
  FDCE \RX_byte_o_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(\RX_byte_o[2]_i_1_n_0 ),
        .Q(RX_byte_o[2]));
  FDCE \RX_byte_o_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(\RX_byte_o[3]_i_1_n_0 ),
        .Q(RX_byte_o[3]));
  FDCE \RX_byte_o_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(\RX_byte_o[4]_i_1_n_0 ),
        .Q(RX_byte_o[4]));
  FDCE \RX_byte_o_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(\RX_byte_o[5]_i_1_n_0 ),
        .Q(RX_byte_o[5]));
  FDCE \RX_byte_o_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(\RX_byte_o[6]_i_1_n_0 ),
        .Q(RX_byte_o[6]));
  FDCE \RX_byte_o_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(\RX_byte_o[7]_i_1_n_0 ),
        .Q(RX_byte_o[7]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    SPI_MOSI_o_i_1
       (.I0(SPI_MOSI_o_i_2_n_0),
        .I1(\TX_bit_count_r_reg_n_0_[2] ),
        .I2(SPI_MOSI_o_i_3_n_0),
        .I3(leading_edge_r),
        .I4(Master_Ready_w),
        .I5(SPI_MOSI_o),
        .O(SPI_MOSI_o_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SPI_MOSI_o_i_2
       (.I0(TX_byte_r[7]),
        .I1(TX_byte_r[6]),
        .I2(\TX_bit_count_r_reg_n_0_[1] ),
        .I3(TX_byte_r[5]),
        .I4(\TX_bit_count_r_reg_n_0_[0] ),
        .I5(TX_byte_r[4]),
        .O(SPI_MOSI_o_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SPI_MOSI_o_i_3
       (.I0(TX_byte_r[3]),
        .I1(TX_byte_r[2]),
        .I2(\TX_bit_count_r_reg_n_0_[1] ),
        .I3(TX_byte_r[1]),
        .I4(\TX_bit_count_r_reg_n_0_[0] ),
        .I5(TX_byte_r[0]),
        .O(SPI_MOSI_o_i_3_n_0));
  FDCE SPI_MOSI_o_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(SPI_MOSI_o_i_1_n_0),
        .Q(SPI_MOSI_o));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \SPI_clk_count_r[0]_i_1 
       (.I0(\SPI_clk_count_r_reg_n_0_[0] ),
        .O(\SPI_clk_count_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \SPI_clk_count_r[1]_i_1 
       (.I0(\SPI_clk_count_r_reg_n_0_[1] ),
        .I1(\SPI_clk_count_r_reg_n_0_[0] ),
        .O(SPI_clk_count_r[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \SPI_clk_count_r[2]_i_1 
       (.I0(\SPI_clk_count_r_reg_n_0_[0] ),
        .I1(\SPI_clk_count_r_reg_n_0_[1] ),
        .I2(\SPI_clk_count_r_reg_n_0_[2] ),
        .O(SPI_clk_count_r[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h1AAAAAAA)) 
    \SPI_clk_count_r[3]_i_1 
       (.I0(\SPI_clk_count_r_reg_n_0_[3] ),
        .I1(\SPI_clk_count_r_reg_n_0_[4] ),
        .I2(\SPI_clk_count_r_reg_n_0_[1] ),
        .I3(\SPI_clk_count_r_reg_n_0_[0] ),
        .I4(\SPI_clk_count_r_reg_n_0_[2] ),
        .O(SPI_clk_count_r[3]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \SPI_clk_count_r[4]_i_1 
       (.I0(SPI_clk_edges_r_reg[3]),
        .I1(SPI_clk_edges_r_reg[2]),
        .I2(SPI_clk_edges_r_reg[0]),
        .I3(SPI_clk_edges_r_reg[4]),
        .I4(SPI_clk_edges_r_reg[1]),
        .I5(TX_DV_i),
        .O(\SPI_clk_count_r[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h64CCCCCC)) 
    \SPI_clk_count_r[4]_i_2 
       (.I0(\SPI_clk_count_r_reg_n_0_[2] ),
        .I1(\SPI_clk_count_r_reg_n_0_[4] ),
        .I2(\SPI_clk_count_r_reg_n_0_[3] ),
        .I3(\SPI_clk_count_r_reg_n_0_[1] ),
        .I4(\SPI_clk_count_r_reg_n_0_[0] ),
        .O(SPI_clk_count_r[4]));
  FDCE \SPI_clk_count_r_reg[0] 
       (.C(clk_i),
        .CE(\SPI_clk_count_r[4]_i_1_n_0 ),
        .CLR(rstn_i_0),
        .D(\SPI_clk_count_r[0]_i_1_n_0 ),
        .Q(\SPI_clk_count_r_reg_n_0_[0] ));
  FDCE \SPI_clk_count_r_reg[1] 
       (.C(clk_i),
        .CE(\SPI_clk_count_r[4]_i_1_n_0 ),
        .CLR(rstn_i_0),
        .D(SPI_clk_count_r[1]),
        .Q(\SPI_clk_count_r_reg_n_0_[1] ));
  FDCE \SPI_clk_count_r_reg[2] 
       (.C(clk_i),
        .CE(\SPI_clk_count_r[4]_i_1_n_0 ),
        .CLR(rstn_i_0),
        .D(SPI_clk_count_r[2]),
        .Q(\SPI_clk_count_r_reg_n_0_[2] ));
  FDCE \SPI_clk_count_r_reg[3] 
       (.C(clk_i),
        .CE(\SPI_clk_count_r[4]_i_1_n_0 ),
        .CLR(rstn_i_0),
        .D(SPI_clk_count_r[3]),
        .Q(\SPI_clk_count_r_reg_n_0_[3] ));
  FDCE \SPI_clk_count_r_reg[4] 
       (.C(clk_i),
        .CE(\SPI_clk_count_r[4]_i_1_n_0 ),
        .CLR(rstn_i_0),
        .D(SPI_clk_count_r[4]),
        .Q(\SPI_clk_count_r_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \SPI_clk_edges_r[0]_i_1 
       (.I0(SPI_clk_edges_r_reg[0]),
        .I1(TX_DV_i),
        .O(\SPI_clk_edges_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \SPI_clk_edges_r[1]_i_1 
       (.I0(SPI_clk_edges_r_reg[1]),
        .I1(SPI_clk_edges_r_reg[0]),
        .I2(TX_DV_i),
        .O(\SPI_clk_edges_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00A9)) 
    \SPI_clk_edges_r[2]_i_1 
       (.I0(SPI_clk_edges_r_reg[2]),
        .I1(SPI_clk_edges_r_reg[0]),
        .I2(SPI_clk_edges_r_reg[1]),
        .I3(TX_DV_i),
        .O(\SPI_clk_edges_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000AAA9)) 
    \SPI_clk_edges_r[3]_i_1 
       (.I0(SPI_clk_edges_r_reg[3]),
        .I1(SPI_clk_edges_r_reg[1]),
        .I2(SPI_clk_edges_r_reg[0]),
        .I3(SPI_clk_edges_r_reg[2]),
        .I4(TX_DV_i),
        .O(\SPI_clk_edges_r[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \SPI_clk_edges_r[4]_i_1 
       (.I0(TX_DV_i),
        .I1(\SPI_clk_edges_r[4]_i_3_n_0 ),
        .I2(TX_ready_o1__3),
        .O(\SPI_clk_edges_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEB)) 
    \SPI_clk_edges_r[4]_i_2 
       (.I0(TX_DV_i),
        .I1(SPI_clk_edges_r_reg[4]),
        .I2(SPI_clk_edges_r_reg[2]),
        .I3(SPI_clk_edges_r_reg[0]),
        .I4(SPI_clk_edges_r_reg[1]),
        .I5(SPI_clk_edges_r_reg[3]),
        .O(\SPI_clk_edges_r[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h10008000)) 
    \SPI_clk_edges_r[4]_i_3 
       (.I0(\SPI_clk_count_r_reg_n_0_[2] ),
        .I1(\SPI_clk_count_r_reg_n_0_[4] ),
        .I2(\SPI_clk_count_r_reg_n_0_[0] ),
        .I3(\SPI_clk_count_r_reg_n_0_[1] ),
        .I4(\SPI_clk_count_r_reg_n_0_[3] ),
        .O(\SPI_clk_edges_r[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \SPI_clk_edges_r[4]_i_4 
       (.I0(SPI_clk_edges_r_reg[1]),
        .I1(SPI_clk_edges_r_reg[4]),
        .I2(SPI_clk_edges_r_reg[0]),
        .I3(SPI_clk_edges_r_reg[2]),
        .I4(SPI_clk_edges_r_reg[3]),
        .O(TX_ready_o1__3));
  FDCE \SPI_clk_edges_r_reg[0] 
       (.C(clk_i),
        .CE(\SPI_clk_edges_r[4]_i_1_n_0 ),
        .CLR(rstn_i_0),
        .D(\SPI_clk_edges_r[0]_i_1_n_0 ),
        .Q(SPI_clk_edges_r_reg[0]));
  FDCE \SPI_clk_edges_r_reg[1] 
       (.C(clk_i),
        .CE(\SPI_clk_edges_r[4]_i_1_n_0 ),
        .CLR(rstn_i_0),
        .D(\SPI_clk_edges_r[1]_i_1_n_0 ),
        .Q(SPI_clk_edges_r_reg[1]));
  FDCE \SPI_clk_edges_r_reg[2] 
       (.C(clk_i),
        .CE(\SPI_clk_edges_r[4]_i_1_n_0 ),
        .CLR(rstn_i_0),
        .D(\SPI_clk_edges_r[2]_i_1_n_0 ),
        .Q(SPI_clk_edges_r_reg[2]));
  FDCE \SPI_clk_edges_r_reg[3] 
       (.C(clk_i),
        .CE(\SPI_clk_edges_r[4]_i_1_n_0 ),
        .CLR(rstn_i_0),
        .D(\SPI_clk_edges_r[3]_i_1_n_0 ),
        .Q(SPI_clk_edges_r_reg[3]));
  FDCE \SPI_clk_edges_r_reg[4] 
       (.C(clk_i),
        .CE(\SPI_clk_edges_r[4]_i_1_n_0 ),
        .CLR(rstn_i_0),
        .D(\SPI_clk_edges_r[4]_i_2_n_0 ),
        .Q(SPI_clk_edges_r_reg[4]));
  FDPE SPI_clk_o_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(SPI_clk_r),
        .PRE(rstn_i_0),
        .Q(SPI_clk_o));
  LUT3 #(
    .INIT(8'h78)) 
    SPI_clk_r_i_1
       (.I0(\SPI_clk_edges_r[4]_i_3_n_0 ),
        .I1(\SPI_clk_count_r[4]_i_1_n_0 ),
        .I2(SPI_clk_r),
        .O(SPI_clk_r_i_1_n_0));
  FDPE SPI_clk_r_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(SPI_clk_r_i_1_n_0),
        .PRE(rstn_i_0),
        .Q(SPI_clk_r));
  LUT6 #(
    .INIT(64'hF800880088008800)) 
    \TX_Count_r[3]_i_1 
       (.I0(SR),
        .I1(\FSM_onehot_SM_CS_r_reg[2] ),
        .I2(Master_Ready_w),
        .I3(TX_DV_i),
        .I4(SM_CS_r1__2),
        .I5(\FSM_onehot_SM_CS_r_reg[2]_2 ),
        .O(CS_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \TX_bit_count_r[0]_i_1 
       (.I0(Master_Ready_w),
        .I1(leading_edge_r),
        .I2(\TX_bit_count_r_reg_n_0_[0] ),
        .O(\TX_bit_count_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEFDC)) 
    \TX_bit_count_r[1]_i_1 
       (.I0(\TX_bit_count_r_reg_n_0_[0] ),
        .I1(Master_Ready_w),
        .I2(leading_edge_r),
        .I3(\TX_bit_count_r_reg_n_0_[1] ),
        .O(\TX_bit_count_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFEFFF1F0)) 
    \TX_bit_count_r[2]_i_1 
       (.I0(\TX_bit_count_r_reg_n_0_[0] ),
        .I1(\TX_bit_count_r_reg_n_0_[1] ),
        .I2(Master_Ready_w),
        .I3(leading_edge_r),
        .I4(\TX_bit_count_r_reg_n_0_[2] ),
        .O(\TX_bit_count_r[2]_i_1_n_0 ));
  FDPE \TX_bit_count_r_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\TX_bit_count_r[0]_i_1_n_0 ),
        .PRE(rstn_i_0),
        .Q(\TX_bit_count_r_reg_n_0_[0] ));
  FDPE \TX_bit_count_r_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\TX_bit_count_r[1]_i_1_n_0 ),
        .PRE(rstn_i_0),
        .Q(\TX_bit_count_r_reg_n_0_[1] ));
  FDPE \TX_bit_count_r_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\TX_bit_count_r[2]_i_1_n_0 ),
        .PRE(rstn_i_0),
        .Q(\TX_bit_count_r_reg_n_0_[2] ));
  FDCE \TX_byte_r_reg[0] 
       (.C(clk_i),
        .CE(TX_DV_i),
        .CLR(rstn_i_0),
        .D(TX_byte_i[0]),
        .Q(TX_byte_r[0]));
  FDCE \TX_byte_r_reg[1] 
       (.C(clk_i),
        .CE(TX_DV_i),
        .CLR(rstn_i_0),
        .D(TX_byte_i[1]),
        .Q(TX_byte_r[1]));
  FDCE \TX_byte_r_reg[2] 
       (.C(clk_i),
        .CE(TX_DV_i),
        .CLR(rstn_i_0),
        .D(TX_byte_i[2]),
        .Q(TX_byte_r[2]));
  FDCE \TX_byte_r_reg[3] 
       (.C(clk_i),
        .CE(TX_DV_i),
        .CLR(rstn_i_0),
        .D(TX_byte_i[3]),
        .Q(TX_byte_r[3]));
  FDCE \TX_byte_r_reg[4] 
       (.C(clk_i),
        .CE(TX_DV_i),
        .CLR(rstn_i_0),
        .D(TX_byte_i[4]),
        .Q(TX_byte_r[4]));
  FDCE \TX_byte_r_reg[5] 
       (.C(clk_i),
        .CE(TX_DV_i),
        .CLR(rstn_i_0),
        .D(TX_byte_i[5]),
        .Q(TX_byte_r[5]));
  FDCE \TX_byte_r_reg[6] 
       (.C(clk_i),
        .CE(TX_DV_i),
        .CLR(rstn_i_0),
        .D(TX_byte_i[6]),
        .Q(TX_byte_r[6]));
  FDCE \TX_byte_r_reg[7] 
       (.C(clk_i),
        .CE(TX_DV_i),
        .CLR(rstn_i_0),
        .D(TX_byte_i[7]),
        .Q(TX_byte_r[7]));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    TX_ready_o_INST_0
       (.I0(\FSM_onehot_SM_CS_r_reg[2]_2 ),
        .I1(Master_Ready_w),
        .I2(SM_CS_r1__2),
        .I3(\FSM_onehot_SM_CS_r_reg[2] ),
        .I4(TX_DV_i),
        .O(TX_ready_o));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    TX_ready_o_i_1
       (.I0(TX_DV_i),
        .I1(SPI_clk_edges_r_reg[3]),
        .I2(SPI_clk_edges_r_reg[2]),
        .I3(SPI_clk_edges_r_reg[0]),
        .I4(SPI_clk_edges_r_reg[4]),
        .I5(SPI_clk_edges_r_reg[1]),
        .O(TX_ready_o_i_1_n_0));
  FDCE TX_ready_o_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(TX_ready_o_i_1_n_0),
        .Q(Master_Ready_w));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    leading_edge_r_i_1
       (.I0(\SPI_clk_count_r[4]_i_1_n_0 ),
        .I1(\SPI_clk_count_r_reg_n_0_[3] ),
        .I2(\SPI_clk_count_r_reg_n_0_[2] ),
        .I3(\SPI_clk_count_r_reg_n_0_[1] ),
        .I4(\SPI_clk_count_r_reg_n_0_[0] ),
        .I5(\SPI_clk_count_r_reg_n_0_[4] ),
        .O(leading_edge_r3_out));
  FDCE leading_edge_r_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(leading_edge_r3_out),
        .Q(leading_edge_r));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    trailing_edge_r_i_1
       (.I0(\SPI_clk_count_r[4]_i_1_n_0 ),
        .I1(\SPI_clk_count_r_reg_n_0_[1] ),
        .I2(\SPI_clk_count_r_reg_n_0_[0] ),
        .I3(\SPI_clk_count_r_reg_n_0_[2] ),
        .I4(\SPI_clk_count_r_reg_n_0_[4] ),
        .I5(\SPI_clk_count_r_reg_n_0_[3] ),
        .O(trailing_edge_r7_out));
  FDCE trailing_edge_r_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rstn_i_0),
        .D(trailing_edge_r7_out),
        .Q(trailing_edge_r));
endmodule

module spi_master_ip_SPI_Master_With_Single_CS
   (CS_r_reg_0,
    RX_DV_o,
    RX_byte_o,
    SPI_clk_o,
    RX_count_o,
    TX_ready_o,
    SPI_MOSI_o,
    TX_DV_i,
    TX_count_i,
    clk_i,
    SPI_MISO_i,
    TX_byte_i,
    rstn_i);
  output CS_r_reg_0;
  output RX_DV_o;
  output [7:0]RX_byte_o;
  output SPI_clk_o;
  output [3:0]RX_count_o;
  output TX_ready_o;
  output SPI_MOSI_o;
  input TX_DV_i;
  input [3:0]TX_count_i;
  input clk_i;
  input SPI_MISO_i;
  input [7:0]TX_byte_i;
  input rstn_i;

  wire \CS_Inactive_Count_r[-1]_i_1_n_0 ;
  wire \CS_Inactive_Count_r[0]_i_1_n_0 ;
  wire \CS_Inactive_Count_r_reg[-_n_0_1] ;
  wire \CS_Inactive_Count_r_reg_n_0_[0] ;
  wire CS_r_reg_0;
  wire \FSM_onehot_SM_CS_r[1]_i_2_n_0 ;
  wire \FSM_onehot_SM_CS_r[2]_i_3_n_0 ;
  wire \FSM_onehot_SM_CS_r_reg_n_0_[0] ;
  wire \FSM_onehot_SM_CS_r_reg_n_0_[1] ;
  wire \FSM_onehot_SM_CS_r_reg_n_0_[2] ;
  wire Master_Ready_w;
  wire RX_DV_o;
  wire [7:0]RX_byte_o;
  wire [3:0]RX_count_o;
  wire SM_CS_r0__0;
  wire SM_CS_r1__2;
  wire SPI_MISO_i;
  wire SPI_MOSI_o;
  wire SPI_Master_Inst_n_1;
  wire SPI_Master_Inst_n_10;
  wire SPI_Master_Inst_n_5;
  wire SPI_Master_Inst_n_6;
  wire SPI_Master_Inst_n_7;
  wire SPI_clk_o;
  wire [3:0]TX_Count_r;
  wire [0:0]TX_Count_r0_in;
  wire \TX_Count_r[1]_i_1_n_0 ;
  wire \TX_Count_r[2]_i_1_n_0 ;
  wire \TX_Count_r[3]_i_2_n_0 ;
  wire \TX_Count_r[3]_i_3_n_0 ;
  wire \TX_Count_r[3]_i_4_n_0 ;
  wire TX_Count_r_0;
  wire TX_DV_i;
  wire [7:0]TX_byte_i;
  wire [3:0]TX_count_i;
  wire TX_ready_o;
  wire clk_i;
  wire [3:0]p_0_in;
  wire rstn_i;

  LUT6 #(
    .INIT(64'hFF000020DF00DF00)) 
    \CS_Inactive_Count_r[-1]_i_1 
       (.I0(Master_Ready_w),
        .I1(SM_CS_r1__2),
        .I2(\FSM_onehot_SM_CS_r_reg_n_0_[1] ),
        .I3(\CS_Inactive_Count_r_reg[-_n_0_1] ),
        .I4(\CS_Inactive_Count_r_reg_n_0_[0] ),
        .I5(\FSM_onehot_SM_CS_r_reg_n_0_[2] ),
        .O(\CS_Inactive_Count_r[-1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF20FFFF2020)) 
    \CS_Inactive_Count_r[0]_i_1 
       (.I0(Master_Ready_w),
        .I1(SM_CS_r1__2),
        .I2(\FSM_onehot_SM_CS_r_reg_n_0_[1] ),
        .I3(\CS_Inactive_Count_r_reg[-_n_0_1] ),
        .I4(\CS_Inactive_Count_r_reg_n_0_[0] ),
        .I5(\FSM_onehot_SM_CS_r_reg_n_0_[2] ),
        .O(\CS_Inactive_Count_r[0]_i_1_n_0 ));
  FDCE \CS_Inactive_Count_r_reg[-1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(SPI_Master_Inst_n_1),
        .D(\CS_Inactive_Count_r[-1]_i_1_n_0 ),
        .Q(\CS_Inactive_Count_r_reg[-_n_0_1] ));
  FDPE \CS_Inactive_Count_r_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\CS_Inactive_Count_r[0]_i_1_n_0 ),
        .PRE(SPI_Master_Inst_n_1),
        .Q(\CS_Inactive_Count_r_reg_n_0_[0] ));
  FDPE CS_r_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(SPI_Master_Inst_n_10),
        .PRE(SPI_Master_Inst_n_1),
        .Q(CS_r_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_SM_CS_r[1]_i_2 
       (.I0(\FSM_onehot_SM_CS_r_reg_n_0_[2] ),
        .I1(\CS_Inactive_Count_r_reg_n_0_[0] ),
        .I2(\CS_Inactive_Count_r_reg[-_n_0_1] ),
        .O(\FSM_onehot_SM_CS_r[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_SM_CS_r[2]_i_2 
       (.I0(CS_r_reg_0),
        .I1(TX_DV_i),
        .O(SM_CS_r0__0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_SM_CS_r[2]_i_3 
       (.I0(\CS_Inactive_Count_r_reg[-_n_0_1] ),
        .I1(\CS_Inactive_Count_r_reg_n_0_[0] ),
        .O(\FSM_onehot_SM_CS_r[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:001,S_TRANSFER:010,S_CS_INACTIVE:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_SM_CS_r_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(SPI_Master_Inst_n_7),
        .PRE(SPI_Master_Inst_n_1),
        .Q(\FSM_onehot_SM_CS_r_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S_IDLE:001,S_TRANSFER:010,S_CS_INACTIVE:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_SM_CS_r_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(SPI_Master_Inst_n_1),
        .D(SPI_Master_Inst_n_6),
        .Q(\FSM_onehot_SM_CS_r_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "S_IDLE:001,S_TRANSFER:010,S_CS_INACTIVE:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_SM_CS_r_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(SPI_Master_Inst_n_1),
        .D(SPI_Master_Inst_n_5),
        .Q(\FSM_onehot_SM_CS_r_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \RX_count_o[0]_i_1 
       (.I0(RX_count_o[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \RX_count_o[1]_i_1 
       (.I0(RX_count_o[0]),
        .I1(RX_count_o[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \RX_count_o[2]_i_1 
       (.I0(RX_count_o[0]),
        .I1(RX_count_o[1]),
        .I2(RX_count_o[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \RX_count_o[3]_i_1 
       (.I0(RX_count_o[1]),
        .I1(RX_count_o[0]),
        .I2(RX_count_o[2]),
        .I3(RX_count_o[3]),
        .O(p_0_in[3]));
  FDRE \RX_count_o_reg[0] 
       (.C(clk_i),
        .CE(RX_DV_o),
        .D(p_0_in[0]),
        .Q(RX_count_o[0]),
        .R(CS_r_reg_0));
  FDRE \RX_count_o_reg[1] 
       (.C(clk_i),
        .CE(RX_DV_o),
        .D(p_0_in[1]),
        .Q(RX_count_o[1]),
        .R(CS_r_reg_0));
  FDRE \RX_count_o_reg[2] 
       (.C(clk_i),
        .CE(RX_DV_o),
        .D(p_0_in[2]),
        .Q(RX_count_o[2]),
        .R(CS_r_reg_0));
  FDRE \RX_count_o_reg[3] 
       (.C(clk_i),
        .CE(RX_DV_o),
        .D(p_0_in[3]),
        .Q(RX_count_o[3]),
        .R(CS_r_reg_0));
  spi_master_ip_SPI_Master SPI_Master_Inst
       (.CS_r_reg(TX_Count_r_0),
        .CS_r_reg_0(SPI_Master_Inst_n_10),
        .E(RX_DV_o),
        .\FSM_onehot_SM_CS_r_reg[0] (SPI_Master_Inst_n_5),
        .\FSM_onehot_SM_CS_r_reg[0]_0 (SPI_Master_Inst_n_6),
        .\FSM_onehot_SM_CS_r_reg[0]_1 (SPI_Master_Inst_n_7),
        .\FSM_onehot_SM_CS_r_reg[1] (\FSM_onehot_SM_CS_r[1]_i_2_n_0 ),
        .\FSM_onehot_SM_CS_r_reg[2] (\FSM_onehot_SM_CS_r_reg_n_0_[0] ),
        .\FSM_onehot_SM_CS_r_reg[2]_0 (\FSM_onehot_SM_CS_r_reg_n_0_[2] ),
        .\FSM_onehot_SM_CS_r_reg[2]_1 (\FSM_onehot_SM_CS_r[2]_i_3_n_0 ),
        .\FSM_onehot_SM_CS_r_reg[2]_2 (\FSM_onehot_SM_CS_r_reg_n_0_[1] ),
        .Master_Ready_w(Master_Ready_w),
        .Q(TX_Count_r),
        .RX_byte_o(RX_byte_o),
        .SM_CS_r0__0(SM_CS_r0__0),
        .SM_CS_r1__2(SM_CS_r1__2),
        .SPI_MISO_i(SPI_MISO_i),
        .SPI_MOSI_o(SPI_MOSI_o),
        .SPI_clk_o(SPI_clk_o),
        .SR(CS_r_reg_0),
        .TX_DV_i(TX_DV_i),
        .TX_byte_i(TX_byte_i),
        .TX_ready_o(TX_ready_o),
        .clk_i(clk_i),
        .rstn_i(rstn_i),
        .rstn_i_0(SPI_Master_Inst_n_1));
  LUT4 #(
    .INIT(16'h0777)) 
    \TX_Count_r[0]_i_1 
       (.I0(\FSM_onehot_SM_CS_r_reg_n_0_[1] ),
        .I1(TX_Count_r[0]),
        .I2(\FSM_onehot_SM_CS_r_reg_n_0_[0] ),
        .I3(TX_count_i[0]),
        .O(TX_Count_r0_in));
  LUT6 #(
    .INIT(64'hECECAF5FE313AF5F)) 
    \TX_Count_r[1]_i_1 
       (.I0(TX_Count_r[0]),
        .I1(TX_count_i[0]),
        .I2(\FSM_onehot_SM_CS_r_reg_n_0_[1] ),
        .I3(TX_Count_r[1]),
        .I4(\FSM_onehot_SM_CS_r_reg_n_0_[0] ),
        .I5(TX_count_i[1]),
        .O(\TX_Count_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAA959595)) 
    \TX_Count_r[2]_i_1 
       (.I0(\TX_Count_r[3]_i_4_n_0 ),
        .I1(\FSM_onehot_SM_CS_r_reg_n_0_[1] ),
        .I2(TX_Count_r[2]),
        .I3(\FSM_onehot_SM_CS_r_reg_n_0_[0] ),
        .I4(TX_count_i[2]),
        .O(\TX_Count_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE111E111E111)) 
    \TX_Count_r[3]_i_2 
       (.I0(\TX_Count_r[3]_i_3_n_0 ),
        .I1(\TX_Count_r[3]_i_4_n_0 ),
        .I2(\FSM_onehot_SM_CS_r_reg_n_0_[1] ),
        .I3(TX_Count_r[3]),
        .I4(\FSM_onehot_SM_CS_r_reg_n_0_[0] ),
        .I5(TX_count_i[3]),
        .O(\TX_Count_r[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \TX_Count_r[3]_i_3 
       (.I0(TX_count_i[2]),
        .I1(\FSM_onehot_SM_CS_r_reg_n_0_[0] ),
        .I2(TX_Count_r[2]),
        .I3(\FSM_onehot_SM_CS_r_reg_n_0_[1] ),
        .O(\TX_Count_r[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    \TX_Count_r[3]_i_4 
       (.I0(TX_Count_r[0]),
        .I1(TX_count_i[0]),
        .I2(\FSM_onehot_SM_CS_r_reg_n_0_[1] ),
        .I3(TX_Count_r[1]),
        .I4(\FSM_onehot_SM_CS_r_reg_n_0_[0] ),
        .I5(TX_count_i[1]),
        .O(\TX_Count_r[3]_i_4_n_0 ));
  FDCE \TX_Count_r_reg[0] 
       (.C(clk_i),
        .CE(TX_Count_r_0),
        .CLR(SPI_Master_Inst_n_1),
        .D(TX_Count_r0_in),
        .Q(TX_Count_r[0]));
  FDCE \TX_Count_r_reg[1] 
       (.C(clk_i),
        .CE(TX_Count_r_0),
        .CLR(SPI_Master_Inst_n_1),
        .D(\TX_Count_r[1]_i_1_n_0 ),
        .Q(TX_Count_r[1]));
  FDCE \TX_Count_r_reg[2] 
       (.C(clk_i),
        .CE(TX_Count_r_0),
        .CLR(SPI_Master_Inst_n_1),
        .D(\TX_Count_r[2]_i_1_n_0 ),
        .Q(TX_Count_r[2]));
  FDCE \TX_Count_r_reg[3] 
       (.C(clk_i),
        .CE(TX_Count_r_0),
        .CLR(SPI_Master_Inst_n_1),
        .D(\TX_Count_r[3]_i_2_n_0 ),
        .Q(TX_Count_r[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    TX_ready_o_INST_0_i_1
       (.I0(TX_Count_r[2]),
        .I1(TX_Count_r[1]),
        .I2(TX_Count_r[0]),
        .I3(TX_Count_r[3]),
        .O(SM_CS_r1__2));
endmodule

(* CHECK_LICENSE_TYPE = "spi_master_ip,SPI_Master_With_Single_CS,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "SPI_Master_With_Single_CS,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module spi_master_ip
   (rstn_i,
    clk_i,
    TX_count_i,
    TX_byte_i,
    TX_DV_i,
    TX_ready_o,
    RX_count_o,
    RX_DV_o,
    RX_byte_o,
    SPI_clk_o,
    SPI_MISO_i,
    SPI_MOSI_o,
    SPI_CS_o);
  input rstn_i;
  input clk_i;
  input [3:0]TX_count_i;
  input [7:0]TX_byte_i;
  input TX_DV_i;
  output TX_ready_o;
  output [3:0]RX_count_o;
  output RX_DV_o;
  output [7:0]RX_byte_o;
  output SPI_clk_o;
  input SPI_MISO_i;
  output SPI_MOSI_o;
  output SPI_CS_o;

  wire RX_DV_o;
  wire [7:0]RX_byte_o;
  wire [3:0]RX_count_o;
  wire SPI_CS_o;
  wire SPI_MISO_i;
  wire SPI_MOSI_o;
  wire SPI_clk_o;
  wire TX_DV_i;
  wire [7:0]TX_byte_i;
  wire [3:0]TX_count_i;
  wire TX_ready_o;
  wire clk_i;
  wire rstn_i;

  spi_master_ip_SPI_Master_With_Single_CS inst
       (.CS_r_reg_0(SPI_CS_o),
        .RX_DV_o(RX_DV_o),
        .RX_byte_o(RX_byte_o),
        .RX_count_o(RX_count_o),
        .SPI_MISO_i(SPI_MISO_i),
        .SPI_MOSI_o(SPI_MOSI_o),
        .SPI_clk_o(SPI_clk_o),
        .TX_DV_i(TX_DV_i),
        .TX_byte_i(TX_byte_i),
        .TX_count_i(TX_count_i),
        .TX_ready_o(TX_ready_o),
        .clk_i(clk_i),
        .rstn_i(rstn_i));
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
