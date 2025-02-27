# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/fernandes/thesis/00_code/tests/i2s/sw/i2s_test_system/_ide/scripts/debugger_i2s_test-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/fernandes/thesis/00_code/tests/i2s/sw/i2s_test_system/_ide/scripts/debugger_i2s_test-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351AB6DB4A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351AB6DB4A-13722093-0"}
fpga -file /home/fernandes/thesis/00_code/tests/i2s/sw/i2s_test/_ide/bitstream/i2s_bd_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/fernandes/thesis/00_code/tests/i2s/sw/i2s_bd_wrapper/export/i2s_bd_wrapper/hw/i2s_bd_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
stop
targets -set -nocase -filter {name =~ "*A9*#0"}
rst -processor
dow /home/fernandes/thesis/00_code/tests/i2s/sw/i2s_bd_wrapper/export/i2s_bd_wrapper/sw/i2s_bd_wrapper/boot/fsbl.elf
set bp_13_19_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_13_19_fsbl_bp
configparams force-mem-access 0
bpadd -addr &main
