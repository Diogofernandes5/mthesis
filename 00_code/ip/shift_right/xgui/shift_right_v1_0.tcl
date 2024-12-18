# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "shift_num" -parent ${Page_0}
  ipgui::add_param $IPINST -name "width" -parent ${Page_0}


}

proc update_PARAM_VALUE.shift_num { PARAM_VALUE.shift_num } {
	# Procedure called to update shift_num when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.shift_num { PARAM_VALUE.shift_num } {
	# Procedure called to validate shift_num
	return true
}

proc update_PARAM_VALUE.width { PARAM_VALUE.width } {
	# Procedure called to update width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.width { PARAM_VALUE.width } {
	# Procedure called to validate width
	return true
}


proc update_MODELPARAM_VALUE.shift_num { MODELPARAM_VALUE.shift_num PARAM_VALUE.shift_num } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.shift_num}] ${MODELPARAM_VALUE.shift_num}
}

proc update_MODELPARAM_VALUE.width { MODELPARAM_VALUE.width PARAM_VALUE.width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.width}] ${MODELPARAM_VALUE.width}
}

