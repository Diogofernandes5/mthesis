# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/sw_tcp_client_py/tcp_client_py_system/_ide/scripts/debugger_tcp_client_py-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/sw_tcp_client_py/tcp_client_py_system/_ide/scripts/debugger_tcp_client_py-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351AB6DB4A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351AB6DB4A-13722093-0"}
fpga -file /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/sw_tcp_client_py/tcp_client_py/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/sw_tcp_client_py/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/sw_tcp_client_py/tcp_client_py/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/sw_tcp_client_py/tcp_client_py/Debug/tcp_client_py.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
