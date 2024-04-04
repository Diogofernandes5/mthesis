-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../fft_stage0.gen/sources_1/ip/mux2_0/src/mux2.v" \
  "../../../../fft_stage0.gen/sources_1/ip/mux2_0/sim/mux2_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

