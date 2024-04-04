-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../stage1.gen/sources_1/ip/fft_data_path/src/mux2_0/src/mux2.v" \
  "../../../../stage1.gen/sources_1/ip/fft_data_path/src/mux2_0/sim/mux2_0.v" \
  "../../../../stage1.gen/sources_1/ip/fft_data_path/src/butterfly_full_0/src/butterfly_full.v" \
  "../../../../stage1.gen/sources_1/ip/fft_data_path/src/butterfly_full_0/sim/butterfly_full_0.v" \
  "../../../../stage1.gen/sources_1/ip/fft_data_path/src/data_path.v" \
  "../../../../stage1.gen/sources_1/ip/fft_data_path/sim/fft_data_path.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

