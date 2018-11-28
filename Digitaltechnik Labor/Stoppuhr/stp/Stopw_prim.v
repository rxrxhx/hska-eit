// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Wed Jun 13 01:57:05 2018
//
// Verilog Description of module Stopw
//

module Stopw (D15, EN, MR, PR, RES, SEG, y) /* synthesis syn_module_defined=1 */ ;   // d:/dt/stoppuhr/stp/stopw.v(3[8:13])
    output D15;   // d:/dt/stoppuhr/stp/stopw.v(4[8:11])
    input EN;   // d:/dt/stoppuhr/stp/stopw.v(5[8:10])
    input [1:0]MR;   // d:/dt/stoppuhr/stp/stopw.v(6[14:16])
    input PR;   // d:/dt/stoppuhr/stp/stopw.v(7[8:10])
    input RES;   // d:/dt/stoppuhr/stp/stopw.v(8[8:11])
    output [3:0]SEG;   // d:/dt/stoppuhr/stp/stopw.v(9[14:17])
    output [1:8]y;   // d:/dt/stoppuhr/stp/stopw.v(10[14:15])
    
    wire D15_c;   // d:/dt/stoppuhr/stp/stopw.v(4[8:11])
    wire EN_c;   // d:/dt/stoppuhr/stp/stopw.v(5[8:10])
    wire [1:0]MR_c;   // d:/dt/stoppuhr/stp/stopw.v(6[14:16])
    wire PR_c;   // d:/dt/stoppuhr/stp/stopw.v(7[8:10])
    wire RES_c;   // d:/dt/stoppuhr/stp/stopw.v(8[8:11])
    wire [3:0]SEG_c;   // d:/dt/stoppuhr/stp/stopw.v(9[14:17])
    wire N_7;   // d:/dt/stoppuhr/stp/stopw.v(16[6:9])
    wire N_1;   // d:/dt/stoppuhr/stp/stopw.v(17[6:9])
    wire N_2;   // d:/dt/stoppuhr/stp/stopw.v(18[6:9])
    wire N_3;   // d:/dt/stoppuhr/stp/stopw.v(19[6:9])
    wire VCC_net;   // d:/dt/stoppuhr/ct.vhd(17[9:16])
    wire [31:0]\dec.cnt ;   // d:/dt/stoppuhr/sg7mux.vhd(20[11:14])
    wire GND_net;   // d:/dt/stoppuhr/dec7s.vhd(34[11:15])
    wire [3:0]cnt;   // d:/dt/stoppuhr/dec1counter.vhd(18[8:11])
    wire [3:0]cnt_adj_28;   // d:/dt/stoppuhr/dec1counter.vhd(18[8:11])
    wire [3:0]cnt_adj_36;   // d:/dt/stoppuhr/dec1counter.vhd(18[8:11])
    wire [3:0]cnt_adj_44;   // d:/dt/stoppuhr/dec1counter.vhd(18[8:11])
    wire [1:8]\dec.help ;   // d:/dt/stoppuhr/dec7s.vhd(34[11:15])
    
    wire n2218, n2215, n2212, n584, n258, n2392, n4;
    
    VHI i5 (.Z(VCC_net));
    OB y_pad_2 (.I(\dec.help [2]), .O(y[2]));
    OB y_pad_3 (.I(\dec.help [3]), .O(y[3]));
    OB y_pad_1 (.I(\dec.help [1]), .O(y[1]));
    ClkGen I6 (.MR({MR_c}), .D15_c(D15_c), .N_7(N_7), .GND_net(GND_net), 
           .PR_c(PR_c), .VCC_net(VCC_net));
    OB SEG_pad_0 (.I(SEG_c[0]), .O(SEG[0]));
    OB SEG_pad_1 (.I(SEG_c[1]), .O(SEG[1]));
    OB SEG_pad_2 (.I(SEG_c[2]), .O(SEG[2]));
    OB SEG_pad_3 (.I(SEG_c[3]), .O(SEG[3]));
    OB D15_pad (.I(D15_c), .O(D15));
    GSR GSR_INST (.GSR(n2392));
    OB y_pad_4 (.I(\dec.help [4]), .O(y[4]));
    OB y_pad_5 (.I(\dec.help [5]), .O(y[5]));
    OB y_pad_6 (.I(\dec.help [6]), .O(y[6]));
    OB y_pad_7 (.I(\dec.help [7]), .O(y[7]));
    OB y_pad_8 (.I(GND_net), .O(y[8]));
    IB EN_pad (.I(EN), .O(EN_c));
    IB MR_pad_1 (.I(MR[1]), .O(MR_c[1]));
    IB MR_pad_0 (.I(MR[0]), .O(MR_c[0]));
    IB PR_pad (.I(PR), .O(PR_c));
    IB RES_pad (.I(RES), .O(RES_c));
    Dek1Z_U1 I2 (.cnt({Open_0, cnt_adj_28[2], Open_1, Open_2}), .n258(n258), 
            .n2212(n2212), .n2215(n2215), .N_1(N_1), .N_2(N_2), .n584(n584), 
            .\cnt[1]_adj_4 (cnt_adj_36[1]), .\cnt[1]_adj_5 (cnt[1]), .\dec.cnt[1] (\dec.cnt [1]), 
            .\cnt[1]_adj_6 (cnt_adj_44[1]), .EN_c(EN_c), .n2218(n2218), 
            .\cnt[0]_adj_7 (cnt[0]), .n4(n4), .RES_c(RES_c), .\cnt[3]_adj_8 (cnt_adj_36[3]), 
            .\cnt[3]_adj_9 (cnt[3]), .\cnt[3]_adj_10 (cnt_adj_44[3]), .\cnt[0]_adj_11 (cnt_adj_36[0]), 
            .\cnt[0]_adj_12 (cnt_adj_44[0]));
    Dek1Z_U0 I3 (.N_2(N_2), .N_3(N_3), .n584(n584), .cnt({cnt_adj_36}), 
            .EN_c(EN_c));
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    mux4 I10 (.GND_net(GND_net), .SEG({SEG_c}), .\dec.cnt[1] (\dec.cnt [1]), 
         .RES_c(RES_c), .n2212(n2212), .n467(\dec.help [6]), .n468(\dec.help [7]), 
         .n2218(n2218), .n466(\dec.help [5]), .n2392(n2392), .n462(\dec.help [1]), 
         .n463(\dec.help [2]), .N_7(N_7), .n464(\dec.help [3]), .\cnt[2] (cnt_adj_36[2]), 
         .\cnt[2]_adj_1 (cnt[2]), .\cnt[2]_adj_2 (cnt_adj_44[2]), .\cnt[2]_adj_3 (cnt_adj_28[2]), 
         .n258(n258), .n2215(n2215), .n465(\dec.help [4]));
    Dek1Z_U2 I1 (.EN_c(EN_c), .cnt({cnt}), .n4(n4), .N_1(N_1));
    Dek1Z I4 (.cnt({cnt_adj_44}), .EN_c(EN_c), .D15_c(D15_c), .N_3(N_3), 
          .n584(n584));
    
