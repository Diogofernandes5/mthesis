// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:butterfly_full_ip:1.0
// IP Revision: 27

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module butterfly_full_ip_0 (
  clk,
  rstn,
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
  X1_im_o,
  x1_re_x_w_re_r,
  x1_im_x_w_im_r,
  x1_re_x_w_im_r,
  x1_im_x_w_re_r,
  z_re_r,
  z_im_r,
  z_re,
  z_im,
  z_re_shifted,
  z_im_shifted
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
input wire CE;
input wire [31 : 0] x0_re_i;
input wire [31 : 0] x0_im_i;
input wire [31 : 0] x1_re_i;
input wire [31 : 0] x1_im_i;
input wire [31 : 0] w_re_i;
input wire [31 : 0] w_im_i;
output wire [31 : 0] X0_re_o;
output wire [31 : 0] X0_im_o;
output wire [31 : 0] X1_re_o;
output wire [31 : 0] X1_im_o;
output wire [31 : 0] x1_re_x_w_re_r;
output wire [31 : 0] x1_im_x_w_im_r;
output wire [31 : 0] x1_re_x_w_im_r;
output wire [31 : 0] x1_im_x_w_re_r;
output wire [31 : 0] z_re_r;
output wire [31 : 0] z_im_r;
output wire [31 : 0] z_re;
output wire [31 : 0] z_im;
output wire [31 : 0] z_re_shifted;
output wire [31 : 0] z_im_shifted;

  butterfly_full inst (
    .clk(clk),
    .rstn(rstn),
    .CE(CE),
    .x0_re_i(x0_re_i),
    .x0_im_i(x0_im_i),
    .x1_re_i(x1_re_i),
    .x1_im_i(x1_im_i),
    .w_re_i(w_re_i),
    .w_im_i(w_im_i),
    .X0_re_o(X0_re_o),
    .X0_im_o(X0_im_o),
    .X1_re_o(X1_re_o),
    .X1_im_o(X1_im_o),
    .x1_re_x_w_re_r(x1_re_x_w_re_r),
    .x1_im_x_w_im_r(x1_im_x_w_im_r),
    .x1_re_x_w_im_r(x1_re_x_w_im_r),
    .x1_im_x_w_re_r(x1_im_x_w_re_r),
    .z_re_r(z_re_r),
    .z_im_r(z_im_r),
    .z_re(z_re),
    .z_im(z_im),
    .z_re_shifted(z_re_shifted),
    .z_im_shifted(z_im_shifted)
  );
endmodule
