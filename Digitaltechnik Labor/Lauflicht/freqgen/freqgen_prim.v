// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Thu Sep 20 00:21:37 2018
//
// Verilog Description of module freqgen
//

module freqgen (o) /* synthesis syn_module_defined=1 */ ;   // c:/users/rrhar/desktop/dt/timer/freqgen/freqgen.v(3[8:15])
    output o;   // c:/users/rrhar/desktop/dt/timer/freqgen/freqgen.v(4[8:9])
    
    wire o_c;   // c:/users/rrhar/desktop/dt/timer/freqgen/freqgen.v(4[8:9])
    
    wire GND_net, VCC_net;
    
    OB o_pad (.I(o_c), .O(o));
    VHI i11 (.Z(VCC_net));
    OSCH I1 (.STDBY(GND_net), .OSC(o_c)) /* synthesis syn_instantiated=1 */ ;
    defparam I1.NOM_FREQ = "2.08";
    GSR GSR_INST (.GSR(VCC_net));
    VLO i4 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

