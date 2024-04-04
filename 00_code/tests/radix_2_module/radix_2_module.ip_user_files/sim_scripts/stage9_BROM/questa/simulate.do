onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib stage9_BROM_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {stage9_BROM.udo}

run -all

quit -force
