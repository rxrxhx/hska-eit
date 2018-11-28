setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "H:/digitaltechnik_labor/Projects/LAB_RW/Simu/Simu.adf"]} { 
	design create Simu "H:/digitaltechnik_labor/Projects/LAB_RW"
  set newDesign 1
}
design open "H:/digitaltechnik_labor/Projects/LAB_RW/Simu"
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
addfile "H:/digitaltechnik_labor/Projects/LAB_RW/LAB_MULT.vhd"
addfile "H:/digitaltechnik_labor/Projects/LAB_RW/mult4_tb.vhd"
vlib "H:/digitaltechnik_labor/Projects/LAB_RW/Simu/work"
set worklib work
adel -all
vcom -dbg -work work "H:/digitaltechnik_labor/Projects/LAB_RW/LAB_MULT.vhd"
vcom -dbg -work work "H:/digitaltechnik_labor/Projects/LAB_RW/mult4_tb.vhd"
entity testbench
vsim +access +r testbench   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
