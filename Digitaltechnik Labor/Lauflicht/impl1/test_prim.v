// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Thu Sep 20 00:31:42 2018
//
// Verilog Description of module test
//

module test (O) /* synthesis syn_module_defined=1 */ ;   // c:/users/rrhar/desktop/dt/timer/impl1/test.v(3[8:12])
    output O;   // c:/users/rrhar/desktop/dt/timer/impl1/test.v(4[8:9])
    
    
    wire O_c, GND_net, VCC_net;
    
    OB O_pad (.I(O_c), .O(O));   // c:/users/rrhar/desktop/dt/timer/impl1/test.v(4[8:9])
    VHI i12 (.Z(VCC_net));
    OSCH I1 (.STDBY(GND_net), .OSC(O_c)) /* synthesis syn_instantiated=1 */ ;
    defparam I1.NOM_FREQ = "2.08";
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i4 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

