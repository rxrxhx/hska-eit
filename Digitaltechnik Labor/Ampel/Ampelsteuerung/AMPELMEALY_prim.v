// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Fri Jun 15 13:44:29 2018
//
// Verilog Description of module AMPELMEALY
//

module AMPELMEALY (ANF, CMR, FA, KFZA, PR) /* synthesis syn_module_defined=1 */ ;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(3[8:18])
    input ANF;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(4[8:11])
    input [1:0]CMR;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(5[14:17])
    output [1:0]FA;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(6[14:16])
    output [2:0]KFZA;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(7[14:18])
    input PR;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(8[8:10])
    
    wire ANF_c;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(4[8:11])
    wire [1:0]CMR_c;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(5[14:17])
    wire [1:0]FA_c;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(6[14:16])
    wire [2:0]KFZA_c;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(7[14:18])
    wire PR_c;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(8[8:10])
    wire N_2;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(11[6:9])
    wire N_3;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(12[6:9])
    wire N_4;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(13[6:9])
    wire N_5;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(14[6:9])
    wire N_6;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(15[6:9])
    wire N_8;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(16[6:9])
    wire GND_net;   // c:/users/rrhar/desktop/dt/ampel/ct.vhd(26[12:21])
    wire VCC_net;   // c:/users/rrhar/desktop/dt/ampel/ct.vhd(17[9:16])
    wire n815 /* synthesis nomerge= */ ;
    
    wire n806, n794, n135, n807, n819, n812, n785, n7, n805;
    
    VLO i1 (.Z(GND_net));
    FD1S1D i348 (.D(n805), .CK(n807), .CD(GND_net), .Q(KFZA_c[0]));
    defparam i348.GSR = "DISABLED";
    INV I7 (.A(N_6), .Z(N_5));
    OR2 I8 (.A(N_3), .B(N_2), .Z(N_4)) /* synthesis syn_instantiated=1 */ ;
    AND2 I9 (.A(N_6), .B(N_8), .Z(N_2)) /* synthesis syn_instantiated=1 */ ;
    AND2 I2 (.A(ANF_c), .B(N_5), .Z(N_3)) /* synthesis syn_instantiated=1 */ ;
    FD1S1D i358 (.D(n806), .CK(n807), .CD(GND_net), .Q(KFZA_c[2]));
    defparam i358.GSR = "DISABLED";
    GSR GSR_INST (.GSR(n7));
    FD1S1I i354 (.D(n819), .CK(n807), .CD(n785), .Q(FA_c[0]));
    defparam i354.GSR = "DISABLED";
    ClkGen_default I5 (.CMR({CMR_c}), .GND_net(GND_net), .PR_c(PR_c), 
            .N_8(N_8), .VCC_net(VCC_net));
    Ampel_default I10 (.N_4(N_4), .n785(n785), .n794(n794), .n806(n806), 
            .n34(n819), .n812(n812), .n807(n807), .n7(n7), .n805(n805), 
            .n135(n135));
    FD1S1J i345 (.D(n794), .CK(n807), .PD(n135), .Q(KFZA_c[1]));
    defparam i345.GSR = "DISABLED";
    IB PR_pad (.I(PR), .O(PR_c));
    IB CMR_pad_0 (.I(CMR[0]), .O(CMR_c[0]));
    IB CMR_pad_1 (.I(CMR[1]), .O(CMR_c[1]));
    IB ANF_pad (.I(ANF), .O(ANF_c));
    OB KFZA_pad_0 (.I(KFZA_c[0]), .O(KFZA[0]));
    OB KFZA_pad_1 (.I(KFZA_c[1]), .O(KFZA[1]));
    OB KFZA_pad_2 (.I(KFZA_c[2]), .O(KFZA[2]));
    OB FA_pad_0 (.I(FA_c[0]), .O(FA[0]));
    OB FA_pad_1 (.I(FA_c[1]), .O(FA[1]));
    FD1S1D i351 (.D(n812), .CK(n807), .CD(GND_net), .Q(FA_c[1]));
    defparam i351.GSR = "DISABLED";
    VHI i2 (.Z(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n815)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    SRFF_default I3 (.N_6(N_6), .N_3(N_3), .n815(n815));
    
endmodule
//
// Verilog Description of module ClkGen_default
//

module ClkGen_default (CMR, GND_net, PR_c, N_8, VCC_net);
    input [1:0]CMR;
    input GND_net;
    input PR_c;
    output N_8;
    input VCC_net;
    
    wire \Counter.Clk3Hz ;   // c:/users/rrhar/desktop/dt/ampel/clkgen.vhd(100[11:17])
    wire Clk100Hz;   // c:/users/rrhar/desktop/dt/ampel/clkgen.vhd(62[4:12])
    wire Clk200Hz;   // c:/users/rrhar/desktop/dt/ampel/clkgen.vhd(63[4:12])
    wire [5:0]\Counter.Counter3Hz ;   // c:/users/rrhar/desktop/dt/ampel/clkgen.vhd(98[11:21])
    wire \Counter.Clk1Hz ;   // c:/users/rrhar/desktop/dt/ampel/clkgen.vhd(101[11:17])
    wire ClkOsc;   // c:/users/rrhar/desktop/dt/ampel/clkgen.vhd(64[4:10])
    wire [6:0]\Counter.Counter1Hz ;   // c:/users/rrhar/desktop/dt/ampel/clkgen.vhd(99[11:21])
    wire [6:0]n59;
    
    wire n811;
    wire [6:0]n34;
    
    wire n799, n266;
    wire [5:0]n52;
    wire [5:0]n30;
    
    wire n268, n71, n798, n755, n808, n453, n6_adj_2, n452, 
        n810, n4;
    
    LUT4 i655_2_lut_rep_5 (.A(n59[1]), .B(n59[0]), .Z(n811)) /* synthesis lut_function=(A (B)) */ ;
    defparam i655_2_lut_rep_5.init = 16'h8888;
    LUT4 i650_1_lut (.A(n59[0]), .Z(n34[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i650_1_lut.init = 16'h5555;
    LUT4 i652_2_lut (.A(n59[1]), .B(n59[0]), .Z(n34[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i652_2_lut.init = 16'h6666;
    LUT4 i720_3_lut (.A(\Counter.Clk3Hz ), .B(Clk100Hz), .C(CMR[0]), .Z(n799)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i720_3_lut.init = 16'hcaca;
    FD1S3AX \Counter.Clk3Hz_32  (.D(n266), .CK(Clk200Hz), .Q(\Counter.Clk3Hz ));
    defparam \Counter.Clk3Hz_32 .GSR = "DISABLED";
    LUT4 i594_2_lut_3_lut_4_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [3]), .D(\Counter.Counter3Hz [2]), .Z(n30[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i594_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3AX \Counter.Clk1Hz_34  (.D(n268), .CK(Clk200Hz), .Q(\Counter.Clk1Hz ));
    defparam \Counter.Clk1Hz_34 .GSR = "DISABLED";
    FD1S3AX SigClk100Hz_37 (.D(n71), .CK(Clk200Hz), .Q(Clk100Hz));
    defparam SigClk100Hz_37.GSR = "DISABLED";
    OSCH OscInst0 (.STDBY(GND_net), .OSC(ClkOsc)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(26[8:71])
    defparam OscInst0.NOM_FREQ = "2.08";
    LUT4 i719_3_lut (.A(PR_c), .B(\Counter.Clk1Hz ), .C(CMR[0]), .Z(n798)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i719_3_lut.init = 16'hcaca;
    LUT4 i587_2_lut_3_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .C(\Counter.Counter3Hz [2]), 
         .Z(n30[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i587_2_lut_3_lut.init = 16'h7878;
    LUT4 i680_2_lut (.A(\Counter.Counter1Hz [5]), .B(n755), .Z(n34[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i680_2_lut.init = 16'h6666;
    LUT4 i590_2_lut_rep_2_3_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [2]), .Z(n808)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i590_2_lut_rep_2_3_lut.init = 16'h8080;
    PFUMX i721 (.BLUT(n798), .ALUT(n799), .C0(CMR[1]), .Z(N_8));
    LUT4 i19_1_lut (.A(Clk100Hz), .Z(n71)) /* synthesis lut_function=(!(A)) */ ;
    defparam i19_1_lut.init = 16'h5555;
    FD1S3IX \Counter.Counter1Hz_108__i0  (.D(n34[0]), .CK(Clk200Hz), .CD(n453), 
            .Q(n59[0]));
    defparam \Counter.Counter1Hz_108__i0 .GSR = "DISABLED";
    LUT4 i507_4_lut (.A(\Counter.Counter3Hz [1]), .B(\Counter.Counter3Hz [5]), 
         .C(n6_adj_2), .D(\Counter.Counter3Hz [4]), .Z(n452)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i507_4_lut.init = 16'hccc8;
    LUT4 i583_2_lut_rep_4 (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n810)) /* synthesis lut_function=(A (B)) */ ;
    defparam i583_2_lut_rep_4.init = 16'h8888;
    FD1S3IX \Counter.Counter1Hz_108__i6  (.D(n34[6]), .CK(Clk200Hz), .CD(n453), 
            .Q(\Counter.Counter1Hz [6]));
    defparam \Counter.Counter1Hz_108__i6 .GSR = "DISABLED";
    LUT4 i673_2_lut_4_lut (.A(\Counter.Counter1Hz [2]), .B(n811), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [4]), .Z(n34[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i673_2_lut_4_lut.init = 16'h7f80;
    LUT4 i608_3_lut_4_lut (.A(\Counter.Counter3Hz [3]), .B(n808), .C(\Counter.Counter3Hz [4]), 
         .D(\Counter.Counter3Hz [5]), .Z(n30[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i608_3_lut_4_lut.init = 16'h7f80;
    FD1S3IX \Counter.Counter1Hz_108__i5  (.D(n34[5]), .CK(Clk200Hz), .CD(n453), 
            .Q(\Counter.Counter1Hz [5]));
    defparam \Counter.Counter1Hz_108__i5 .GSR = "DISABLED";
    LUT4 i1_2_lut (.A(\Counter.Counter1Hz [2]), .B(\Counter.Counter1Hz [3]), 
         .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S3IX \Counter.Counter1Hz_108__i4  (.D(n34[4]), .CK(Clk200Hz), .CD(n453), 
            .Q(\Counter.Counter1Hz [4]));
    defparam \Counter.Counter1Hz_108__i4 .GSR = "DISABLED";
    LUT4 i1_2_lut_adj_1 (.A(\Counter.Clk3Hz ), .B(n452), .Z(n266)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_1.init = 16'h6666;
    FD1S3IX \Counter.Counter1Hz_108__i3  (.D(n34[3]), .CK(Clk200Hz), .CD(n453), 
            .Q(\Counter.Counter1Hz [3]));
    defparam \Counter.Counter1Hz_108__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_108__i2  (.D(n34[2]), .CK(Clk200Hz), .CD(n453), 
            .Q(\Counter.Counter1Hz [2]));
    defparam \Counter.Counter1Hz_108__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_108__i1  (.D(n34[1]), .CK(Clk200Hz), .CD(n453), 
            .Q(n59[1]));
    defparam \Counter.Counter1Hz_108__i1 .GSR = "DISABLED";
    LUT4 i2_4_lut (.A(\Counter.Counter1Hz [6]), .B(\Counter.Counter1Hz [4]), 
         .C(\Counter.Counter1Hz [5]), .D(n4), .Z(n453)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    LUT4 i1_2_lut_adj_2 (.A(\Counter.Clk1Hz ), .B(n453), .Z(n268)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_2.init = 16'h6666;
    FD1S3IX \Counter.Counter3Hz_106__i5  (.D(n30[5]), .CK(Clk200Hz), .CD(n452), 
            .Q(\Counter.Counter3Hz [5]));
    defparam \Counter.Counter3Hz_106__i5 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_106__i4  (.D(n30[4]), .CK(Clk200Hz), .CD(n452), 
            .Q(\Counter.Counter3Hz [4]));
    defparam \Counter.Counter3Hz_106__i4 .GSR = "DISABLED";
    LUT4 i676_2_lut_4_lut (.A(\Counter.Counter1Hz [2]), .B(n811), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [4]), .Z(n755)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i676_2_lut_4_lut.init = 16'h8000;
    FD1S3IX \Counter.Counter3Hz_106__i3  (.D(n30[3]), .CK(Clk200Hz), .CD(n452), 
            .Q(\Counter.Counter3Hz [3]));
    defparam \Counter.Counter3Hz_106__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_106__i2  (.D(n30[2]), .CK(Clk200Hz), .CD(n452), 
            .Q(\Counter.Counter3Hz [2]));
    defparam \Counter.Counter3Hz_106__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_106__i1  (.D(n30[1]), .CK(Clk200Hz), .CD(n452), 
            .Q(\Counter.Counter3Hz [1]));
    defparam \Counter.Counter3Hz_106__i1 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_106__i0  (.D(n30[0]), .CK(Clk200Hz), .CD(n452), 
            .Q(n52[0]));
    defparam \Counter.Counter3Hz_106__i0 .GSR = "DISABLED";
    LUT4 i578_1_lut (.A(n52[0]), .Z(n30[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i578_1_lut.init = 16'h5555;
    LUT4 i659_2_lut_3_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [2]), 
         .Z(n34[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i659_2_lut_3_lut.init = 16'h7878;
    LUT4 i666_2_lut_3_lut_4_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [2]), .Z(n34[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i666_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_2_lut (.A(\Counter.Counter3Hz [2]), .B(\Counter.Counter3Hz [3]), 
         .Z(n6_adj_2)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i601_2_lut_3_lut_4_lut (.A(\Counter.Counter3Hz [2]), .B(n810), 
         .C(\Counter.Counter3Hz [4]), .D(\Counter.Counter3Hz [3]), .Z(n30[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i601_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i687_3_lut (.A(\Counter.Counter1Hz [6]), .B(\Counter.Counter1Hz [5]), 
         .C(n755), .Z(n34[6])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i687_3_lut.init = 16'h6a6a;
    LUT4 i580_2_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n30[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i580_2_lut.init = 16'h6666;
    CT_default CTInst0 (.ClkOsc(ClkOsc), .VCC_net(VCC_net), .Clk200Hz(Clk200Hz), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;
    
endmodule
//
// Verilog Description of module CT_default
//

module CT_default (ClkOsc, VCC_net, Clk200Hz, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input ClkOsc;
    input VCC_net;
    output Clk200Hz;
    input GND_net;
    
    
    EFB EFBInst_0 (.WBCLKI(GND_net), .WBRSTI(GND_net), .WBCYCI(GND_net), 
        .WBSTBI(GND_net), .WBWEI(GND_net), .WBADRI0(GND_net), .WBADRI1(GND_net), 
        .WBADRI2(GND_net), .WBADRI3(GND_net), .WBADRI4(GND_net), .WBADRI5(GND_net), 
        .WBADRI6(GND_net), .WBADRI7(GND_net), .WBDATI0(GND_net), .WBDATI1(GND_net), 
        .WBDATI2(GND_net), .WBDATI3(GND_net), .WBDATI4(GND_net), .WBDATI5(GND_net), 
        .WBDATI6(GND_net), .WBDATI7(GND_net), .I2C1SCLI(GND_net), .I2C1SDAI(GND_net), 
        .I2C2SCLI(GND_net), .I2C2SDAI(GND_net), .SPISCKI(GND_net), .SPIMISOI(GND_net), 
        .SPIMOSII(GND_net), .SPISCSN(GND_net), .TCCLKI(ClkOsc), .TCRSTN(VCC_net), 
        .TCIC(GND_net), .UFMSN(VCC_net), .PLL0DATI0(GND_net), .PLL0DATI1(GND_net), 
        .PLL0DATI2(GND_net), .PLL0DATI3(GND_net), .PLL0DATI4(GND_net), 
        .PLL0DATI5(GND_net), .PLL0DATI6(GND_net), .PLL0DATI7(GND_net), 
        .PLL0ACKI(GND_net), .PLL1DATI0(GND_net), .PLL1DATI1(GND_net), 
        .PLL1DATI2(GND_net), .PLL1DATI3(GND_net), .PLL1DATI4(GND_net), 
        .PLL1DATI5(GND_net), .PLL1DATI6(GND_net), .PLL1DATI7(GND_net), 
        .PLL1ACKI(GND_net), .TCOC(Clk200Hz)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rrhar/desktop/dt/ampel/clkgen.vhd(89[11:36])
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
// Verilog Description of module Ampel_default
//

module Ampel_default (N_4, n785, n794, n806, n34, n812, n807, 
            n7, n805, n135);
    input N_4;
    output n785;
    output n794;
    output n806;
    output n34;
    output n812;
    output n807;
    output n7;
    output n805;
    output n135;
    
    wire [3:0]ZUST;   // c:/users/rrhar/desktop/dt/ampel/ampelsteuerung/ampelmealy.v(9[14:18])
    wire [3:0]n22;
    
    wire n809;
    
    FD1S3AX count4bit_104__i0 (.D(n22[0]), .CK(N_4), .Q(ZUST[0]));
    defparam count4bit_104__i0.GSR = "ENABLED";
    LUT4 i621_1_lut (.A(ZUST[0]), .Z(n22[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i621_1_lut.init = 16'h5555;
    LUT4 i1_3_lut (.A(ZUST[3]), .B(ZUST[2]), .C(ZUST[1]), .Z(n785)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2828;
    FD1S3AX count4bit_104__i3 (.D(n22[3]), .CK(N_4), .Q(ZUST[3]));
    defparam count4bit_104__i3.GSR = "ENABLED";
    FD1S3AX count4bit_104__i2 (.D(n22[2]), .CK(N_4), .Q(ZUST[2]));
    defparam count4bit_104__i2.GSR = "ENABLED";
    FD1S3AX count4bit_104__i1 (.D(n809), .CK(N_4), .Q(ZUST[1]));
    defparam count4bit_104__i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(ZUST[0]), .B(ZUST[1]), .C(ZUST[3]), .D(ZUST[2]), 
         .Z(n794)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0006;
    LUT4 i11_2_lut_rep_3 (.A(ZUST[0]), .B(ZUST[1]), .Z(n809)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11_2_lut_rep_3.init = 16'h6666;
    LUT4 ZUST_3__bdd_4_lut (.A(ZUST[3]), .B(ZUST[0]), .C(ZUST[2]), .D(ZUST[1]), 
         .Z(n806)) /* synthesis lut_function=(!(A (C (D))+!A !(B (C+(D))+!B (C)))) */ ;
    defparam ZUST_3__bdd_4_lut.init = 16'h5efa;
    LUT4 i400_1_lut_4_lut (.A(ZUST[0]), .B(ZUST[3]), .C(ZUST[2]), .D(ZUST[1]), 
         .Z(n34)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C+(D))+!B !(C (D))))) */ ;
    defparam i400_1_lut_4_lut.init = 16'h302c;
    LUT4 ZUST_0__bdd_4_lut_rep_6 (.A(ZUST[0]), .B(ZUST[3]), .C(ZUST[2]), 
         .D(ZUST[1]), .Z(n812)) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A (B (C+(D))+!B !(C (D)))) */ ;
    defparam ZUST_0__bdd_4_lut_rep_6.init = 16'hcfd3;
    LUT4 i725_2_lut_rep_1_3_lut (.A(ZUST[3]), .B(ZUST[1]), .C(ZUST[2]), 
         .Z(n807)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i725_2_lut_rep_1_3_lut.init = 16'h7f7f;
    LUT4 i1_2_lut_3_lut_4_lut (.A(ZUST[3]), .B(ZUST[1]), .C(ZUST[0]), 
         .D(ZUST[2]), .Z(n7)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf7ff;
    LUT4 ZUST_3__bdd_4_lut_726 (.A(ZUST[3]), .B(ZUST[0]), .C(ZUST[2]), 
         .D(ZUST[1]), .Z(n805)) /* synthesis lut_function=(A (C (D))+!A !(B+(C+(D)))) */ ;
    defparam ZUST_3__bdd_4_lut_726.init = 16'ha001;
    LUT4 i630_2_lut_3_lut (.A(ZUST[1]), .B(ZUST[0]), .C(ZUST[2]), .Z(n22[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i630_2_lut_3_lut.init = 16'h7878;
    LUT4 i637_3_lut_4_lut (.A(ZUST[1]), .B(ZUST[0]), .C(ZUST[2]), .D(ZUST[3]), 
         .Z(n22[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i637_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_3_lut (.A(ZUST[3]), .B(ZUST[1]), .C(ZUST[2]), .Z(n135)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h2020;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module SRFF_default
//

module SRFF_default (N_6, N_3, n815);
    output N_6;
    input N_3;
    input n815;
    
    wire n815 /* synthesis nomerge= */ ;
    
    FD1S3AX \dec.v_8  (.D(n815), .CK(N_3), .Q(N_6));
    defparam \dec.v_8 .GSR = "ENABLED";
    
endmodule
