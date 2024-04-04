onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+stage4_dist_rom -L xpm -L dist_mem_gen_v8_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.stage4_dist_rom xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {stage4_dist_rom.udo}

run -all

endsim

quit -force
