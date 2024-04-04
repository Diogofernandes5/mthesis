onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib stage4_dist_rom_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {stage4_dist_rom.udo}

run -all

quit -force
