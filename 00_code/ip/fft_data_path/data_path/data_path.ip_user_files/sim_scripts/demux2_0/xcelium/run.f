-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/demux2_0/src/demux2.v" \
  "../../../../../../fft/stage1/stage1.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/demux2_0/sim/demux2_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

