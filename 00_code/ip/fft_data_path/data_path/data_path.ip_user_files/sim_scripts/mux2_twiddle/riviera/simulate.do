onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+mux2_twiddle -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mux2_twiddle xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {mux2_twiddle.udo}

run -all

endsim

quit -force
