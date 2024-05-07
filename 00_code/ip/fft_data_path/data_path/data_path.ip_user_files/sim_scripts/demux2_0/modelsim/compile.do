vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu -sv \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/demux2_0/src/demux2.v" \
"../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/demux2_0/sim/demux2_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

