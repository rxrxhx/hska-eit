// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Fri Jun 15 13:36:26 2018
//
// Verilog Description of module Ampel
//

module Ampel (I, KFZA, FA, RES);   // c:/users/rrhar/desktop/dt/ampel/mealyampel.vhd(6[8:13])
    input [3:0]I;   // c:/users/rrhar/desktop/dt/ampel/mealyampel.vhd(8[2:3])
    output [2:0]KFZA;   // c:/users/rrhar/desktop/dt/ampel/mealyampel.vhd(9[2:6])
    output [1:0]FA;   // c:/users/rrhar/desktop/dt/ampel/mealyampel.vhd(10[2:4])
    output RES;   // c:/users/rrhar/desktop/dt/ampel/mealyampel.vhd(11[2:5])
    
    wire [3:0]I_c;   // c:/users/rrhar/desktop/dt/ampel/mealyampel.vhd(8[2:3])
    wire [2:0]KFZA_c;   // c:/users/rrhar/desktop/dt/ampel/mealyampel.vhd(9[2:6])
    wire [1:0]FA_c;   // c:/users/rrhar/desktop/dt/ampel/mealyampel.vhd(10[2:4])
    wire RES_c;   // c:/users/rrhar/desktop/dt/ampel/mealyampel.vhd(11[2:5])
    
    wire GND_net, VCC_net, n6, n34, n625, n602, n178, n152, 
        n624, n622;
    
    VHI i2 (.Z(VCC_net));
    FD1S1D i344 (.D(n6), .CK(n624), .CD(GND_net), .Q(KFZA_c[2]));
    defparam i344.GSR = "DISABLED";
    FD1S1J i340 (.D(n625), .CK(n624), .PD(n152), .Q(FA_c[1]));
    defparam i340.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(I_c[3]), .B(I_c[1]), .C(I_c[2]), .Z(n178)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 i512_2_lut_rep_2_3_lut (.A(I_c[3]), .B(I_c[1]), .C(I_c[2]), .Z(n624)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i512_2_lut_rep_2_3_lut.init = 16'h7f7f;
    FD1S1I i350 (.D(n34), .CK(n624), .CD(n152), .Q(FA_c[0]));
    defparam i350.GSR = "DISABLED";
    FD1S1D i353 (.D(n622), .CK(n624), .CD(GND_net), .Q(KFZA_c[0]));
    defparam i353.GSR = "DISABLED";
    LUT4 i403_1_lut_4_lut (.A(I_c[0]), .B(I_c[3]), .C(I_c[2]), .D(I_c[1]), 
         .Z(n34)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C+(D))+!B !(C (D))))) */ ;
    defparam i403_1_lut_4_lut.init = 16'h302c;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 I_c_0_bdd_4_lut_rep_3 (.A(I_c[0]), .B(I_c[3]), .C(I_c[2]), .D(I_c[1]), 
         .Z(n625)) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A (B (C+(D))+!B !(C (D)))) */ ;
    defparam I_c_0_bdd_4_lut_rep_3.init = 16'hcfd3;
    LUT4 i1_3_lut (.A(I_c[3]), .B(I_c[2]), .C(I_c[1]), .Z(n152)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2828;
    FD1S1J i347 (.D(n602), .CK(n624), .PD(n178), .Q(KFZA_c[1]));
    defparam i347.GSR = "DISABLED";
    IB I_pad_0 (.I(I[0]), .O(I_c[0]));
    LUT4 i2_4_lut (.A(I_c[1]), .B(I_c[2]), .C(I_c[0]), .D(I_c[3]), .Z(n602)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut.init = 16'h0012;
    LUT4 i402_4_lut (.A(I_c[3]), .B(I_c[1]), .C(I_c[2]), .D(I_c[0]), 
         .Z(n6)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C+(D))+!B (C)))) */ ;
    defparam i402_4_lut.init = 16'h7e7a;
    IB I_pad_1 (.I(I[1]), .O(I_c[1]));
    IB I_pad_2 (.I(I[2]), .O(I_c[2]));
    IB I_pad_3 (.I(I[3]), .O(I_c[3]));
    OB RES_pad (.I(RES_c), .O(RES));
    OB FA_pad_0 (.I(FA_c[0]), .O(FA[0]));
    OB FA_pad_1 (.I(FA_c[1]), .O(FA[1]));
    OB KFZA_pad_0 (.I(KFZA_c[0]), .O(KFZA[0]));
    OB KFZA_pad_1 (.I(KFZA_c[1]), .O(KFZA[1]));
    OB KFZA_pad_2 (.I(KFZA_c[2]), .O(KFZA[2]));
    LUT4 I_c_3_bdd_4_lut (.A(I_c[3]), .B(I_c[0]), .C(I_c[2]), .D(I_c[1]), 
         .Z(n622)) /* synthesis lut_function=(A (C (D))+!A !(B+(C+(D)))) */ ;
    defparam I_c_3_bdd_4_lut.init = 16'ha001;
    LUT4 i1_2_lut_3_lut_4_lut (.A(I_c[3]), .B(I_c[1]), .C(I_c[0]), .D(I_c[2]), 
         .Z(RES_c)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0800;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

