vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xbip_utils_v3_0_10
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_17
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 riviera/mult_gen_v12_0_17
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/multiplier/sim/multiplier.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/mux2_0/src/mux2.v" \
"../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/mux2_0/sim/mux2_0.v" \
"../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/src/full_adder.v" \
"../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/src/adder_subtracter32.v" \
"../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \
"../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/src/butterfly_full.v" \
"../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/sim/butterfly_full_ip_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

