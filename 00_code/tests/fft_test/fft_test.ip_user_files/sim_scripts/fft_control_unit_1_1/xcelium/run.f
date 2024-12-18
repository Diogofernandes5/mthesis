-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_1_1/fft_control_unit.srcs/sources_1/ip/adder_subtracter32bit/src/full_adder.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_1_1/fft_control_unit.srcs/sources_1/ip/adder_subtracter32bit/src/adder_subtracter32.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_1_1/fft_control_unit.srcs/sources_1/ip/adder_subtracter32bit/sim/adder_subtracter32bit.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_1_1/fft_control_unit.srcs/sources_1/ip/data_counter_mux2/src/mux2.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_1_1/fft_control_unit.srcs/sources_1/ip/data_counter_mux2/sim/data_counter_mux2.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_1_1/src/div_10bit/sources_1/new/divu_int.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_1_1/src/div_10bit/sim/div_10bit.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_1_1/fft_control_unit.srcs/sources_1/ip/bram_bit_reversed_address/src/bit_reversal.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_1_1/fft_control_unit.srcs/sources_1/ip/bram_bit_reversed_address/sim/bram_bit_reversed_address.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_1_1/src/control_unit.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_control_unit_1_1/sim/fft_control_unit_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

