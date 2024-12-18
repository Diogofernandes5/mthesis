-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: user.org:user:fft_architecture:1.0
-- IP Revision: 6

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT fft_architecture_0
  PORT (
    clk : IN STD_LOGIC;
    rstn : IN STD_LOGIC;
    start_i : IN STD_LOGIC;
    x0_re_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x0_im_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x1_re_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x1_im_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    fft_ready_o : OUT STD_LOGIC;
    x0_re_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x0_im_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x1_re_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x1_im_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x0_re_ram : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x0_im_ram : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x1_re_ram : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x1_im_ram : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    X0_re_bf : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    X0_im_bf : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    X1_re_bf : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    X1_im_bf : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    w_re : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    w_im : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    bram_addr_x0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    bram_addr_x1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    bram_x0_en : OUT STD_LOGIC;
    bram_x1_en : OUT STD_LOGIC;
    twiddle_addr : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : fft_architecture_0
  PORT MAP (
    clk => clk,
    rstn => rstn,
    start_i => start_i,
    x0_re_i => x0_re_i,
    x0_im_i => x0_im_i,
    x1_re_i => x1_re_i,
    x1_im_i => x1_im_i,
    fft_ready_o => fft_ready_o,
    x0_re_o => x0_re_o,
    x0_im_o => x0_im_o,
    x1_re_o => x1_re_o,
    x1_im_o => x1_im_o,
    x0_re_ram => x0_re_ram,
    x0_im_ram => x0_im_ram,
    x1_re_ram => x1_re_ram,
    x1_im_ram => x1_im_ram,
    X0_re_bf => X0_re_bf,
    X0_im_bf => X0_im_bf,
    X1_re_bf => X1_re_bf,
    X1_im_bf => X1_im_bf,
    w_re => w_re,
    w_im => w_im,
    bram_addr_x0 => bram_addr_x0,
    bram_addr_x1 => bram_addr_x1,
    bram_x0_en => bram_x0_en,
    bram_x1_en => bram_x1_en,
    twiddle_addr => twiddle_addr,
    state => state
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

