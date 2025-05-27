# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/freeRTOS_tcp_sendDataTmr/freeRTOS_tc_sendDataTmr_system/_ide/scripts/systemdebugger_freertos_tc_senddatatmr_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/freeRTOS_tcp_sendDataTmr/freeRTOS_tc_sendDataTmr_system/_ide/scripts/systemdebugger_freertos_tc_senddatatmr_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351AB6DB4A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351AB6DB4A-13722093-0"}
fpga -file /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/freeRTOS_tcp_sendDataTmr/freeRTOS_tc_sendDataTmr/_ide/bitstream/lw_ip_server_intr_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/freeRTOS_tcp_sendDataTmr/lw_ip_server_intr_wrapper/export/lw_ip_server_intr_wrapper/hw/lw_ip_server_intr_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/freeRTOS_tcp_sendDataTmr/freeRTOS_tc_sendDataTmr/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/freeRTOS_tcp_sendDataTmr/freeRTOS_tc_sendDataTmr/Debug/freeRTOS_tc_sendDataTmr.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
