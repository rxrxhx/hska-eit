setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/rrhar/Desktop/DT/Timer/fff/fff.adf"]} { 
	design create fff "C:/Users/rrhar/Desktop/DT/Timer"
  set newDesign 1
}
design open "C:/Users/rrhar/Desktop/DT/Timer/fff"
cd "C:/Users/rrhar/Desktop/DT/Timer"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo3l
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/rrhar/Desktop/DT/Timer/impl1/test.v"
vlib "C:/Users/rrhar/Desktop/DT/Timer/fff/work"
set worklib work
adel -all
vlog -dbg -work work "C:/Users/rrhar/Desktop/DT/Timer/impl1/test.v"
module test
vsim  +access +r test   -PL pmi_work -L ovi_machxo3l
add wave *
run 1000ns
