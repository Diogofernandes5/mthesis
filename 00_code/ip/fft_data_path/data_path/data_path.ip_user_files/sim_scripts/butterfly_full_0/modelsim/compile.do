vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_17
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 modelsim_lib/msim/mult_gen_v12_0_17
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu -sv \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -64 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17 -64 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../data_path.gen/sources_1/ip/butterfly_full_0/src/multiplier/sim/multiplier.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../data_path.gen/sources_1/ip/butterfly_full_0/src/mux2_0/src/mux2.v" \
"../../../../data_path.gen/sources_1/ip/butterfly_full_0/src/mux2_0/sim/mux2_0.v" \
"../../../../data_path.gen/sources_1/ip/butterfly_full_0/src/adder_subtracter32_ip/src/full_adder.v" \
"../../../../data_path.gen/sources_1/ip/butterfly_full_0/src/adder_subtracter32_ip/src/adder_subtracter32.v" \
"../../../../data_path.gen/sources_1/ip/butterfly_full_0/src/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \
"../../../../data_path.gen/sources_1/ip/butterfly_full_0/src/butterfly_full.v" \
"../../../../data_path.gen/sources_1/ip/butterfly_full_0/sim/butterfly_full_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

