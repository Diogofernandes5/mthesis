-makelib ies_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_2/src/div_10bit/sources_1/new/divu_int.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_2/src/div_10bit/sim/div_10bit.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_2/fft_control_unit.srcs/sources_1/ip/adder_subtracter32bit/src/full_adder.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_2/fft_control_unit.srcs/sources_1/ip/adder_subtracter32bit/src/adder_subtracter32.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_2/fft_control_unit.srcs/sources_1/ip/adder_subtracter32bit/sim/adder_subtracter32bit.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_2/src/control_unit.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_2/sim/fft_control_unit_2.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

