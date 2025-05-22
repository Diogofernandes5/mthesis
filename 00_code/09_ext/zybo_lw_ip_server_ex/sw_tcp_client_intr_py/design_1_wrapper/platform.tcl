# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/sw_tcp_client_intr_py/design_1_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/sw_tcp_client_intr_py/design_1_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {/home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/design_1_wrapper.xsa}\
-out {/home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/sw_tcp_client_intr_py}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {lwip_echo_server}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate
platform active {design_1_wrapper}
bsp reload
bsp config api_mode "RAW_API"
bsp write
platform active {design_1_wrapper}
platform generate
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp config tcp_snd_buf "8192"
bsp config tcp_snd_buf "8192"
bsp config tcp_snd_buf "262140"
bsp write
bsp reload
catch {bsp regenerate}
bsp config tcp_snd_buf "65000"
bsp write
bsp reload
catch {bsp regenerate}
bsp config api_mode "RAW_API"
bsp config memp_n_tcp_seg "256"
bsp config memp_n_tcp_seg "1024"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
bsp reload
platform active {design_1_wrapper}
platform generate
platform config -updatehw {/home/fernandes/thesis/00_code/09_ext/zybo_lw_ip_server_ex/design_1_wrapper.xsa}
platform generate -domains 
