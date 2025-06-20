// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
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


// IP VLNV: user.org:user:CWT_withoutBRAM:1.0
// IP Revision: 4

(* X_CORE_INFO = "cwt,Vivado 2021.1" *)
(* CHECK_LICENSE_TYPE = "CWT_nBRAM,cwt,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module CWT_nBRAM (
  clk,
  rstn,
  start_i,
  dready_i,
  dl_busy_i,
  x_re_i,
  x_im_i,
  busy_o,
  cwt_row_done_o,
  cwt_row_ready_o,
  X_re_o,
  X_im_o,
  fft_ready,
  fft_done,
  fft_re,
  fft_im,
  mul_ready,
  mul_done,
  mul_re,
  mul_im,
  div_re,
  div_im
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
input wire start_i;
input wire dready_i;
input wire dl_busy_i;
input wire [31 : 0] x_re_i;
input wire [31 : 0] x_im_i;
output wire busy_o;
output wire cwt_row_done_o;
output wire cwt_row_ready_o;
output wire [31 : 0] X_re_o;
output wire [31 : 0] X_im_o;
output wire fft_ready;
output wire fft_done;
output wire [31 : 0] fft_re;
output wire [31 : 0] fft_im;
output wire mul_ready;
output wire mul_done;
output wire [31 : 0] mul_re;
output wire [31 : 0] mul_im;
output wire [31 : 0] div_re;
output wire [31 : 0] div_im;

  cwt #(
    .N(256),
    .J1(4)
  ) inst (
    .clk(clk),
    .rstn(rstn),
    .start_i(start_i),
    .dready_i(dready_i),
    .dl_busy_i(dl_busy_i),
    .x_re_i(x_re_i),
    .x_im_i(x_im_i),
    .busy_o(busy_o),
    .cwt_row_done_o(cwt_row_done_o),
    .cwt_row_ready_o(cwt_row_ready_o),
    .X_re_o(X_re_o),
    .X_im_o(X_im_o),
    .fft_ready(fft_ready),
    .fft_done(fft_done),
    .fft_re(fft_re),
    .fft_im(fft_im),
    .mul_ready(mul_ready),
    .mul_done(mul_done),
    .mul_re(mul_re),
    .mul_im(mul_im),
    .div_re(div_re),
    .div_im(div_im)
  );
endmodule
