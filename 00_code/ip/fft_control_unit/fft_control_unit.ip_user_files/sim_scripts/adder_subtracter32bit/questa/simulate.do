onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib adder_subtracter32bit_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {adder_subtracter32bit.udo}

run -all

quit -force