endmodule
//
// Verilog Description of module ClkGen
//

module ClkGen (MR, D15_c, N_7, GND_net, PR_c, VCC_net);
    input [1:0]MR;
    output D15_c;
    output N_7;
    input GND_net;
    input PR_c;
    input VCC_net;
    
    wire [5:0]\Counter.Counter3Hz ;   // d:/dt/stoppuhr/clkgen.vhd(98[11:21])
    wire \Counter.Clk3Hz ;   // d:/dt/stoppuhr/clkgen.vhd(100[11:17])
    wire \Counter.Clk1Hz ;   // d:/dt/stoppuhr/clkgen.vhd(101[11:17])
    wire Clk100Hz;   // d:/dt/stoppuhr/clkgen.vhd(62[4:12])
    wire ClkOsc;   // d:/dt/stoppuhr/clkgen.vhd(64[4:10])
    wire [6:0]\Counter.Counter1Hz ;   // d:/dt/stoppuhr/clkgen.vhd(99[11:21])
    
    wire n2207, n2208, n2391;
    wire [5:0]n30;
    
    wire n470, n472, n71, n2389, n2390;
    wire [6:0]n34;
    
    wire n933, n4;
    wire [5:0]n52;
    
    wire n932, n6_adj_13;
    wire [6:0]n59;
    
    wire n2388, n2395;
    
    PFUMX i1903 (.BLUT(n2207), .ALUT(n2208), .C0(MR[1]), .Z(D15_c));
    LUT4 i1765_2_lut_3_lut_4_lut (.A(\Counter.Counter3Hz [2]), .B(n2391), 
         .C(\Counter.Counter3Hz [4]), .D(\Counter.Counter3Hz [3]), .Z(n30[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1765_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3AX \Counter.Clk3Hz_32  (.D(n470), .CK(N_7), .Q(\Counter.Clk3Hz ));
    defparam \Counter.Clk3Hz_32 .GSR = "DISABLED";
    FD1S3AX \Counter.Clk1Hz_34  (.D(n472), .CK(N_7), .Q(\Counter.Clk1Hz ));
    defparam \Counter.Clk1Hz_34 .GSR = "DISABLED";
    FD1S3AX SigClk100Hz_37 (.D(n71), .CK(N_7), .Q(Clk100Hz));
    defparam SigClk100Hz_37.GSR = "DISABLED";
    OSCH OscInst0 (.STDBY(GND_net), .OSC(ClkOsc)) /* synthesis syn_instantiated=1 */ ;   // d:/dt/stoppuhr/stp/stopw.v(31[8] 32[46])
    defparam OscInst0.NOM_FREQ = "2.08";
    LUT4 i1772_3_lut_4_lut (.A(\Counter.Counter3Hz [3]), .B(n2389), .C(\Counter.Counter3Hz [4]), 
         .D(\Counter.Counter3Hz [5]), .Z(n30[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1772_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1606_2_lut_4_lut (.A(\Counter.Counter1Hz [3]), .B(n2390), .C(\Counter.Counter1Hz [4]), 
         .D(\Counter.Counter1Hz [5]), .Z(n34[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1606_2_lut_4_lut.init = 16'h7f80;
    FD1S3IX \Counter.Counter3Hz_185__i5  (.D(n30[5]), .CK(N_7), .CD(n933), 
            .Q(\Counter.Counter3Hz [5]));
    defparam \Counter.Counter3Hz_185__i5 .GSR = "DISABLED";
    LUT4 i19_1_lut (.A(Clk100Hz), .Z(n71)) /* synthesis lut_function=(!(A)) */ ;
    defparam i19_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(\Counter.Counter1Hz [2]), .B(\Counter.Counter1Hz [3]), 
         .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1758_2_lut_3_lut_4_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [3]), .D(\Counter.Counter3Hz [2]), .Z(n30[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1758_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_4_lut (.A(\Counter.Counter1Hz [6]), .B(\Counter.Counter1Hz [4]), 
         .C(\Counter.Counter1Hz [5]), .D(n4), .Z(n932)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    LUT4 i1902_3_lut (.A(\Counter.Clk3Hz ), .B(Clk100Hz), .C(MR[0]), .Z(n2208)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1902_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_3 (.A(\Counter.Clk1Hz ), .B(n932), .Z(n472)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_3.init = 16'h6666;
    LUT4 i2_2_lut (.A(\Counter.Counter3Hz [2]), .B(\Counter.Counter3Hz [3]), 
         .Z(n6_adj_13)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1298_4_lut (.A(\Counter.Counter3Hz [1]), .B(\Counter.Counter3Hz [5]), 
         .C(n6_adj_13), .D(\Counter.Counter3Hz [4]), .Z(n933)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1298_4_lut.init = 16'hccc8;
    LUT4 i1751_2_lut_3_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .C(\Counter.Counter3Hz [2]), 
         .Z(n30[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1751_2_lut_3_lut.init = 16'h7878;
    LUT4 i1901_3_lut (.A(PR_c), .B(\Counter.Clk1Hz ), .C(MR[0]), .Z(n2207)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1901_3_lut.init = 16'hcaca;
    LUT4 i1754_2_lut_rep_20_3_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [2]), .Z(n2389)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1754_2_lut_rep_20_3_lut.init = 16'h8080;
    LUT4 i1576_1_lut (.A(n59[0]), .Z(n34[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1576_1_lut.init = 16'h5555;
    LUT4 i1742_1_lut (.A(n52[0]), .Z(n30[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1742_1_lut.init = 16'h5555;
    FD1S3IX \Counter.Counter1Hz_187__i5  (.D(n34[5]), .CK(N_7), .CD(n932), 
            .Q(\Counter.Counter1Hz [5]));
    defparam \Counter.Counter1Hz_187__i5 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_187__i4  (.D(n34[4]), .CK(N_7), .CD(n932), 
            .Q(\Counter.Counter1Hz [4]));
    defparam \Counter.Counter1Hz_187__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_187__i3  (.D(n34[3]), .CK(N_7), .CD(n932), 
            .Q(\Counter.Counter1Hz [3]));
    defparam \Counter.Counter1Hz_187__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_187__i2  (.D(n34[2]), .CK(N_7), .CD(n932), 
            .Q(\Counter.Counter1Hz [2]));
    defparam \Counter.Counter1Hz_187__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_187__i1  (.D(n34[1]), .CK(N_7), .CD(n932), 
            .Q(n59[1]));
    defparam \Counter.Counter1Hz_187__i1 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_185__i4  (.D(n30[4]), .CK(N_7), .CD(n933), 
            .Q(\Counter.Counter3Hz [4]));
    defparam \Counter.Counter3Hz_185__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_185__i3  (.D(n30[3]), .CK(N_7), .CD(n933), 
            .Q(\Counter.Counter3Hz [3]));
    defparam \Counter.Counter3Hz_185__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_185__i2  (.D(n30[2]), .CK(N_7), .CD(n933), 
            .Q(\Counter.Counter3Hz [2]));
    defparam \Counter.Counter3Hz_185__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_185__i1  (.D(n30[1]), .CK(N_7), .CD(n933), 
            .Q(\Counter.Counter3Hz [1]));
    defparam \Counter.Counter3Hz_185__i1 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_187__i6  (.D(n34[6]), .CK(N_7), .CD(n932), 
            .Q(\Counter.Counter1Hz [6]));
    defparam \Counter.Counter1Hz_187__i6 .GSR = "DISABLED";
    LUT4 i1747_2_lut_rep_22 (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n2391)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1747_2_lut_rep_22.init = 16'h8888;
    LUT4 i1_2_lut_adj_4 (.A(\Counter.Clk3Hz ), .B(n933), .Z(n470)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_4.init = 16'h6666;
    FD1S3IX \Counter.Counter3Hz_185__i0  (.D(n30[0]), .CK(N_7), .CD(n933), 
            .Q(n52[0]));
    defparam \Counter.Counter3Hz_185__i0 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_187__i0  (.D(n34[0]), .CK(N_7), .CD(n932), 
            .Q(n59[0]));
    defparam \Counter.Counter1Hz_187__i0 .GSR = "DISABLED";
    LUT4 i1613_3_lut (.A(\Counter.Counter1Hz [6]), .B(\Counter.Counter1Hz [5]), 
         .C(n2388), .Z(n34[6])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1613_3_lut.init = 16'h6a6a;
    LUT4 i1744_2_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n30[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1744_2_lut.init = 16'h6666;
    LUT4 i1578_2_lut (.A(n59[1]), .B(n59[0]), .Z(n34[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1578_2_lut.init = 16'h6666;
    LUT4 i1592_2_lut_3_lut_4_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [2]), .Z(n34[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1592_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1588_2_lut_rep_21_3_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [2]), 
         .Z(n2390)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1588_2_lut_rep_21_3_lut.init = 16'h8080;
    LUT4 i1585_2_lut_3_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [2]), 
         .Z(n34[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1585_2_lut_3_lut.init = 16'h7878;
    LUT4 i1602_2_lut_3_lut_rep_19_4_lut (.A(\Counter.Counter1Hz [2]), .B(n2395), 
         .C(\Counter.Counter1Hz [4]), .D(\Counter.Counter1Hz [3]), .Z(n2388)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1602_2_lut_3_lut_rep_19_4_lut.init = 16'h8000;
    LUT4 i1581_2_lut_rep_26 (.A(n59[1]), .B(n59[0]), .Z(n2395)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1581_2_lut_rep_26.init = 16'h8888;
    LUT4 i1599_2_lut_3_lut_4_lut (.A(\Counter.Counter1Hz [2]), .B(n2395), 
         .C(\Counter.Counter1Hz [4]), .D(\Counter.Counter1Hz [3]), .Z(n34[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1599_2_lut_3_lut_4_lut.init = 16'h78f0;
    CT CTInst0 (.ClkOsc(ClkOsc), .VCC_net(VCC_net), .N_7(N_7), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;
    
endmodule
//
// Verilog Description of module CT
//

module CT (ClkOsc, VCC_net, N_7, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input ClkOsc;
    input VCC_net;
    output N_7;
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
        .PLL1ACKI(GND_net), .TCOC(N_7)) /* synthesis syn_instantiated=1 */ ;   // d:/dt/stoppuhr/clkgen.vhd(89[11:36])
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
// Verilog Description of module Dek1Z_U1
//

module Dek1Z_U1 (cnt, n258, n2212, n2215, N_1, N_2, n584, \cnt[1]_adj_4 , 
            \cnt[1]_adj_5 , \dec.cnt[1] , \cnt[1]_adj_6 , EN_c, n2218, 
            \cnt[0]_adj_7 , n4, RES_c, \cnt[3]_adj_8 , \cnt[3]_adj_9 , 
            \cnt[3]_adj_10 , \cnt[0]_adj_11 , \cnt[0]_adj_12 );
    output [3:0]cnt;
    input n258;
    output n2212;
    output n2215;
    output N_1;
    input N_2;
    output n584;
    input \cnt[1]_adj_4 ;
    input \cnt[1]_adj_5 ;
    input \dec.cnt[1] ;
    input \cnt[1]_adj_6 ;
    input EN_c;
    output n2218;
    input \cnt[0]_adj_7 ;
    output n4;
    input RES_c;
    input \cnt[3]_adj_8 ;
    input \cnt[3]_adj_9 ;
    input \cnt[3]_adj_10 ;
    input \cnt[0]_adj_11 ;
    input \cnt[0]_adj_12 ;
    
    wire [3:0]cnt_c;   // d:/dt/stoppuhr/dec1counter.vhd(18[8:11])
    
    wire n2393, n2210, n2211, n2213, n2214, n19, n2217, n2216, 
        n1090;
    wire [3:0]n22;
    
    LUT4 i2_3_lut_rep_24 (.A(cnt[2]), .B(cnt_c[1]), .C(cnt_c[0]), .Z(n2393)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_24.init = 16'hfefe;
    PFUMX i1906 (.BLUT(n2210), .ALUT(n2211), .C0(n258), .Z(n2212));
    PFUMX i1909 (.BLUT(n2213), .ALUT(n2214), .C0(n258), .Z(n2215));
    FD1P3AX Cout_18 (.D(n19), .SP(n584), .CK(N_2), .Q(N_1));
    defparam Cout_18.GSR = "DISABLED";
    LUT4 i1911_3_lut (.A(\cnt[1]_adj_4 ), .B(\cnt[1]_adj_5 ), .C(\dec.cnt[1] ), 
         .Z(n2217)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1911_3_lut.init = 16'hcaca;
    LUT4 i1910_3_lut (.A(\cnt[1]_adj_6 ), .B(cnt_c[1]), .C(\dec.cnt[1] ), 
         .Z(n2216)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1910_3_lut.init = 16'hcaca;
    FD1P3IX cnt_181__i0 (.D(n22[0]), .SP(EN_c), .CD(n1090), .CK(N_2), 
            .Q(cnt_c[0]));
    defparam cnt_181__i0.GSR = "ENABLED";
    LUT4 i1655_1_lut (.A(cnt_c[0]), .Z(n22[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1655_1_lut.init = 16'h5555;
    LUT4 i2_3_lut (.A(cnt_c[3]), .B(EN_c), .C(n2393), .Z(n1090)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    FD1P3IX cnt_181__i1 (.D(n22[1]), .SP(EN_c), .CD(n1090), .CK(N_2), 
            .Q(cnt_c[1]));
    defparam cnt_181__i1.GSR = "ENABLED";
    FD1P3IX cnt_181__i2 (.D(n22[2]), .SP(EN_c), .CD(n1090), .CK(N_2), 
            .Q(cnt[2]));
    defparam cnt_181__i2.GSR = "ENABLED";
    FD1P3IX cnt_181__i3 (.D(n22[3]), .SP(EN_c), .CD(n1090), .CK(N_2), 
            .Q(cnt_c[3]));
    defparam cnt_181__i3.GSR = "ENABLED";
    LUT4 i1657_2_lut (.A(cnt_c[1]), .B(cnt_c[0]), .Z(n22[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1657_2_lut.init = 16'h6666;
    PFUMX i1912 (.BLUT(n2216), .ALUT(n2217), .C0(n258), .Z(n2218));
    LUT4 i1_2_lut (.A(\cnt[0]_adj_7 ), .B(\cnt[1]_adj_5 ), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_2 (.A(EN_c), .B(RES_c), .Z(n584)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_2.init = 16'h2222;
    LUT4 i1908_3_lut (.A(\cnt[3]_adj_8 ), .B(\cnt[3]_adj_9 ), .C(\dec.cnt[1] ), 
         .Z(n2214)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1908_3_lut.init = 16'hcaca;
    LUT4 i1907_3_lut (.A(\cnt[3]_adj_10 ), .B(cnt_c[3]), .C(\dec.cnt[1] ), 
         .Z(n2213)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1907_3_lut.init = 16'hcaca;
    LUT4 i1671_3_lut_4_lut (.A(cnt_c[1]), .B(cnt_c[0]), .C(cnt[2]), .D(cnt_c[3]), 
         .Z(n22[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1671_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1664_2_lut_3_lut (.A(cnt_c[1]), .B(cnt_c[0]), .C(cnt[2]), .Z(n22[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1664_2_lut_3_lut.init = 16'h7878;
    LUT4 i1905_3_lut (.A(\cnt[0]_adj_11 ), .B(\cnt[0]_adj_7 ), .C(\dec.cnt[1] ), 
         .Z(n2211)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1905_3_lut.init = 16'hcaca;
    LUT4 i1904_3_lut (.A(\cnt[0]_adj_12 ), .B(cnt_c[0]), .C(\dec.cnt[1] ), 
         .Z(n2210)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1904_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut (.A(cnt[2]), .B(cnt_c[1]), .C(cnt_c[0]), .D(cnt_c[3]), 
         .Z(n19)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfe00;
    
endmodule
//
// Verilog Description of module Dek1Z_U0
//

module Dek1Z_U0 (N_2, N_3, n584, cnt, EN_c);
    output N_2;
    input N_3;
    input n584;
    output [3:0]cnt;
    input EN_c;
    
    
    wire n19;
    wire [3:0]n22;
    
    wire n939;
    
    FD1P3AX Cout_18 (.D(n19), .SP(n584), .CK(N_3), .Q(N_2));
    defparam Cout_18.GSR = "DISABLED";
    LUT4 i1684_1_lut (.A(cnt[0]), .Z(n22[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1684_1_lut.init = 16'h5555;
    LUT4 i712_2_lut (.A(EN_c), .B(n19), .Z(n939)) /* synthesis lut_function=(A (B)) */ ;
    defparam i712_2_lut.init = 16'h8888;
    LUT4 i1700_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .D(cnt[3]), 
         .Z(n22[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1700_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX cnt_182__i0 (.D(n22[0]), .SP(EN_c), .CD(n939), .CK(N_3), 
            .Q(cnt[0]));
    defparam cnt_182__i0.GSR = "ENABLED";
    LUT4 i1693_2_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .Z(n22[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1693_2_lut_3_lut.init = 16'h7878;
    FD1P3IX cnt_182__i1 (.D(n22[1]), .SP(EN_c), .CD(n939), .CK(N_3), 
            .Q(cnt[1]));
    defparam cnt_182__i1.GSR = "ENABLED";
    FD1P3IX cnt_182__i2 (.D(n22[2]), .SP(EN_c), .CD(n939), .CK(N_3), 
            .Q(cnt[2]));
    defparam cnt_182__i2.GSR = "ENABLED";
    LUT4 i1686_2_lut (.A(cnt[1]), .B(cnt[0]), .Z(n22[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1686_2_lut.init = 16'h6666;
    LUT4 i1300_4_lut (.A(cnt[2]), .B(cnt[3]), .C(cnt[0]), .D(cnt[1]), 
         .Z(n19)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1300_4_lut.init = 16'hccc8;
    FD1P3IX cnt_182__i3 (.D(n22[3]), .SP(EN_c), .CD(n939), .CK(N_3), 
            .Q(cnt[3]));
    defparam cnt_182__i3.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module mux4
//

module mux4 (GND_net, SEG, \dec.cnt[1] , RES_c, n2212, n467, n468, 
            n2218, n466, n2392, n462, n463, N_7, n464, \cnt[2] , 
            \cnt[2]_adj_1 , \cnt[2]_adj_2 , \cnt[2]_adj_3 , n258, n2215, 
            n465);
    input GND_net;
    output [3:0]SEG;
    output \dec.cnt[1] ;
    input RES_c;
    input n2212;
    output n467;
    output n468;
    input n2218;
    output n466;
    output n2392;
    output n462;
    output n463;
    input N_7;
    output n464;
    input \cnt[2] ;
    input \cnt[2]_adj_1 ;
    input \cnt[2]_adj_2 ;
    input \cnt[2]_adj_3 ;
    output n258;
    input n2215;
    output n465;
    
    wire [31:0]\dec.cnt ;   // d:/dt/stoppuhr/sg7mux.vhd(20[11:14])
    wire [3:0]s;   // d:/dt/stoppuhr/stp/stopw.v(15[14:15])
    
    wire n2048;
    wire [31:0]n134;
    
    wire n2049, n14, n17, n20, n2387, n35, n54, n48, n36, 
        n56, n2047, n2042, n2043, n43, n2040, n2041, n52, n44, 
        n2152, n2039, n2044, n2045, n2394, n2038, n2037, n931, 
        n2046, n2036, n32, n46, n40, n50, n2051, n2050;
    
    CCU2D \dec.cnt_179_add_4_27  (.A0(\dec.cnt [25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2048), .COUT(n2049), .S0(n134[25]), .S1(n134[26]));
    defparam \dec.cnt_179_add_4_27 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_27 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_27 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_27 .INJECT1_1 = "NO";
    PFUMX i31 (.BLUT(n14), .ALUT(n17), .C0(\dec.cnt [0]), .Z(n20));
    LUT4 mux_116_i3_4_lut (.A(SEG[2]), .B(\dec.cnt[1] ), .C(n2387), .D(\dec.cnt [0]), 
         .Z(SEG[2])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;
    defparam mux_116_i3_4_lut.init = 16'ha3a0;
    LUT4 i27_4_lut (.A(n35), .B(n54), .C(n48), .D(n36), .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27_4_lut.init = 16'hfffe;
    CCU2D \dec.cnt_179_add_4_25  (.A0(\dec.cnt [23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2047), .COUT(n2048), .S0(n134[23]), .S1(n134[24]));
    defparam \dec.cnt_179_add_4_25 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_25 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_25 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_25 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_179_add_4_15  (.A0(\dec.cnt [13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2042), .COUT(n2043), .S0(n134[13]), .S1(n134[14]));
    defparam \dec.cnt_179_add_4_15 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_15 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_15 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_15 .INJECT1_1 = "NO";
    LUT4 i14_2_lut (.A(\dec.cnt [9]), .B(\dec.cnt [2]), .Z(n43)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14_2_lut.init = 16'heeee;
    LUT4 mux_104_i1_4_lut_4_lut (.A(RES_c), .B(n2212), .C(n2387), .D(s[0]), 
         .Z(s[0])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_104_i1_4_lut_4_lut.init = 16'hf404;
    CCU2D \dec.cnt_179_add_4_11  (.A0(\dec.cnt [9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2040), .COUT(n2041), .S0(n134[9]), .S1(n134[10]));
    defparam \dec.cnt_179_add_4_11 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_11 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_11 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_11 .INJECT1_1 = "NO";
    LUT4 i28_4_lut (.A(n43), .B(n56), .C(n52), .D(n44), .Z(n2152)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i28_4_lut.init = 16'hfffe;
    CCU2D \dec.cnt_179_add_4_9  (.A0(\dec.cnt [7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2039), .COUT(n2040), .S0(n134[7]), .S1(n134[8]));
    defparam \dec.cnt_179_add_4_9 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_9 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_9 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_9 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_179_add_4_19  (.A0(\dec.cnt [17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2044), .COUT(n2045), .S0(n134[17]), .S1(n134[18]));
    defparam \dec.cnt_179_add_4_19 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_19 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_19 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_19 .INJECT1_1 = "NO";
    LUT4 mux_116_i2_4_lut (.A(SEG[1]), .B(\dec.cnt[1] ), .C(n2387), .D(\dec.cnt [0]), 
         .Z(SEG[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;
    defparam mux_116_i2_4_lut.init = 16'ha0ac;
    LUT4 s_0__bdd_4_lut (.A(s[0]), .B(s[2]), .C(s[1]), .D(s[3]), .Z(n467)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (B+((D)+!C))) */ ;
    defparam s_0__bdd_4_lut.init = 16'hf74d;
    LUT4 mux_104_i3_4_lut_4_lut (.A(RES_c), .B(n20), .C(n2387), .D(s[2]), 
         .Z(s[2])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_104_i3_4_lut_4_lut.init = 16'hf404;
    LUT4 mux_116_i4_4_lut (.A(SEG[3]), .B(\dec.cnt[1] ), .C(n2387), .D(\dec.cnt [0]), 
         .Z(SEG[3])) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+(C+(D)))) */ ;
    defparam mux_116_i4_4_lut.init = 16'ha0a3;
    LUT4 i25_4_lut (.A(s[2]), .B(s[3]), .C(s[0]), .D(s[1]), .Z(n468)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A (B+(D))) */ ;
    defparam i25_4_lut.init = 16'hdfe6;
    LUT4 mux_104_i2_4_lut_4_lut (.A(RES_c), .B(n2218), .C(n2387), .D(s[1]), 
         .Z(s[1])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_104_i2_4_lut_4_lut.init = 16'hf404;
    LUT4 mux_116_i1_3_lut_4_lut (.A(\dec.cnt [31]), .B(n2152), .C(n2394), 
         .D(SEG[0]), .Z(SEG[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_116_i1_3_lut_4_lut.init = 16'hfe10;
    CCU2D \dec.cnt_179_add_4_7  (.A0(\dec.cnt [5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2038), .COUT(n2039), .S0(n134[5]), .S1(n134[6]));
    defparam \dec.cnt_179_add_4_7 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_7 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_7 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_7 .INJECT1_1 = "NO";
    LUT4 s_2__bdd_4_lut (.A(s[2]), .B(s[1]), .C(s[3]), .D(s[0]), .Z(n466)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam s_2__bdd_4_lut.init = 16'he0fd;
    LUT4 i166_1_lut_rep_23 (.A(RES_c), .Z(n2392)) /* synthesis lut_function=(!(A)) */ ;
    defparam i166_1_lut_rep_23.init = 16'h5555;
    LUT4 s_1__bdd_4_lut_2005 (.A(s[1]), .B(s[3]), .C(s[0]), .D(s[2]), 
         .Z(n462)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (C (D))+!B !(C (D)+!C !(D)))) */ ;
    defparam s_1__bdd_4_lut_2005.init = 16'hbe6f;
    LUT4 i1960_4_lut_4_lut (.A(s[2]), .B(s[3]), .C(s[0]), .D(s[1]), 
         .Z(n463)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A (B (C (D))))) */ ;
    defparam i1960_4_lut_4_lut.init = 16'h35d7;
    LUT4 i1_2_lut_rep_18 (.A(\dec.cnt [31]), .B(n2152), .Z(n2387)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_18.init = 16'heeee;
    CCU2D \dec.cnt_179_add_4_5  (.A0(\dec.cnt [3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2037), .COUT(n2038), .S0(n134[3]), .S1(n134[4]));
    defparam \dec.cnt_179_add_4_5 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_5 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_5 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_5 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_179_add_4_17  (.A0(\dec.cnt [15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2043), .COUT(n2044), .S0(n134[15]), .S1(n134[16]));
    defparam \dec.cnt_179_add_4_17 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_17 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_17 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_17 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_179_add_4_13  (.A0(\dec.cnt [11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2041), .COUT(n2042), .S0(n134[11]), .S1(n134[12]));
    defparam \dec.cnt_179_add_4_13 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_13 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_13 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_13 .INJECT1_1 = "NO";
    FD1S3IX \dec.cnt_179__i0  (.D(n134[0]), .CK(N_7), .CD(n931), .Q(\dec.cnt [0]));
    defparam \dec.cnt_179__i0 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i31  (.D(n134[31]), .CK(N_7), .CD(n931), .Q(\dec.cnt [31]));
    defparam \dec.cnt_179__i31 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i30  (.D(n134[30]), .CK(N_7), .CD(n931), .Q(\dec.cnt [30]));
    defparam \dec.cnt_179__i30 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i29  (.D(n134[29]), .CK(N_7), .CD(n931), .Q(\dec.cnt [29]));
    defparam \dec.cnt_179__i29 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i28  (.D(n134[28]), .CK(N_7), .CD(n931), .Q(\dec.cnt [28]));
    defparam \dec.cnt_179__i28 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i27  (.D(n134[27]), .CK(N_7), .CD(n931), .Q(\dec.cnt [27]));
    defparam \dec.cnt_179__i27 .GSR = "DISABLED";
    CCU2D \dec.cnt_179_add_4_21  (.A0(\dec.cnt [19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2045), .COUT(n2046), .S0(n134[19]), .S1(n134[20]));
    defparam \dec.cnt_179_add_4_21 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_21 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_21 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_21 .INJECT1_1 = "NO";
    FD1S3IX \dec.cnt_179__i26  (.D(n134[26]), .CK(N_7), .CD(n931), .Q(\dec.cnt [26]));
    defparam \dec.cnt_179__i26 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i25  (.D(n134[25]), .CK(N_7), .CD(n931), .Q(\dec.cnt [25]));
    defparam \dec.cnt_179__i25 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i24  (.D(n134[24]), .CK(N_7), .CD(n931), .Q(\dec.cnt [24]));
    defparam \dec.cnt_179__i24 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i23  (.D(n134[23]), .CK(N_7), .CD(n931), .Q(\dec.cnt [23]));
    defparam \dec.cnt_179__i23 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i22  (.D(n134[22]), .CK(N_7), .CD(n931), .Q(\dec.cnt [22]));
    defparam \dec.cnt_179__i22 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i21  (.D(n134[21]), .CK(N_7), .CD(n931), .Q(\dec.cnt [21]));
    defparam \dec.cnt_179__i21 .GSR = "DISABLED";
    LUT4 s_1__bdd_4_lut_2006 (.A(s[1]), .B(s[3]), .C(s[0]), .D(s[2]), 
         .Z(n464)) /* synthesis lut_function=(!(A (B (D)+!B !(C+(D)))+!A !((C+!(D))+!B))) */ ;
    defparam s_1__bdd_4_lut_2006.init = 16'h73fd;
    FD1S3IX \dec.cnt_179__i20  (.D(n134[20]), .CK(N_7), .CD(n931), .Q(\dec.cnt [20]));
    defparam \dec.cnt_179__i20 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i19  (.D(n134[19]), .CK(N_7), .CD(n931), .Q(\dec.cnt [19]));
    defparam \dec.cnt_179__i19 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i18  (.D(n134[18]), .CK(N_7), .CD(n931), .Q(\dec.cnt [18]));
    defparam \dec.cnt_179__i18 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i17  (.D(n134[17]), .CK(N_7), .CD(n931), .Q(\dec.cnt [17]));
    defparam \dec.cnt_179__i17 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i16  (.D(n134[16]), .CK(N_7), .CD(n931), .Q(\dec.cnt [16]));
    defparam \dec.cnt_179__i16 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i15  (.D(n134[15]), .CK(N_7), .CD(n931), .Q(\dec.cnt [15]));
    defparam \dec.cnt_179__i15 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i14  (.D(n134[14]), .CK(N_7), .CD(n931), .Q(\dec.cnt [14]));
    defparam \dec.cnt_179__i14 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i13  (.D(n134[13]), .CK(N_7), .CD(n931), .Q(\dec.cnt [13]));
    defparam \dec.cnt_179__i13 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i12  (.D(n134[12]), .CK(N_7), .CD(n931), .Q(\dec.cnt [12]));
    defparam \dec.cnt_179__i12 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i11  (.D(n134[11]), .CK(N_7), .CD(n931), .Q(\dec.cnt [11]));
    defparam \dec.cnt_179__i11 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i10  (.D(n134[10]), .CK(N_7), .CD(n931), .Q(\dec.cnt [10]));
    defparam \dec.cnt_179__i10 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i9  (.D(n134[9]), .CK(N_7), .CD(n931), .Q(\dec.cnt [9]));
    defparam \dec.cnt_179__i9 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i8  (.D(n134[8]), .CK(N_7), .CD(n931), .Q(\dec.cnt [8]));
    defparam \dec.cnt_179__i8 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i7  (.D(n134[7]), .CK(N_7), .CD(n931), .Q(\dec.cnt [7]));
    defparam \dec.cnt_179__i7 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i6  (.D(n134[6]), .CK(N_7), .CD(n931), .Q(\dec.cnt [6]));
    defparam \dec.cnt_179__i6 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i5  (.D(n134[5]), .CK(N_7), .CD(n931), .Q(\dec.cnt [5]));
    defparam \dec.cnt_179__i5 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i4  (.D(n134[4]), .CK(N_7), .CD(n931), .Q(\dec.cnt [4]));
    defparam \dec.cnt_179__i4 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i3  (.D(n134[3]), .CK(N_7), .CD(n931), .Q(\dec.cnt [3]));
    defparam \dec.cnt_179__i3 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i2  (.D(n134[2]), .CK(N_7), .CD(n931), .Q(\dec.cnt [2]));
    defparam \dec.cnt_179__i2 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_179__i1  (.D(n134[1]), .CK(N_7), .CD(n931), .Q(\dec.cnt[1] ));
    defparam \dec.cnt_179__i1 .GSR = "DISABLED";
    LUT4 i32_3_lut (.A(\cnt[2] ), .B(\cnt[2]_adj_1 ), .C(\dec.cnt[1] ), 
         .Z(n17)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32_3_lut.init = 16'hcaca;
    LUT4 i33_3_lut (.A(\cnt[2]_adj_2 ), .B(\cnt[2]_adj_3 ), .C(\dec.cnt[1] ), 
         .Z(n14)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i33_3_lut.init = 16'hcaca;
    CCU2D \dec.cnt_179_add_4_3  (.A0(\dec.cnt[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2036), .COUT(n2037), .S0(n134[1]), .S1(n134[2]));
    defparam \dec.cnt_179_add_4_3 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_3 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_3 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_3 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_179_add_4_1  (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2036), .S1(n134[0]));
    defparam \dec.cnt_179_add_4_1 .INIT0 = 16'hF000;
    defparam \dec.cnt_179_add_4_1 .INIT1 = 16'h0555;
    defparam \dec.cnt_179_add_4_1 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_1 .INJECT1_1 = "NO";
    LUT4 i3_2_lut (.A(\dec.cnt [16]), .B(\dec.cnt [24]), .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i17_4_lut (.A(\dec.cnt [6]), .B(\dec.cnt [10]), .C(\dec.cnt [3]), 
         .D(\dec.cnt [13]), .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i11_2_lut (.A(\dec.cnt [25]), .B(\dec.cnt [17]), .Z(n40)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11_2_lut.init = 16'heeee;
    LUT4 i21_4_lut (.A(\dec.cnt [21]), .B(\dec.cnt [22]), .C(\dec.cnt [26]), 
         .D(\dec.cnt [20]), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(\dec.cnt [23]), .B(\dec.cnt [28]), .Z(n36)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i19_4_lut (.A(\dec.cnt [18]), .B(\dec.cnt [19]), .C(\dec.cnt [5]), 
         .D(\dec.cnt [14]), .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19_4_lut.init = 16'hfffe;
    CCU2D \dec.cnt_179_add_4_23  (.A0(\dec.cnt [21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2046), .COUT(n2047), .S0(n134[21]), .S1(n134[22]));
    defparam \dec.cnt_179_add_4_23 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_23 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_23 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_23 .INJECT1_1 = "NO";
    LUT4 i25_4_lut_adj_1 (.A(\dec.cnt [11]), .B(n50), .C(n40), .D(\dec.cnt [27]), 
         .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i25_4_lut_adj_1.init = 16'hfffe;
    LUT4 i1278_2_lut (.A(RES_c), .B(\dec.cnt [0]), .Z(n258)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1278_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_4_lut (.A(\dec.cnt[1] ), .B(\dec.cnt [0]), .C(n2152), 
         .D(\dec.cnt [31]), .Z(n931)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h00f8;
    LUT4 i1_2_lut_rep_25 (.A(\dec.cnt[1] ), .B(\dec.cnt [0]), .Z(n2394)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_25.init = 16'h8888;
    LUT4 i6_2_lut (.A(\dec.cnt [7]), .B(\dec.cnt [29]), .Z(n35)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i12_4_lut_4_lut (.A(RES_c), .B(n2215), .C(n2387), .D(s[3]), 
         .Z(s[3])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i12_4_lut_4_lut.init = 16'hf404;
    LUT4 s_1__bdd_4_lut (.A(s[1]), .B(s[3]), .C(s[2]), .D(s[0]), .Z(n465)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A !(B+(C (D)+!C !(D))))) */ ;
    defparam s_1__bdd_4_lut.init = 16'h5ee7;
    LUT4 i15_3_lut (.A(\dec.cnt [4]), .B(\dec.cnt [8]), .C(\dec.cnt [12]), 
         .Z(n44)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i15_3_lut.init = 16'hfefe;
    LUT4 i23_4_lut (.A(\dec.cnt [30]), .B(n46), .C(n32), .D(\dec.cnt [15]), 
         .Z(n52)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23_4_lut.init = 16'hfffe;
    CCU2D \dec.cnt_179_add_4_33  (.A0(\dec.cnt [31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2051), .S0(n134[31]));
    defparam \dec.cnt_179_add_4_33 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_33 .INIT1 = 16'h0000;
    defparam \dec.cnt_179_add_4_33 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_33 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_179_add_4_31  (.A0(\dec.cnt [29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2050), .COUT(n2051), .S0(n134[29]), .S1(n134[30]));
    defparam \dec.cnt_179_add_4_31 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_31 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_31 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_31 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_179_add_4_29  (.A0(\dec.cnt [27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2049), .COUT(n2050), .S0(n134[27]), .S1(n134[28]));
    defparam \dec.cnt_179_add_4_29 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_29 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_179_add_4_29 .INJECT1_0 = "NO";
    defparam \dec.cnt_179_add_4_29 .INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module Dek1Z_U2
//

module Dek1Z_U2 (EN_c, cnt, n4, N_1);
    input EN_c;
    output [3:0]cnt;
    input n4;
    input N_1;
    
    
    wire n946;
    wire [3:0]n22;
    
    LUT4 i710_4_lut (.A(EN_c), .B(cnt[2]), .C(cnt[3]), .D(n4), .Z(n946)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i710_4_lut.init = 16'ha080;
    LUT4 i1626_1_lut (.A(cnt[0]), .Z(n22[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1626_1_lut.init = 16'h5555;
    LUT4 i1628_2_lut (.A(cnt[1]), .B(cnt[0]), .Z(n22[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1628_2_lut.init = 16'h6666;
    FD1P3IX cnt_180__i3 (.D(n22[3]), .SP(EN_c), .CD(n946), .CK(N_1), 
            .Q(cnt[3]));
    defparam cnt_180__i3.GSR = "ENABLED";
    FD1P3IX cnt_180__i2 (.D(n22[2]), .SP(EN_c), .CD(n946), .CK(N_1), 
            .Q(cnt[2]));
    defparam cnt_180__i2.GSR = "ENABLED";
    FD1P3IX cnt_180__i1 (.D(n22[1]), .SP(EN_c), .CD(n946), .CK(N_1), 
            .Q(cnt[1]));
    defparam cnt_180__i1.GSR = "ENABLED";
    FD1P3IX cnt_180__i0 (.D(n22[0]), .SP(EN_c), .CD(n946), .CK(N_1), 
            .Q(cnt[0]));
    defparam cnt_180__i0.GSR = "ENABLED";
    LUT4 i1635_2_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .Z(n22[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1635_2_lut_3_lut.init = 16'h7878;
    LUT4 i1642_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .D(cnt[3]), 
         .Z(n22[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1642_3_lut_4_lut.init = 16'h7f80;
    
endmodule
//
// Verilog Description of module Dek1Z
//

module Dek1Z (cnt, EN_c, D15_c, N_3, n584);
    output [3:0]cnt;
    input EN_c;
    input D15_c;
    output N_3;
    input n584;
    
    
    wire n19;
    wire [3:0]n22;
    
    wire n936;
    
    LUT4 i1296_4_lut (.A(cnt[2]), .B(cnt[3]), .C(cnt[0]), .D(cnt[1]), 
         .Z(n19)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1296_4_lut.init = 16'hccc8;
    LUT4 i1715_2_lut (.A(cnt[1]), .B(cnt[0]), .Z(n22[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1715_2_lut.init = 16'h6666;
    LUT4 i713_2_lut (.A(EN_c), .B(n19), .Z(n936)) /* synthesis lut_function=(A (B)) */ ;
    defparam i713_2_lut.init = 16'h8888;
    FD1P3IX cnt_183__i1 (.D(n22[1]), .SP(EN_c), .CD(n936), .CK(D15_c), 
            .Q(cnt[1]));
    defparam cnt_183__i1.GSR = "ENABLED";
    FD1P3IX cnt_183__i2 (.D(n22[2]), .SP(EN_c), .CD(n936), .CK(D15_c), 
            .Q(cnt[2]));
    defparam cnt_183__i2.GSR = "ENABLED";
    FD1P3IX cnt_183__i3 (.D(n22[3]), .SP(EN_c), .CD(n936), .CK(D15_c), 
            .Q(cnt[3]));
    defparam cnt_183__i3.GSR = "ENABLED";
    FD1P3IX cnt_183__i0 (.D(n22[0]), .SP(EN_c), .CD(n936), .CK(D15_c), 
            .Q(cnt[0]));
    defparam cnt_183__i0.GSR = "ENABLED";
    LUT4 i1713_1_lut (.A(cnt[0]), .Z(n22[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1713_1_lut.init = 16'h5555;
    FD1P3AX Cout_18 (.D(n19), .SP(n584), .CK(D15_c), .Q(N_3));
    defparam Cout_18.GSR = "DISABLED";
    LUT4 i1729_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .D(cnt[3]), 
         .Z(n22[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1729_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1722_2_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .Z(n22[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1722_2_lut_3_lut.init = 16'h7878;
    
endmodule
