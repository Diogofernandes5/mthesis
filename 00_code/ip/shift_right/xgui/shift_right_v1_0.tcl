
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/shift_right_v1_0.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "WIDTH"
  set SHIFT_NUM [ipgui::add_param $IPINST -name "SHIFT_NUM"]
  set_property tooltip {Number of right shifts to be performed} ${SHIFT_NUM}

}

proc update_PARAM_VALUE.SHIFT_NUM { PARAM_VALUE.SHIFT_NUM PARAM_VALUE.SHIFT_NUM PARAM_VALUE.WIDTH } {
	# Procedure called to update SHIFT_NUM when any of the dependent parameters in the arguments change
	
	set SHIFT_NUM ${PARAM_VALUE.SHIFT_NUM}
	set WIDTH ${PARAM_VALUE.WIDTH}
	set values(SHIFT_NUM) [get_property value $SHIFT_NUM]
	set values(WIDTH) [get_property value $WIDTH]
	if { [gen_USERPARAMETER_SHIFT_NUM_ENABLEMENT $values(SHIFT_NUM) $values(WIDTH)] } {
		set_property enabled true $SHIFT_NUM
	} else {
		set_property enabled false $SHIFT_NUM
	}
}

proc validate_PARAM_VALUE.SHIFT_NUM { PARAM_VALUE.SHIFT_NUM } {
	# Procedure called to validate SHIFT_NUM
	return true
}

proc update_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to update WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to validate WIDTH
	return true
}


proc update_MODELPARAM_VALUE.SHIFT_NUM { MODELPARAM_VALUE.SHIFT_NUM PARAM_VALUE.SHIFT_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SHIFT_NUM}] ${MODELPARAM_VALUE.SHIFT_NUM}
}

proc update_MODELPARAM_VALUE.WIDTH { MODELPARAM_VALUE.WIDTH PARAM_VALUE.WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH}] ${MODELPARAM_VALUE.WIDTH}
}

