-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:CWT_withoutBRAM:1.0
-- IP Revision: 4

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT CWT_nBRAM
  PORT (
    clk : IN STD_LOGIC;
    rstn : IN STD_LOGIC;
    start_i : IN STD_LOGIC;
    dready_i : IN STD_LOGIC;
    dl_busy_i : IN STD_LOGIC;
    x_re_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x_im_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    busy_o : OUT STD_LOGIC;
    cwt_row_done_o : OUT STD_LOGIC;
    cwt_row_ready_o : OUT STD_LOGIC;
    X_re_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    X_im_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    fft_ready : OUT STD_LOGIC;
    fft_done : OUT STD_LOGIC;
    fft_re : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    fft_im : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    mul_ready : OUT STD_LOGIC;
    mul_done : OUT STD_LOGIC;
    mul_re : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    mul_im : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    div_re : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    div_im : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : CWT_nBRAM
  PORT MAP (
    clk => clk,
    rstn => rstn,
    start_i => start_i,
    dready_i => dready_i,
    dl_busy_i => dl_busy_i,
    x_re_i => x_re_i,
    x_im_i => x_im_i,
    busy_o => busy_o,
    cwt_row_done_o => cwt_row_done_o,
    cwt_row_ready_o => cwt_row_ready_o,
    X_re_o => X_re_o,
    X_im_o => X_im_o,
    fft_ready => fft_ready,
    fft_done => fft_done,
    fft_re => fft_re,
    fft_im => fft_im,
    mul_ready => mul_ready,
    mul_done => mul_done,
    mul_re => mul_re,
    mul_im => mul_im,
    div_re => div_re,
    div_im => div_im
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

