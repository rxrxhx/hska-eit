// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Wed Jun 13 12:20:20 2018
//
// Verilog Description of module SRFF
//

module SRFF (S, R, D);   // d:/dt/stoppuhr/srff.vhd(4[8:12])
    input S;   // d:/dt/stoppuhr/srff.vhd(6[2:3])
    input R;   // d:/dt/stoppuhr/srff.vhd(7[2:3])
    output D;   // d:/dt/stoppuhr/srff.vhd(8[2:3])
    
    wire S_c;   // d:/dt/stoppuhr/srff.vhd(6[2:3])
    wire R_c;   // d:/dt/stoppuhr/srff.vhd(7[2:3])
    wire D_c;   // d:/dt/stoppuhr/srff.vhd(8[2:3])
    wire n13 /* synthesis nomerge= */ ;
    
    wire GND_net, VCC_net, n11;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i11_1_lut (.A(R_c), .Z(n11)) /* synthesis lut_function=(!(A)) */ ;
    defparam i11_1_lut.init = 16'h5555;
    IB S_pad (.I(S), .O(S_c));
    OB D_pad (.I(D_c), .O(D));
    IB R_pad (.I(R), .O(R_c));
    GSR GSR_INST (.GSR(n11));
    OFS1P3DX \dec.v_8  (.D(n13), .SP(VCC_net), .SCLK(S_c), .CD(GND_net), 
            .Q(D_c));
    defparam \dec.v_8 .GSR = "ENABLED";
    LUT4 m1_lut (.Z(n13)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

