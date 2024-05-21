-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_17 \
  "../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/multiplier/sim/multiplier.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/mux2_0/src/mux2.v" \
  "../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/mux2_0/sim/mux2_0.v" \
  "../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/src/full_adder.v" \
  "../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/src/adder_subtracter32.v" \
  "../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \
  "../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/src/butterfly_full.v" \
  "../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/butterfly_full_ip_0/sim/butterfly_full_ip_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

