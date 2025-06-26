# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/fernandes/thesis/00_code/ip/TFX_Core/sw/TFX_Core_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/fernandes/thesis/00_code/ip/TFX_Core/sw/TFX_Core_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {TFX_Core_wrapper}\
-hw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}\
-out {/home/fernandes/thesis/00_code/ip/TFX_Core/sw}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_lwip_echo_server}
platform generate -domains 
platform active {TFX_Core_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
platform active {TFX_Core_wrapper}
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform active {TFX_Core_wrapper}
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform active {TFX_Core_wrapper}
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform active {TFX_Core_wrapper}
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform active {TFX_Core_wrapper}
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform active {TFX_Core_wrapper}
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform generate -domains freertos10_xilinx_ps7_cortexa9_0,zynq_fsbl 
platform active {TFX_Core_wrapper}
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_wrapper.xsa}
platform generate -domains 
