lappend auto_path "C:/lscc/diamond/3.1_x64/data/script"
package require symbol_generation

set ::bali::Para(MODNAME) srff
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.1_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.1_x64/cae_library/synthesis/verilog/machxo2.v"}
set ::bali::Para(FILELIST) {"C:/Users/rrhar/Desktop/DT/Stoppuhr/Dec1counter.vhd=work" "C:/Users/rrhar/Desktop/DT/Stoppuhr/DEC7S.vhd=work" "C:/Users/rrhar/Desktop/DT/Stoppuhr/CT.vhd=work" "C:/Users/rrhar/Desktop/DT/Stoppuhr/clkgen.vhd=work" "C:/Users/rrhar/Desktop/DT/Stoppuhr/sg7mux.vhd=work" "C:/Users/rrhar/Desktop/DT/Stoppuhr/SRFF.vhd=work" "C:/Users/rrhar/Desktop/DT/Stoppuhr/stp/Stoppuhr.v=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateSymbol
