onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib shift_right_fractional_len_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {shift_right_fractional_len.udo}

run -all

quit -force
