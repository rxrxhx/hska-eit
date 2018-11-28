lappend auto_path "D:/lscc/diamond/3.1_x64/data/script"
package require tbtemplate_generation

set ::bali::Para(MODNAME) mult
set ::bali::Para(PACKAGE) {"D:/lscc/diamond/3.1_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"D:/lscc/diamond/3.1_x64/cae_library/synthesis/vhdl/machxo2.vhd"}
set ::bali::Para(TFT) {"D:/lscc/diamond/3.1_x64/data/templates/tstbch_f.tft"}
set ::bali::Para(OUTNAME) mult_tb
set ::bali::Para(EXT) .vhd
set ::bali::Para(FILELIST) {"H:/digitaltechnik_labor/Projects/LAB_RW/TEST.vhd=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateTbTemplate
