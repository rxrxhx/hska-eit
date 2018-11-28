setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "H:/digitaltechnik_labor/Projects/LAB_ADD/Simulation/Simulation.adf"]} { 
	design create Simulation "H:/digitaltechnik_labor/Projects/LAB_ADD"
  set newDesign 1
}
design open "H:/digitaltechnik_labor/Projects/LAB_ADD/Simulation"
cd "H:/digitaltechnik_labor/Projects/LAB_ADD"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "H:/digitaltechnik_labor/Projects/LAB_ADD/LAB_ADD.vhd"
addfile "H:/digitaltechnik_labor/Projects/LAB_ADD/add4_tb.vhd"
vlib "H:/digitaltechnik_labor/Projects/LAB_ADD/Simulation/work"
set worklib work
adel -all
vcom -dbg -work work "H:/digitaltechnik_labor/Projects/LAB_ADD/LAB_ADD.vhd"
vcom -dbg -work work "H:/digitaltechnik_labor/Projects/LAB_ADD/add4_tb.vhd"
entity testbench
vsim +access +r testbench   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
