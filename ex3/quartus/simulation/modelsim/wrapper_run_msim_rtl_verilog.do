transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/python/Documents/projects/prelab_4/ex3 {/home/python/Documents/projects/prelab_4/ex3/design3.sv}
vlog -sv -work work +incdir+/home/python/Documents/projects/prelab_4/ex3/quartus {/home/python/Documents/projects/prelab_4/ex3/quartus/wrapper.sv}

