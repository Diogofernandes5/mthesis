onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+adder_subtracter32bit -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.adder_subtracter32bit xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {adder_subtracter32bit.udo}

run -all

endsim

quit -force
