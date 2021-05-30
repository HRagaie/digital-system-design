transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/dsd assignment/seven_seg_dec/seven_seg_dec.vhd}

vcom -93 -work work {D:/dsd assignment/seven_seg_dec/simulation/modelsim/seven_seg_dec.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  seven_seg_decTB

add wave *
view structure
view signals
run -all
