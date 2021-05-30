transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/dsd assignment/clk_generator/clk_generator.vhd}

vcom -93 -work work {D:/dsd assignment/clk_generator/simulation/modelsim/clk_generator.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  clk_generatorTB

add wave *
view structure
view signals
run -all
