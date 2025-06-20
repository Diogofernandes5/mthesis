

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "TFX_Core" "NUM_INSTANCES" "DEVICE_ID"  "C_S_AXI_Config_BASEADDR" "C_S_AXI_Config_HIGHADDR"
}
