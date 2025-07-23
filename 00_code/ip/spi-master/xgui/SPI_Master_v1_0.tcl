# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set CLKS_PER_HALF_BIT [ipgui::add_param $IPINST -name "CLKS_PER_HALF_BIT" -parent ${Page_0}]
  set_property tooltip {Sets frequency of SPI_clk_o. SPI_clk_o is derived from clk_i. Set to integer number of clocks for each half-bit of SPI data.  E.g. 100 MHz clk_i, CLKS_PER_HALF_BIT = 2 would create o_SPI_CLK of 25 MHz. Must be >= 2} ${CLKS_PER_HALF_BIT}
  set CS_INACTIVE_CLKS [ipgui::add_param $IPINST -name "CS_INACTIVE_CLKS" -parent ${Page_0}]
  set_property tooltip {Sets the amount of time in clock cycles to hold the state of Chip-Selct high (inactive) before next command is allowed on the line. Useful if chip requires some time when CS is high between transfers.} ${CS_INACTIVE_CLKS}
  set MAX_BYTES_PER_CS [ipgui::add_param $IPINST -name "MAX_BYTES_PER_CS" -parent ${Page_0}]
  set_property tooltip {Set to the maximum number of bytes that will be sent during a single CS-low pulse.} ${MAX_BYTES_PER_CS}
  ipgui::add_param $IPINST -name "SPI_MODE" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLKS_PER_HALF_BIT { PARAM_VALUE.CLKS_PER_HALF_BIT } {
	# Procedure called to update CLKS_PER_HALF_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLKS_PER_HALF_BIT { PARAM_VALUE.CLKS_PER_HALF_BIT } {
	# Procedure called to validate CLKS_PER_HALF_BIT
	return true
}

proc update_PARAM_VALUE.CS_INACTIVE_CLKS { PARAM_VALUE.CS_INACTIVE_CLKS } {
	# Procedure called to update CS_INACTIVE_CLKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CS_INACTIVE_CLKS { PARAM_VALUE.CS_INACTIVE_CLKS } {
	# Procedure called to validate CS_INACTIVE_CLKS
	return true
}

proc update_PARAM_VALUE.MAX_BYTES_PER_CS { PARAM_VALUE.MAX_BYTES_PER_CS } {
	# Procedure called to update MAX_BYTES_PER_CS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_BYTES_PER_CS { PARAM_VALUE.MAX_BYTES_PER_CS } {
	# Procedure called to validate MAX_BYTES_PER_CS
	return true
}

proc update_PARAM_VALUE.SPI_MODE { PARAM_VALUE.SPI_MODE } {
	# Procedure called to update SPI_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SPI_MODE { PARAM_VALUE.SPI_MODE } {
	# Procedure called to validate SPI_MODE
	return true
}


proc update_MODELPARAM_VALUE.SPI_MODE { MODELPARAM_VALUE.SPI_MODE PARAM_VALUE.SPI_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SPI_MODE}] ${MODELPARAM_VALUE.SPI_MODE}
}

proc update_MODELPARAM_VALUE.CLKS_PER_HALF_BIT { MODELPARAM_VALUE.CLKS_PER_HALF_BIT PARAM_VALUE.CLKS_PER_HALF_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLKS_PER_HALF_BIT}] ${MODELPARAM_VALUE.CLKS_PER_HALF_BIT}
}

proc update_MODELPARAM_VALUE.MAX_BYTES_PER_CS { MODELPARAM_VALUE.MAX_BYTES_PER_CS PARAM_VALUE.MAX_BYTES_PER_CS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_BYTES_PER_CS}] ${MODELPARAM_VALUE.MAX_BYTES_PER_CS}
}

proc update_MODELPARAM_VALUE.CS_INACTIVE_CLKS { MODELPARAM_VALUE.CS_INACTIVE_CLKS PARAM_VALUE.CS_INACTIVE_CLKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CS_INACTIVE_CLKS}] ${MODELPARAM_VALUE.CS_INACTIVE_CLKS}
}

