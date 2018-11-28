// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Thu May 31 15:46:29 2018
//
// Verilog Description of module ClkGen
//

module ClkGen (ClkModeLeft, ClkModeRight, PulseLeft, PulseRight, ClkLeft, 
            ClkRight, SignalLeft, SignalRight, Clk100Hz, Clk200Hz, 
            ClkOsc);   // l:/dt/clkgen.vhd(52[8:14])
    input [1:0]ClkModeLeft;   // l:/dt/clkgen.vhd(54[7:18])
    input [1:0]ClkModeRight;   // l:/dt/clkgen.vhd(55[4:16])
    input PulseLeft;   // l:/dt/clkgen.vhd(56[4:13])
    input PulseRight;   // l:/dt/clkgen.vhd(57[4:14])
    output ClkLeft;   // l:/dt/clkgen.vhd(58[4:11])
    output ClkRight;   // l:/dt/clkgen.vhd(59[4:12])
    output SignalLeft;   // l:/dt/clkgen.vhd(60[4:14])
    output SignalRight;   // l:/dt/clkgen.vhd(61[4:15])
    output Clk100Hz;   // l:/dt/clkgen.vhd(62[4:12])
    output Clk200Hz;   // l:/dt/clkgen.vhd(63[4:12])
    output ClkOsc;   // l:/dt/clkgen.vhd(64[4:10])
    
    wire GND_net;   // l:/dt/clkgen.vhd(63[4:12])
    wire [1:0]ClkModeLeft_c;   // l:/dt/clkgen.vhd(54[7:18])
    wire [1:0]ClkModeRight_c;   // l:/dt/clkgen.vhd(55[4:16])
    wire PulseLeft_c;   // l:/dt/clkgen.vhd(56[4:13])
    wire PulseRight_c;   // l:/dt/clkgen.vhd(57[4:14])
    wire SignalLeft_c;   // l:/dt/clkgen.vhd(58[4:11])
    wire SignalRight_c;   // l:/dt/clkgen.vhd(59[4:12])
    wire ClkOsc_c;   // l:/dt/clkgen.vhd(64[4:10])
    
    wire VCC_net;
    
    VHI i19 (.Z(VCC_net));
    OB ClkRight_pad (.I(SignalRight_c), .O(ClkRight));
    OB ClkLeft_pad (.I(SignalLeft_c), .O(ClkLeft));
    LUT4 i2_3_lut (.A(ClkModeLeft_c[1]), .B(PulseLeft_c), .C(ClkModeLeft_c[0]), 
         .Z(SignalLeft_c)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut.init = 16'h0404;
    OSCH OscInst0 (.STDBY(GND_net), .OSC(ClkOsc_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OscInst0.NOM_FREQ = "2.08";
    OB SignalLeft_pad (.I(SignalLeft_c), .O(SignalLeft));
    OB SignalRight_pad (.I(SignalRight_c), .O(SignalRight));
    OB Clk100Hz_pad (.I(GND_net), .O(Clk100Hz));
    OB Clk200Hz_pad (.I(GND_net), .O(Clk200Hz));
    OB ClkOsc_pad (.I(ClkOsc_c), .O(ClkOsc));
    IB ClkModeLeft_pad_1 (.I(ClkModeLeft[1]), .O(ClkModeLeft_c[1]));
    IB ClkModeLeft_pad_0 (.I(ClkModeLeft[0]), .O(ClkModeLeft_c[0]));
    IB ClkModeRight_pad_1 (.I(ClkModeRight[1]), .O(ClkModeRight_c[1]));
    IB ClkModeRight_pad_0 (.I(ClkModeRight[0]), .O(ClkModeRight_c[0]));
    IB PulseLeft_pad (.I(PulseLeft), .O(PulseLeft_c));
    IB PulseRight_pad (.I(PulseRight), .O(PulseRight_c));
    LUT4 i2_3_lut_adj_1 (.A(ClkModeRight_c[1]), .B(PulseRight_c), .C(ClkModeRight_c[0]), 
         .Z(SignalRight_c)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_1.init = 16'h0404;
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

