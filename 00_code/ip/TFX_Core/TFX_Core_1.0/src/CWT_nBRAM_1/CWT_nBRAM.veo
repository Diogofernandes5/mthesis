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

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
CWT_nBRAM your_instance_name (
  .clk(clk),                          // input wire clk
  .rstn(rstn),                        // input wire rstn
  .start_i(start_i),                  // input wire start_i
  .dready_i(dready_i),                // input wire dready_i
  .dl_busy_i(dl_busy_i),              // input wire dl_busy_i
  .x_re_i(x_re_i),                    // input wire [31 : 0] x_re_i
  .x_im_i(x_im_i),                    // input wire [31 : 0] x_im_i
  .busy_o(busy_o),                    // output wire busy_o
  .cwt_row_done_o(cwt_row_done_o),    // output wire cwt_row_done_o
  .cwt_row_ready_o(cwt_row_ready_o),  // output wire cwt_row_ready_o
  .X_re_o(X_re_o),                    // output wire [31 : 0] X_re_o
  .X_im_o(X_im_o),                    // output wire [31 : 0] X_im_o
  .fft_ready(fft_ready),              // output wire fft_ready
  .fft_done(fft_done),                // output wire fft_done
  .fft_re(fft_re),                    // output wire [31 : 0] fft_re
  .fft_im(fft_im),                    // output wire [31 : 0] fft_im
  .mul_ready(mul_ready),              // output wire mul_ready
  .mul_done(mul_done),                // output wire mul_done
  .mul_re(mul_re),                    // output wire [31 : 0] mul_re
  .mul_im(mul_im),                    // output wire [31 : 0] mul_im
  .div_re(div_re),                    // output wire [31 : 0] div_re
  .div_im(div_im)                    // output wire [31 : 0] div_im
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

