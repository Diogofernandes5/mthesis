# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FIRST_STAGE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "STAGES_NUM" -parent ${Page_0}

  ipgui::add_param $IPINST -name "BF_OP_CYCLES"

}

proc update_PARAM_VALUE.BF_OP_CYCLES { PARAM_VALUE.BF_OP_CYCLES } {
	# Procedure called to update BF_OP_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BF_OP_CYCLES { PARAM_VALUE.BF_OP_CYCLES } {
	# Procedure called to validate BF_OP_CYCLES
	return true
}

proc update_PARAM_VALUE.FIRST_STAGE { PARAM_VALUE.FIRST_STAGE } {
	# Procedure called to update FIRST_STAGE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIRST_STAGE { PARAM_VALUE.FIRST_STAGE } {
	# Procedure called to validate FIRST_STAGE
	return true
}

proc update_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to update N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to validate N
	return true
}

proc update_PARAM_VALUE.STAGES_NUM { PARAM_VALUE.STAGES_NUM } {
	# Procedure called to update STAGES_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STAGES_NUM { PARAM_VALUE.STAGES_NUM } {
	# Procedure called to validate STAGES_NUM
	return true
}


proc update_MODELPARAM_VALUE.N { MODELPARAM_VALUE.N PARAM_VALUE.N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N}] ${MODELPARAM_VALUE.N}
}

proc update_MODELPARAM_VALUE.STAGES_NUM { MODELPARAM_VALUE.STAGES_NUM PARAM_VALUE.STAGES_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STAGES_NUM}] ${MODELPARAM_VALUE.STAGES_NUM}
}

proc update_MODELPARAM_VALUE.FIRST_STAGE { MODELPARAM_VALUE.FIRST_STAGE PARAM_VALUE.FIRST_STAGE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIRST_STAGE}] ${MODELPARAM_VALUE.FIRST_STAGE}
}

proc update_MODELPARAM_VALUE.BF_OP_CYCLES { MODELPARAM_VALUE.BF_OP_CYCLES PARAM_VALUE.BF_OP_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BF_OP_CYCLES}] ${MODELPARAM_VALUE.BF_OP_CYCLES}
}

