# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/fernandes/thesis/00_code/09_ext/timer_intr/sw/timer_intr_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/fernandes/thesis/00_code/09_ext/timer_intr/sw/timer_intr_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {timer_intr_wrapper}\
-hw {/home/fernandes/thesis/00_code/09_ext/timer_intr/timer_intr_wrapper.xsa}\
-out {/home/fernandes/thesis/00_code/09_ext/timer_intr/sw}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {timer_intr_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
domain active {zynq_fsbl}
bsp reload
bsp reload
platform generate
platform config -updatehw {/home/fernandes/thesis/00_code/09_ext/timer_intr/timer_intr_wrapper.xsa}
platform generate -domains 
platform active {timer_intr_wrapper}
platform config -updatehw {/home/fernandes/thesis/00_code/09_ext/timer_intr/timer_intr_wrapper.xsa}
platform generate -domains 
