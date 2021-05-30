transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/dsd assignment/sixty_counter/sixty_counter.vhd}

vcom -93 -work work {D:/dsd assignment/sixty_counter/simulation/modelsim/sixty_counter.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  sixty_counterTB

add wave *
view structure
view signals
run -all
