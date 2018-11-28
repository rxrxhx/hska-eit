// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Wed Jun 13 00:24:04 2018
//
// Verilog Description of module ClkGen
//

module ClkGen (ClkModeLeft, ClkModeRight, PulseLeft, PulseRight, ClkLeft, 
            ClkRight, SignalLeft, SignalRight, Clk100Hz, Clk200Hz, 
            ClkOsc);   // d:/dt/stoppuhr/clkgen.vhd(52[8:14])
    input [1:0]ClkModeLeft;   // d:/dt/stoppuhr/clkgen.vhd(54[7:18])
    input [1:0]ClkModeRight;   // d:/dt/stoppuhr/clkgen.vhd(55[4:16])
    input PulseLeft;   // d:/dt/stoppuhr/clkgen.vhd(56[4:13])
    input PulseRight;   // d:/dt/stoppuhr/clkgen.vhd(57[4:14])
    output ClkLeft;   // d:/dt/stoppuhr/clkgen.vhd(58[4:11])
    output ClkRight;   // d:/dt/stoppuhr/clkgen.vhd(59[4:12])
    output SignalLeft;   // d:/dt/stoppuhr/clkgen.vhd(60[4:14])
    output SignalRight;   // d:/dt/stoppuhr/clkgen.vhd(61[4:15])
    output Clk100Hz;   // d:/dt/stoppuhr/clkgen.vhd(62[4:12])
    output Clk200Hz;   // d:/dt/stoppuhr/clkgen.vhd(63[4:12])
    output ClkOsc;   // d:/dt/stoppuhr/clkgen.vhd(64[4:10])
    
    wire GND_net;   // d:/dt/stoppuhr/ct.vhd(26[12:21])
    wire VCC_net;   // d:/dt/stoppuhr/ct.vhd(17[9:16])
    wire [1:0]ClkModeLeft_c;   // d:/dt/stoppuhr/clkgen.vhd(54[7:18])
    wire [1:0]ClkModeRight_c;   // d:/dt/stoppuhr/clkgen.vhd(55[4:16])
    wire PulseLeft_c;   // d:/dt/stoppuhr/clkgen.vhd(56[4:13])
    wire PulseRight_c;   // d:/dt/stoppuhr/clkgen.vhd(57[4:14])
    wire SignalLeft_c;   // d:/dt/stoppuhr/clkgen.vhd(58[4:11])
    wire SignalRight_c;   // d:/dt/stoppuhr/clkgen.vhd(59[4:12])
    wire Clk100Hz_c;   // d:/dt/stoppuhr/clkgen.vhd(62[4:12])
    wire Clk200Hz_c;   // d:/dt/stoppuhr/clkgen.vhd(63[4:12])
    wire ClkOsc_c;   // d:/dt/stoppuhr/clkgen.vhd(64[4:10])
    wire [8:0]\Counter.Counter03Hz ;   // d:/dt/stoppuhr/clkgen.vhd(97[11:22])
    wire [5:0]\Counter.Counter3Hz ;   // d:/dt/stoppuhr/clkgen.vhd(98[11:21])
    wire [6:0]\Counter.Counter1Hz ;   // d:/dt/stoppuhr/clkgen.vhd(99[11:21])
    wire \Counter.Clk3Hz ;   // d:/dt/stoppuhr/clkgen.vhd(100[11:17])
    wire \Counter.Clk1Hz ;   // d:/dt/stoppuhr/clkgen.vhd(101[11:17])
    wire \Counter.Clk03Hz ;   // d:/dt/stoppuhr/clkgen.vhd(102[11:18])
    
    wire n392, n6;
    wire [5:0]n30;
    
    wire n372, n407, n261;
    wire [5:0]n52;
    
    wire n71, n390, n391;
    wire [6:0]n59;
    wire [6:0]n34;
    
    wire n415, n406, n404;
    wire [8:0]n73;
    
    wire n389, n403, n185, n183, n184, n414;
    wire [8:0]n42_adj_7;
    
    wire n398, n4, n413, n4_adj_5, n165, n169;
    
    VHI i2 (.Z(VCC_net));
    CT CTInst0 (.ClkOsc_c(ClkOsc_c), .VCC_net(VCC_net), .Clk200Hz_c(Clk200Hz_c), 
       .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;
    FD1S3IX \Counter.Counter03Hz_59__i4  (.D(n42_adj_7[4]), .CK(Clk200Hz_c), 
            .CD(n183), .Q(\Counter.Counter03Hz [4]));
    defparam \Counter.Counter03Hz_59__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_59__i3  (.D(n42_adj_7[3]), .CK(Clk200Hz_c), 
            .CD(n183), .Q(\Counter.Counter03Hz [3]));
    defparam \Counter.Counter03Hz_59__i3 .GSR = "DISABLED";
    OB SignalLeft_pad (.I(SignalLeft_c), .O(SignalLeft));
    FD1S3IX \Counter.Counter03Hz_59__i2  (.D(n42_adj_7[2]), .CK(Clk200Hz_c), 
            .CD(n183), .Q(\Counter.Counter03Hz [2]));
    defparam \Counter.Counter03Hz_59__i2 .GSR = "DISABLED";
    LUT4 i290_2_lut (.A(\Counter.Counter1Hz [5]), .B(n372), .Z(n34[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i290_2_lut.init = 16'h6666;
    CCU2D \Counter.Counter03Hz_59_add_4_3  (.A0(\Counter.Counter03Hz [1]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n389), .COUT(n390), 
          .S0(n42_adj_7[1]), .S1(n42_adj_7[2]));
    defparam \Counter.Counter03Hz_59_add_4_3 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_59_add_4_3 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_59_add_4_3 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_59_add_4_3 .INJECT1_1 = "NO";
    FD1S3AX \Counter.Clk3Hz_32  (.D(n165), .CK(Clk200Hz_c), .Q(\Counter.Clk3Hz ));
    defparam \Counter.Clk3Hz_32 .GSR = "DISABLED";
    FD1S3AX \Counter.Clk1Hz_34  (.D(n261), .CK(Clk200Hz_c), .Q(\Counter.Clk1Hz ));
    defparam \Counter.Clk1Hz_34 .GSR = "DISABLED";
    OB SignalRight_pad (.I(SignalRight_c), .O(SignalRight));
    FD1S3AX \Counter.Clk03Hz_36  (.D(n169), .CK(Clk200Hz_c), .Q(\Counter.Clk03Hz ));
    defparam \Counter.Clk03Hz_36 .GSR = "DISABLED";
    FD1S3AX SigClk100Hz_37 (.D(n71), .CK(Clk200Hz_c), .Q(Clk100Hz_c));
    defparam SigClk100Hz_37.GSR = "DISABLED";
    CCU2D \Counter.Counter03Hz_59_add_4_9  (.A0(\Counter.Counter03Hz [7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n392), .S0(n42_adj_7[7]), 
          .S1(n42_adj_7[8]));
    defparam \Counter.Counter03Hz_59_add_4_9 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_59_add_4_9 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_59_add_4_9 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_59_add_4_9 .INJECT1_1 = "NO";
    FD1S3IX \Counter.Counter03Hz_59__i1  (.D(n42_adj_7[1]), .CK(Clk200Hz_c), 
            .CD(n183), .Q(\Counter.Counter03Hz [1]));
    defparam \Counter.Counter03Hz_59__i1 .GSR = "DISABLED";
    OSCH OscInst0 (.STDBY(GND_net), .OSC(ClkOsc_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OscInst0.NOM_FREQ = "2.08";
    FD1S3IX \Counter.Counter03Hz_59__i0  (.D(n42_adj_7[0]), .CK(Clk200Hz_c), 
            .CD(n183), .Q(n73[0]));
    defparam \Counter.Counter03Hz_59__i0 .GSR = "DISABLED";
    OB ClkRight_pad (.I(SignalRight_c), .O(ClkRight));
    FD1S3IX \Counter.Counter3Hz_55__i5  (.D(n30[5]), .CK(Clk200Hz_c), .CD(n185), 
            .Q(\Counter.Counter3Hz [5]));
    defparam \Counter.Counter3Hz_55__i5 .GSR = "DISABLED";
    LUT4 i247_3_lut (.A(\Counter.Counter3Hz [5]), .B(\Counter.Counter3Hz [4]), 
         .C(n413), .Z(n30[5])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i247_3_lut.init = 16'h6a6a;
    LUT4 i316_3_lut (.A(\Counter.Clk1Hz ), .B(\Counter.Clk3Hz ), .C(ClkModeLeft_c[0]), 
         .Z(n407)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i316_3_lut.init = 16'hcaca;
    LUT4 i19_1_lut (.A(Clk100Hz_c), .Z(n71)) /* synthesis lut_function=(!(A)) */ ;
    defparam i19_1_lut.init = 16'h5555;
    LUT4 i315_3_lut (.A(PulseLeft_c), .B(\Counter.Clk03Hz ), .C(ClkModeLeft_c[0]), 
         .Z(n406)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i315_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(\Counter.Counter03Hz [3]), .B(\Counter.Counter03Hz [2]), 
         .Z(n4_adj_5)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_1 (.A(\Counter.Clk03Hz ), .B(n183), .Z(n169)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_1.init = 16'h6666;
    FD1S3IX \Counter.Counter3Hz_55__i0  (.D(n30[0]), .CK(Clk200Hz_c), .CD(n185), 
            .Q(n52[0]));
    defparam \Counter.Counter3Hz_55__i0 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_57__i0  (.D(n34[0]), .CK(Clk200Hz_c), .CD(n184), 
            .Q(n59[0]));
    defparam \Counter.Counter1Hz_57__i0 .GSR = "DISABLED";
    LUT4 i1_2_lut_adj_2 (.A(\Counter.Counter1Hz [4]), .B(\Counter.Counter1Hz [3]), 
         .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_2.init = 16'heeee;
    FD1S3IX \Counter.Counter03Hz_59__i5  (.D(n42_adj_7[5]), .CK(Clk200Hz_c), 
            .CD(n183), .Q(\Counter.Counter03Hz [5]));
    defparam \Counter.Counter03Hz_59__i5 .GSR = "DISABLED";
    CCU2D \Counter.Counter03Hz_59_add_4_5  (.A0(\Counter.Counter03Hz [3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n390), .COUT(n391), 
          .S0(n42_adj_7[3]), .S1(n42_adj_7[4]));
    defparam \Counter.Counter03Hz_59_add_4_5 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_59_add_4_5 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_59_add_4_5 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_59_add_4_5 .INJECT1_1 = "NO";
    OB ClkLeft_pad (.I(SignalLeft_c), .O(ClkLeft));
    LUT4 i2_4_lut (.A(\Counter.Counter1Hz [2]), .B(\Counter.Counter1Hz [5]), 
         .C(n4), .D(\Counter.Counter1Hz [6]), .Z(n184)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'hc800;
    LUT4 i7_2_lut (.A(n184), .B(\Counter.Clk1Hz ), .Z(n261)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7_2_lut.init = 16'h6666;
    LUT4 i313_3_lut (.A(\Counter.Clk3Hz ), .B(Clk100Hz_c), .C(ClkModeRight_c[0]), 
         .Z(n404)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i313_3_lut.init = 16'hcaca;
    LUT4 i222_2_lut_rep_2 (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n414)) /* synthesis lut_function=(A (B)) */ ;
    defparam i222_2_lut_rep_2.init = 16'h8888;
    LUT4 i2_2_lut (.A(\Counter.Counter3Hz [2]), .B(\Counter.Counter3Hz [4]), 
         .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i202_4_lut (.A(\Counter.Counter3Hz [1]), .B(\Counter.Counter3Hz [5]), 
         .C(n6), .D(\Counter.Counter3Hz [3]), .Z(n185)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i202_4_lut.init = 16'hccc8;
    CCU2D \Counter.Counter03Hz_59_add_4_7  (.A0(\Counter.Counter03Hz [5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n391), .COUT(n392), 
          .S0(n42_adj_7[5]), .S1(n42_adj_7[6]));
    defparam \Counter.Counter03Hz_59_add_4_7 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_59_add_4_7 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_59_add_4_7 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_59_add_4_7 .INJECT1_1 = "NO";
    LUT4 i312_3_lut (.A(PulseRight_c), .B(\Counter.Clk1Hz ), .C(ClkModeRight_c[0]), 
         .Z(n403)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i312_3_lut.init = 16'hcaca;
    LUT4 i297_3_lut (.A(\Counter.Counter1Hz [6]), .B(\Counter.Counter1Hz [5]), 
         .C(n372), .Z(n34[6])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i297_3_lut.init = 16'h6a6a;
    LUT4 i283_2_lut_4_lut (.A(\Counter.Counter1Hz [2]), .B(n415), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [4]), .Z(n34[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i283_2_lut_4_lut.init = 16'h7f80;
    LUT4 i219_2_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n30[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i219_2_lut.init = 16'h6666;
    LUT4 i262_2_lut (.A(n59[1]), .B(n59[0]), .Z(n34[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i262_2_lut.init = 16'h6666;
    LUT4 i2_4_lut_adj_3 (.A(\Counter.Counter03Hz [1]), .B(\Counter.Counter03Hz [5]), 
         .C(n4_adj_5), .D(\Counter.Counter03Hz [4]), .Z(n398)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2_4_lut_adj_3.init = 16'hffec;
    LUT4 i286_2_lut_4_lut (.A(\Counter.Counter1Hz [2]), .B(n415), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [4]), .Z(n372)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i286_2_lut_4_lut.init = 16'h8000;
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX \Counter.Counter3Hz_55__i4  (.D(n30[4]), .CK(Clk200Hz_c), .CD(n185), 
            .Q(\Counter.Counter3Hz [4]));
    defparam \Counter.Counter3Hz_55__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_55__i3  (.D(n30[3]), .CK(Clk200Hz_c), .CD(n185), 
            .Q(\Counter.Counter3Hz [3]));
    defparam \Counter.Counter3Hz_55__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_55__i2  (.D(n30[2]), .CK(Clk200Hz_c), .CD(n185), 
            .Q(\Counter.Counter3Hz [2]));
    defparam \Counter.Counter3Hz_55__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_55__i1  (.D(n30[1]), .CK(Clk200Hz_c), .CD(n185), 
            .Q(\Counter.Counter3Hz [1]));
    defparam \Counter.Counter3Hz_55__i1 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_57__i6  (.D(n34[6]), .CK(Clk200Hz_c), .CD(n184), 
            .Q(\Counter.Counter1Hz [6]));
    defparam \Counter.Counter1Hz_57__i6 .GSR = "DISABLED";
    LUT4 i260_1_lut (.A(n59[0]), .Z(n34[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i260_1_lut.init = 16'h5555;
    PFUMX i317 (.BLUT(n406), .ALUT(n407), .C0(ClkModeLeft_c[1]), .Z(SignalLeft_c));
    FD1S3IX \Counter.Counter1Hz_57__i5  (.D(n34[5]), .CK(Clk200Hz_c), .CD(n184), 
            .Q(\Counter.Counter1Hz [5]));
    defparam \Counter.Counter1Hz_57__i5 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_57__i4  (.D(n34[4]), .CK(Clk200Hz_c), .CD(n184), 
            .Q(\Counter.Counter1Hz [4]));
    defparam \Counter.Counter1Hz_57__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_57__i3  (.D(n34[3]), .CK(Clk200Hz_c), .CD(n184), 
            .Q(\Counter.Counter1Hz [3]));
    defparam \Counter.Counter1Hz_57__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_57__i2  (.D(n34[2]), .CK(Clk200Hz_c), .CD(n184), 
            .Q(\Counter.Counter1Hz [2]));
    defparam \Counter.Counter1Hz_57__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_57__i1  (.D(n34[1]), .CK(Clk200Hz_c), .CD(n184), 
            .Q(n59[1]));
    defparam \Counter.Counter1Hz_57__i1 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_59__i8  (.D(n42_adj_7[8]), .CK(Clk200Hz_c), 
            .CD(n183), .Q(\Counter.Counter03Hz [8]));
    defparam \Counter.Counter03Hz_59__i8 .GSR = "DISABLED";
    LUT4 i269_2_lut_3_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [2]), 
         .Z(n34[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i269_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_adj_4 (.A(\Counter.Clk3Hz ), .B(n185), .Z(n165)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_4.init = 16'h6666;
    PFUMX i314 (.BLUT(n403), .ALUT(n404), .C0(ClkModeRight_c[1]), .Z(SignalRight_c));
    CCU2D \Counter.Counter03Hz_59_add_4_1  (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(n73[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n389), .S1(n42_adj_7[0]));
    defparam \Counter.Counter03Hz_59_add_4_1 .INIT0 = 16'hF000;
    defparam \Counter.Counter03Hz_59_add_4_1 .INIT1 = 16'h0555;
    defparam \Counter.Counter03Hz_59_add_4_1 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_59_add_4_1 .INJECT1_1 = "NO";
    LUT4 i276_2_lut_3_lut_4_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [2]), .Z(n34[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i276_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3IX \Counter.Counter03Hz_59__i7  (.D(n42_adj_7[7]), .CK(Clk200Hz_c), 
            .CD(n183), .Q(\Counter.Counter03Hz [7]));
    defparam \Counter.Counter03Hz_59__i7 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_59__i6  (.D(n42_adj_7[6]), .CK(Clk200Hz_c), 
            .CD(n183), .Q(\Counter.Counter03Hz [6]));
    defparam \Counter.Counter03Hz_59__i6 .GSR = "DISABLED";
    LUT4 i217_1_lut (.A(n52[0]), .Z(n30[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i217_1_lut.init = 16'h5555;
    OB Clk100Hz_pad (.I(Clk100Hz_c), .O(Clk100Hz));
    OB Clk200Hz_pad (.I(Clk200Hz_c), .O(Clk200Hz));
    OB ClkOsc_pad (.I(ClkOsc_c), .O(ClkOsc));
    IB ClkModeLeft_pad_1 (.I(ClkModeLeft[1]), .O(ClkModeLeft_c[1]));
    IB ClkModeLeft_pad_0 (.I(ClkModeLeft[0]), .O(ClkModeLeft_c[0]));
    IB ClkModeRight_pad_1 (.I(ClkModeRight[1]), .O(ClkModeRight_c[1]));
    IB ClkModeRight_pad_0 (.I(ClkModeRight[0]), .O(ClkModeRight_c[0]));
    IB PulseLeft_pad (.I(PulseLeft), .O(PulseLeft_c));
    IB PulseRight_pad (.I(PulseRight), .O(PulseRight_c));
    LUT4 i265_2_lut_rep_3 (.A(n59[1]), .B(n59[0]), .Z(n415)) /* synthesis lut_function=(A (B)) */ ;
    defparam i265_2_lut_rep_3.init = 16'h8888;
    LUT4 i236_2_lut_3_lut_rep_1_4_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [3]), .D(\Counter.Counter3Hz [2]), .Z(n413)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i236_2_lut_3_lut_rep_1_4_lut.init = 16'h8000;
    LUT4 i233_2_lut_3_lut_4_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [3]), .D(\Counter.Counter3Hz [2]), .Z(n30[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i233_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i204_4_lut (.A(\Counter.Counter03Hz [6]), .B(\Counter.Counter03Hz [8]), 
         .C(\Counter.Counter03Hz [7]), .D(n398), .Z(n183)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i204_4_lut.init = 16'hc8c0;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i240_2_lut_4_lut (.A(\Counter.Counter3Hz [2]), .B(n414), .C(\Counter.Counter3Hz [3]), 
         .D(\Counter.Counter3Hz [4]), .Z(n30[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i240_2_lut_4_lut.init = 16'h7f80;
    LUT4 i226_2_lut_3_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .C(\Counter.Counter3Hz [2]), 
         .Z(n30[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i226_2_lut_3_lut.init = 16'h7878;
    
endmodule
//
// Verilog Description of module CT
//

module CT (ClkOsc_c, VCC_net, Clk200Hz_c, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input ClkOsc_c;
    input VCC_net;
    output Clk200Hz_c;
    input GND_net;
    
    
    EFB EFBInst_0 (.WBCLKI(GND_net), .WBRSTI(GND_net), .WBCYCI(GND_net), 
        .WBSTBI(GND_net), .WBWEI(GND_net), .WBADRI0(GND_net), .WBADRI1(GND_net), 
        .WBADRI2(GND_net), .WBADRI3(GND_net), .WBADRI4(GND_net), .WBADRI5(GND_net), 
        .WBADRI6(GND_net), .WBADRI7(GND_net), .WBDATI0(GND_net), .WBDATI1(GND_net), 
        .WBDATI2(GND_net), .WBDATI3(GND_net), .WBDATI4(GND_net), .WBDATI5(GND_net), 
        .WBDATI6(GND_net), .WBDATI7(GND_net), .I2C1SCLI(GND_net), .I2C1SDAI(GND_net), 
        .I2C2SCLI(GND_net), .I2C2SDAI(GND_net), .SPISCKI(GND_net), .SPIMISOI(GND_net), 
        .SPIMOSII(GND_net), .SPISCSN(GND_net), .TCCLKI(ClkOsc_c), .TCRSTN(VCC_net), 
        .TCIC(GND_net), .UFMSN(VCC_net), .PLL0DATI0(GND_net), .PLL0DATI1(GND_net), 
        .PLL0DATI2(GND_net), .PLL0DATI3(GND_net), .PLL0DATI4(GND_net), 
        .PLL0DATI5(GND_net), .PLL0DATI6(GND_net), .PLL0DATI7(GND_net), 
        .PLL0ACKI(GND_net), .PLL1DATI0(GND_net), .PLL1DATI1(GND_net), 
        .PLL1DATI2(GND_net), .PLL1DATI3(GND_net), .PLL1DATI4(GND_net), 
        .PLL1DATI5(GND_net), .PLL1DATI6(GND_net), .PLL1DATI7(GND_net), 
        .PLL1ACKI(GND_net), .TCOC(Clk200Hz_c)) /* synthesis syn_instantiated=1 */ ;   // d:/dt/stoppuhr/clkgen.vhd(89[11:36])
    defparam EFBInst_0.EFB_I2C1 = "DISABLED";
    defparam EFBInst_0.EFB_I2C2 = "DISABLED";
    defparam EFBInst_0.EFB_SPI = "DISABLED";
    defparam EFBInst_0.EFB_TC = "ENABLED";
    defparam EFBInst_0.EFB_TC_PORTMODE = "NO_WB";
    defparam EFBInst_0.EFB_UFM = "DISABLED";
    defparam EFBInst_0.EFB_WB_CLK_FREQ = "50.0";
    defparam EFBInst_0.DEV_DENSITY = "256L";
    defparam EFBInst_0.UFM_INIT_PAGES = 0;
    defparam EFBInst_0.UFM_INIT_START_PAGE = 0;
    defparam EFBInst_0.UFM_INIT_ALL_ZEROS = "ENABLED";
    defparam EFBInst_0.UFM_INIT_FILE_NAME = "NONE";
    defparam EFBInst_0.UFM_INIT_FILE_FORMAT = "HEX";
    defparam EFBInst_0.I2C1_ADDRESSING = "7BIT";
    defparam EFBInst_0.I2C2_ADDRESSING = "7BIT";
    defparam EFBInst_0.I2C1_SLAVE_ADDR = "0b1000001";
    defparam EFBInst_0.I2C2_SLAVE_ADDR = "0b1000010";
    defparam EFBInst_0.I2C1_BUS_PERF = "100kHz";
    defparam EFBInst_0.I2C2_BUS_PERF = "100kHz";
    defparam EFBInst_0.I2C1_CLK_DIVIDER = 1;
    defparam EFBInst_0.I2C2_CLK_DIVIDER = 1;
    defparam EFBInst_0.I2C1_GEN_CALL = "DISABLED";
    defparam EFBInst_0.I2C2_GEN_CALL = "DISABLED";
    defparam EFBInst_0.I2C1_WAKEUP = "DISABLED";
    defparam EFBInst_0.I2C2_WAKEUP = "DISABLED";
    defparam EFBInst_0.SPI_MODE = "MASTER";
    defparam EFBInst_0.SPI_CLK_DIVIDER = 1;
    defparam EFBInst_0.SPI_LSB_FIRST = "DISABLED";
    defparam EFBInst_0.SPI_CLK_INV = "DISABLED";
    defparam EFBInst_0.SPI_PHASE_ADJ = "DISABLED";
    defparam EFBInst_0.SPI_SLAVE_HANDSHAKE = "DISABLED";
    defparam EFBInst_0.SPI_INTR_TXRDY = "DISABLED";
    defparam EFBInst_0.SPI_INTR_RXRDY = "DISABLED";
    defparam EFBInst_0.SPI_INTR_TXOVR = "DISABLED";
    defparam EFBInst_0.SPI_INTR_RXOVR = "DISABLED";
    defparam EFBInst_0.SPI_WAKEUP = "DISABLED";
    defparam EFBInst_0.TC_MODE = "CTCM";
    defparam EFBInst_0.TC_SCLK_SEL = "PCLOCK";
    defparam EFBInst_0.TC_CCLK_SEL = 1;
    defparam EFBInst_0.GSR = "ENABLED";
    defparam EFBInst_0.TC_TOP_SET = 5200;
    defparam EFBInst_0.TC_OCR_SET = 32767;
    defparam EFBInst_0.TC_OC_MODE = "TOGGLE";
    defparam EFBInst_0.TC_RESETN = "ENABLED";
    defparam EFBInst_0.TC_TOP_SEL = "ON";
    defparam EFBInst_0.TC_OV_INT = "OFF";
    defparam EFBInst_0.TC_OCR_INT = "OFF";
    defparam EFBInst_0.TC_ICR_INT = "OFF";
    defparam EFBInst_0.TC_OVERFLOW = "DISABLED";
    defparam EFBInst_0.TC_ICAPTURE = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

