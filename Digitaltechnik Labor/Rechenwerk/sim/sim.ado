setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "H:/digitaltechnik_labor/Projects/LAB_RW/sim/sim.adf"]} { 
	design create sim "H:/digitaltechnik_labor/Projects/LAB_RW"
  set newDesign 1
}
design open "H:/digitaltechnik_labor/Projects/LAB_RW/sim"
cd "H:/digitaltechnik_labor/Projects/LAB_RW"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "H:/digitaltechnik_labor/Projects/LAB_RW/TEST.vhd"
addfile "H:/digitaltechnik_labor/Projects/LAB_RW/mult_tb.vhd"
vlib "H:/digitaltechnik_labor/Projects/LAB_RW/sim/work"
set worklib work
adel -all
vcom -dbg -work work "H:/digitaltechnik_labor/Projects/LAB_RW/TEST.vhd"
vcom -dbg -work work "H:/digitaltechnik_labor/Projects/LAB_RW/mult_tb.vhd"
entity testbench
vsim +access +r testbench   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
