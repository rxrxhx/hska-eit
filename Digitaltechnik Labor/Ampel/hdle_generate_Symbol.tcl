lappend auto_path "C:/lscc/diamond/3.1_x64/data/script"
package require symbol_generation

set ::bali::Para(MODNAME) ampel
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.1_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.1_x64/cae_library/synthesis/verilog/machxo2.v"}
set ::bali::Para(FILELIST) {"C:/Users/rrhar/Desktop/DT/Ampel/clkgen.vhd=work" "C:/Users/rrhar/Desktop/DT/Ampel/CT.vhd=work" "C:/Users/rrhar/Desktop/DT/Ampel/MealyAmpel.vhd=work" "C:/Users/rrhar/Desktop/DT/Ampel/count4bit.vhd=work" "C:/Users/rrhar/Desktop/DT/Ampel/SRFF.vhd=work" "C:/Users/rrhar/Desktop/DT/Ampel/Ampelsteuerung/AMPELMEALY.v=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateSymbol
