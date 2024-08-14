-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../data_path.gen/sources_1/ip/mux2_twiddle_1/src/mux2.v" \
  "../../../../data_path.gen/sources_1/ip/mux2_twiddle_1/sim/mux2_twiddle.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

