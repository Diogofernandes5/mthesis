-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Wed Apr 10 15:42:54 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fernandes/thesis/00_code/ip/fft/stage1/stage1.gen/sources_1/ip/fft_control_unit/fft_control_unit_sim_netlist.vhdl
-- Design      : fft_control_unit
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    start_i : in STD_LOGIC;
    src_sel_o : out STD_LOGIC;
    fft_ready_o : out STD_LOGIC;
    bram_we_o : out STD_LOGIC;
    bf_ce_o : out STD_LOGIC;
    bram_addr_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    twiddle_addr_o : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fft_control_unit : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fft_control_unit : entity is "fft_control_unit,control_unit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_control_unit : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fft_control_unit : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_control_unit : entity is "control_unit,Vivado 2021.1";
end fft_control_unit;

architecture STRUCTURE of fft_control_unit is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  bf_ce_o <= \<const0>\;
  bram_addr_o(8) <= \<const0>\;
  bram_addr_o(7) <= \<const0>\;
  bram_addr_o(6) <= \<const0>\;
  bram_addr_o(5) <= \<const0>\;
  bram_addr_o(4) <= \<const0>\;
  bram_addr_o(3) <= \<const0>\;
  bram_addr_o(2) <= \<const0>\;
  bram_addr_o(1) <= \<const0>\;
  bram_addr_o(0) <= \<const0>\;
  bram_we_o <= \<const0>\;
  fft_ready_o <= \<const0>\;
  src_sel_o <= \<const0>\;
  twiddle_addr_o(8) <= \<const0>\;
  twiddle_addr_o(7) <= \<const0>\;
  twiddle_addr_o(6) <= \<const0>\;
  twiddle_addr_o(5) <= \<const0>\;
  twiddle_addr_o(4) <= \<const0>\;
  twiddle_addr_o(3) <= \<const0>\;
  twiddle_addr_o(2) <= \<const0>\;
  twiddle_addr_o(1) <= \<const0>\;
  twiddle_addr_o(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
