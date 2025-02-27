# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/fernandes/thesis/00_code/tests/i2s/dma_test_pn/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/fernandes/thesis/00_code/tests/i2s/dma_test_pn/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {dma_test_pn}\
-hw {/home/fernandes/thesis/00_code/tests/i2s/i2s_bd_wrapper.xsa}\
-out {/home/fernandes/thesis/00_code/tests/i2s}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {dma_test_pn}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate
