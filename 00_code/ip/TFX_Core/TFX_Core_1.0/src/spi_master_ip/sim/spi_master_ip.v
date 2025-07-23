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


// IP VLNV: user.org:user:SPI_Master:1.0
// IP Revision: 4

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module spi_master_ip (
  rstn_i,
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
  SPI_CS_o
);

input wire rstn_i;
input wire clk_i;
input wire [3 : 0] TX_count_i;
input wire [7 : 0] TX_byte_i;
input wire TX_DV_i;
output wire TX_ready_o;
output wire [3 : 0] RX_count_o;
output wire RX_DV_o;
output wire [7 : 0] RX_byte_o;
output wire SPI_clk_o;
input wire SPI_MISO_i;
output wire SPI_MOSI_o;
output wire SPI_CS_o;

  SPI_Master_With_Single_CS #(
    .SPI_MODE(3),
    .CLKS_PER_HALF_BIT(12),
    .MAX_BYTES_PER_CS(8),
    .CS_INACTIVE_CLKS(1)
  ) inst (
    .rstn_i(rstn_i),
    .clk_i(clk_i),
    .TX_count_i(TX_count_i),
    .TX_byte_i(TX_byte_i),
    .TX_DV_i(TX_DV_i),
    .TX_ready_o(TX_ready_o),
    .RX_count_o(RX_count_o),
    .RX_DV_o(RX_DV_o),
    .RX_byte_o(RX_byte_o),
    .SPI_clk_o(SPI_clk_o),
    .SPI_MISO_i(SPI_MISO_i),
    .SPI_MOSI_o(SPI_MOSI_o),
    .SPI_CS_o(SPI_CS_o)
  );
endmodule
