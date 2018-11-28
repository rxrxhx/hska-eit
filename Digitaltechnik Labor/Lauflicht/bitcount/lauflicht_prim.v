// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Fri Jun 01 15:33:10 2018
//
// Verilog Description of module lauflicht
//

module lauflicht (LED, MLEFT, MRIGHT, TLEFT, TRIGHT, RES, DIR, 
            D14, D15);   // d:/dt/bitcount4.vhd(6[8:17])
    output [3:0]LED;   // d:/dt/bitcount4.vhd(8[3:6])
    input [1:0]MLEFT;   // d:/dt/bitcount4.vhd(10[3:8])
    input [1:0]MRIGHT;   // d:/dt/bitcount4.vhd(11[3:9])
    input TLEFT;   // d:/dt/bitcount4.vhd(12[3:8])
    input TRIGHT;   // d:/dt/bitcount4.vhd(13[3:9])
    input RES;   // d:/dt/bitcount4.vhd(14[3:6])
    input DIR;   // d:/dt/bitcount4.vhd(14[8:11])
    output D14;   // d:/dt/bitcount4.vhd(15[3:6])
    output D15;   // d:/dt/bitcount4.vhd(15[8:11])
    
    wire GND_net;   // d:/dt/ct.vhd(26[12:21])
    wire VCC_net;   // d:/dt/ct.vhd(17[9:16])
    wire [3:0]LED_c;   // d:/dt/bitcount4.vhd(8[3:6])
    wire [1:0]MLEFT_c;   // d:/dt/bitcount4.vhd(10[3:8])
    wire [1:0]MRIGHT_c;   // d:/dt/bitcount4.vhd(11[3:9])
    wire TLEFT_c;   // d:/dt/bitcount4.vhd(12[3:8])
    wire TRIGHT_c;   // d:/dt/bitcount4.vhd(13[3:9])
    wire RES_c;   // d:/dt/bitcount4.vhd(14[3:6])
    wire DIR_c;   // d:/dt/bitcount4.vhd(14[8:11])
    wire D14_c;   // d:/dt/bitcount4.vhd(15[3:6])
    wire D15_c;   // d:/dt/bitcount4.vhd(15[8:11])
    
    wire n364, n394;
    wire [3:0]n22;
    
    wire n386, n363, n120;
    
    VHI i2 (.Z(VCC_net));
    OB LED_pad_0 (.I(LED_c[0]), .O(LED[0]));
    OB LED_pad_1 (.I(LED_c[1]), .O(LED[1]));
    OB LED_pad_2 (.I(LED_c[2]), .O(LED[2]));
    OB D14_pad (.I(D14_c), .O(D14));
    FD1S3AX count4bit_36__i3 (.D(n386), .CK(D14_c), .Q(LED_c[3]));
    defparam count4bit_36__i3.GSR = "ENABLED";
    ClkGen Clock (.GND_net(GND_net), .MRIGHT({MRIGHT_c}), .D15_c(D15_c), 
           .MLEFT({MLEFT_c}), .TLEFT_c(TLEFT_c), .D14_c(D14_c), .TRIGHT_c(TRIGHT_c), 
           .VCC_net(VCC_net));
    LUT4 i75_1_lut (.A(RES_c), .Z(n120)) /* synthesis lut_function=(!(A)) */ ;
    defparam i75_1_lut.init = 16'h5555;
    LUT4 i2_3_lut (.A(LED_c[1]), .B(DIR_c), .C(LED_c[0]), .Z(n364)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i2_3_lut.init = 16'h9696;
    OB LED_pad_3 (.I(LED_c[3]), .O(LED[3]));
    FD1S3AX count4bit_36__i2 (.D(n363), .CK(D14_c), .Q(LED_c[2]));
    defparam count4bit_36__i2.GSR = "ENABLED";
    FD1S3AX count4bit_36__i1 (.D(n364), .CK(D14_c), .Q(LED_c[1]));
    defparam count4bit_36__i1.GSR = "ENABLED";
    FD1S3AX count4bit_36__i0 (.D(n22[0]), .CK(D14_c), .Q(LED_c[0]));
    defparam count4bit_36__i0.GSR = "ENABLED";
    LUT4 n96_bdd_4_lut (.A(LED_c[3]), .B(DIR_c), .C(LED_c[2]), .D(n394), 
         .Z(n386)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A !(B (C+(D))+!B !(C (D)))) */ ;
    defparam n96_bdd_4_lut.init = 16'h9aa6;
    VLO i1 (.Z(GND_net));
    GSR GSR_INST (.GSR(n120));
    LUT4 i194_1_lut (.A(LED_c[0]), .Z(n22[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i194_1_lut.init = 16'h5555;
    OB D15_pad (.I(D15_c), .O(D15));
    IB MLEFT_pad_1 (.I(MLEFT[1]), .O(MLEFT_c[1]));
    IB MLEFT_pad_0 (.I(MLEFT[0]), .O(MLEFT_c[0]));
    IB MRIGHT_pad_1 (.I(MRIGHT[1]), .O(MRIGHT_c[1]));
    IB MRIGHT_pad_0 (.I(MRIGHT[0]), .O(MRIGHT_c[0]));
    IB TLEFT_pad (.I(TLEFT), .O(TLEFT_c));
    IB TRIGHT_pad (.I(TRIGHT), .O(TRIGHT_c));
    IB RES_pad (.I(RES), .O(RES_c));
    IB DIR_pad (.I(DIR), .O(DIR_c));
    LUT4 i2_3_lut_4_lut (.A(LED_c[1]), .B(LED_c[0]), .C(DIR_c), .D(LED_c[2]), 
         .Z(n363)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'he718;
    LUT4 i201_4_lut_3_lut_rep_4 (.A(LED_c[1]), .B(LED_c[0]), .C(DIR_c), 
         .Z(n394)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam i201_4_lut_3_lut_rep_4.init = 16'he8e8;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module ClkGen
//

module ClkGen (GND_net, MRIGHT, D15_c, MLEFT, TLEFT_c, D14_c, TRIGHT_c, 
            VCC_net);
    input GND_net;
    input [1:0]MRIGHT;
    output D15_c;
    input [1:0]MLEFT;
    input TLEFT_c;
    output D14_c;
    input TRIGHT_c;
    input VCC_net;
    
    wire [6:0]\Counter.Counter1Hz ;   // d:/dt/clkgen.vhd(99[11:21])
    wire \Counter.Clk1Hz ;   // d:/dt/clkgen.vhd(101[11:17])
    wire Clk200Hz;   // d:/dt/clkgen.vhd(63[4:12])
    wire \Counter.Clk03Hz ;   // d:/dt/clkgen.vhd(102[11:18])
    wire Clk100Hz;   // d:/dt/clkgen.vhd(62[4:12])
    wire ClkOsc;   // d:/dt/clkgen.vhd(64[4:10])
    wire \Counter.Clk3Hz ;   // d:/dt/clkgen.vhd(100[11:17])
    wire [5:0]\Counter.Counter3Hz ;   // d:/dt/clkgen.vhd(98[11:21])
    wire [8:0]\Counter.Counter03Hz ;   // d:/dt/clkgen.vhd(97[11:22])
    wire [6:0]n59;
    wire [6:0]n34;
    
    wire n190, n4, n104, n71, n336, n380, n381, n384, n383, 
        n123;
    wire [8:0]n73;
    
    wire n122;
    wire [8:0]n42;
    
    wire n393;
    wire [5:0]n52;
    
    wire n121;
    wire [5:0]n30;
    
    wire n100, n391, n4_adj_4, n354, n355, n353, n356, n392, 
        n6_adj_5, n361;
    
    LUT4 i278_2_lut_3_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [2]), 
         .Z(n34[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i278_2_lut_3_lut.init = 16'h7878;
    LUT4 i285_2_lut_3_lut_4_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [2]), .Z(n34[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i285_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3AX \Counter.Clk1Hz_34  (.D(n190), .CK(Clk200Hz), .Q(\Counter.Clk1Hz ));
    defparam \Counter.Clk1Hz_34 .GSR = "DISABLED";
    LUT4 i1_2_lut (.A(\Counter.Counter1Hz [4]), .B(\Counter.Counter1Hz [3]), 
         .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S3AX \Counter.Clk03Hz_36  (.D(n104), .CK(Clk200Hz), .Q(\Counter.Clk03Hz ));
    defparam \Counter.Clk03Hz_36 .GSR = "DISABLED";
    FD1S3AX SigClk100Hz_37 (.D(n71), .CK(Clk200Hz), .Q(Clk100Hz));
    defparam SigClk100Hz_37.GSR = "DISABLED";
    LUT4 i299_2_lut (.A(\Counter.Counter1Hz [5]), .B(n336), .Z(n34[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i299_2_lut.init = 16'h6666;
    OSCH OscInst0 (.STDBY(GND_net), .OSC(ClkOsc)) /* synthesis syn_instantiated=1 */ ;   // d:/dt/bitcount4.vhd(25[11:39])
    defparam OscInst0.NOM_FREQ = "2.08";
    PFUMX i336 (.BLUT(n380), .ALUT(n381), .C0(MRIGHT[1]), .Z(D15_c));
    LUT4 i338_3_lut (.A(\Counter.Clk1Hz ), .B(\Counter.Clk3Hz ), .C(MLEFT[0]), 
         .Z(n384)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i338_3_lut.init = 16'hcaca;
    LUT4 i337_3_lut (.A(TLEFT_c), .B(\Counter.Clk03Hz ), .C(MLEFT[0]), 
         .Z(n383)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i337_3_lut.init = 16'hcaca;
    FD1S3IX \Counter.Counter1Hz_40__i0  (.D(n34[0]), .CK(Clk200Hz), .CD(n123), 
            .Q(n59[0]));
    defparam \Counter.Counter1Hz_40__i0 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_42__i0  (.D(n42[0]), .CK(Clk200Hz), .CD(n122), 
            .Q(n73[0]));
    defparam \Counter.Counter03Hz_42__i0 .GSR = "DISABLED";
    LUT4 i274_2_lut_rep_3 (.A(n59[1]), .B(n59[0]), .Z(n393)) /* synthesis lut_function=(A (B)) */ ;
    defparam i274_2_lut_rep_3.init = 16'h8888;
    FD1S3IX \Counter.Counter3Hz_38__i0  (.D(n30[0]), .CK(Clk200Hz), .CD(n121), 
            .Q(n52[0]));
    defparam \Counter.Counter3Hz_38__i0 .GSR = "DISABLED";
    LUT4 i226_1_lut (.A(n52[0]), .Z(n30[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i226_1_lut.init = 16'h5555;
    LUT4 i228_2_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n30[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i228_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_1 (.A(\Counter.Clk3Hz ), .B(n121), .Z(n100)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_1.init = 16'h6666;
    LUT4 i245_2_lut_3_lut_rep_1_4_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [3]), .D(\Counter.Counter3Hz [2]), .Z(n391)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i245_2_lut_3_lut_rep_1_4_lut.init = 16'h8000;
    LUT4 i19_1_lut (.A(Clk100Hz), .Z(n71)) /* synthesis lut_function=(!(A)) */ ;
    defparam i19_1_lut.init = 16'h5555;
    LUT4 i235_2_lut_3_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .C(\Counter.Counter3Hz [2]), 
         .Z(n30[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i235_2_lut_3_lut.init = 16'h7878;
    LUT4 i242_2_lut_3_lut_4_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [3]), .D(\Counter.Counter3Hz [2]), .Z(n30[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i242_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i256_3_lut (.A(\Counter.Counter3Hz [5]), .B(\Counter.Counter3Hz [4]), 
         .C(n391), .Z(n30[5])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i256_3_lut.init = 16'h6a6a;
    FD1S3IX \Counter.Counter1Hz_40__i6  (.D(n34[6]), .CK(Clk200Hz), .CD(n123), 
            .Q(\Counter.Counter1Hz [6]));
    defparam \Counter.Counter1Hz_40__i6 .GSR = "DISABLED";
    LUT4 i271_2_lut (.A(n59[1]), .B(n59[0]), .Z(n34[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i271_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_2 (.A(\Counter.Counter03Hz [3]), .B(\Counter.Counter03Hz [2]), 
         .Z(n4_adj_4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_2.init = 16'h8888;
    CCU2D \Counter.Counter03Hz_42_add_4_5  (.A0(\Counter.Counter03Hz [3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n354), .COUT(n355), 
          .S0(n42[3]), .S1(n42[4]));
    defparam \Counter.Counter03Hz_42_add_4_5 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_42_add_4_5 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_42_add_4_5 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_42_add_4_5 .INJECT1_1 = "NO";
    CCU2D \Counter.Counter03Hz_42_add_4_1  (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(n73[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n353), .S1(n42[0]));
    defparam \Counter.Counter03Hz_42_add_4_1 .INIT0 = 16'hF000;
    defparam \Counter.Counter03Hz_42_add_4_1 .INIT1 = 16'h0555;
    defparam \Counter.Counter03Hz_42_add_4_1 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_42_add_4_1 .INJECT1_1 = "NO";
    CCU2D \Counter.Counter03Hz_42_add_4_3  (.A0(\Counter.Counter03Hz [1]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n353), .COUT(n354), 
          .S0(n42[1]), .S1(n42[2]));
    defparam \Counter.Counter03Hz_42_add_4_3 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_42_add_4_3 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_42_add_4_3 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_42_add_4_3 .INJECT1_1 = "NO";
    CCU2D \Counter.Counter03Hz_42_add_4_9  (.A0(\Counter.Counter03Hz [7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n356), .S0(n42[7]), 
          .S1(n42[8]));
    defparam \Counter.Counter03Hz_42_add_4_9 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_42_add_4_9 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_42_add_4_9 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_42_add_4_9 .INJECT1_1 = "NO";
    CCU2D \Counter.Counter03Hz_42_add_4_7  (.A0(\Counter.Counter03Hz [5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n355), .COUT(n356), 
          .S0(n42[5]), .S1(n42[6]));
    defparam \Counter.Counter03Hz_42_add_4_7 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_42_add_4_7 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_42_add_4_7 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_42_add_4_7 .INJECT1_1 = "NO";
    LUT4 i231_2_lut_rep_2 (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n392)) /* synthesis lut_function=(A (B)) */ ;
    defparam i231_2_lut_rep_2.init = 16'h8888;
    LUT4 i292_2_lut_4_lut (.A(\Counter.Counter1Hz [2]), .B(n393), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [4]), .Z(n34[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i292_2_lut_4_lut.init = 16'h7f80;
    LUT4 i295_2_lut_4_lut (.A(\Counter.Counter1Hz [2]), .B(n393), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [4]), .Z(n336)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i295_2_lut_4_lut.init = 16'h8000;
    LUT4 i2_4_lut (.A(\Counter.Counter1Hz [2]), .B(\Counter.Counter1Hz [5]), 
         .C(n4), .D(\Counter.Counter1Hz [6]), .Z(n123)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'hc800;
    LUT4 i249_2_lut_4_lut (.A(\Counter.Counter3Hz [2]), .B(n392), .C(\Counter.Counter3Hz [3]), 
         .D(\Counter.Counter3Hz [4]), .Z(n30[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i249_2_lut_4_lut.init = 16'h7f80;
    LUT4 i2_2_lut (.A(\Counter.Counter3Hz [2]), .B(\Counter.Counter3Hz [3]), 
         .Z(n6_adj_5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    FD1S3AX \Counter.Clk3Hz_32  (.D(n100), .CK(Clk200Hz), .Q(\Counter.Clk3Hz ));
    defparam \Counter.Clk3Hz_32 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_40__i5  (.D(n34[5]), .CK(Clk200Hz), .CD(n123), 
            .Q(\Counter.Counter1Hz [5]));
    defparam \Counter.Counter1Hz_40__i5 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_40__i4  (.D(n34[4]), .CK(Clk200Hz), .CD(n123), 
            .Q(\Counter.Counter1Hz [4]));
    defparam \Counter.Counter1Hz_40__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_40__i3  (.D(n34[3]), .CK(Clk200Hz), .CD(n123), 
            .Q(\Counter.Counter1Hz [3]));
    defparam \Counter.Counter1Hz_40__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_40__i2  (.D(n34[2]), .CK(Clk200Hz), .CD(n123), 
            .Q(\Counter.Counter1Hz [2]));
    defparam \Counter.Counter1Hz_40__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_40__i1  (.D(n34[1]), .CK(Clk200Hz), .CD(n123), 
            .Q(n59[1]));
    defparam \Counter.Counter1Hz_40__i1 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_42__i8  (.D(n42[8]), .CK(Clk200Hz), .CD(n122), 
            .Q(\Counter.Counter03Hz [8]));
    defparam \Counter.Counter03Hz_42__i8 .GSR = "DISABLED";
    LUT4 i306_3_lut (.A(\Counter.Counter1Hz [6]), .B(\Counter.Counter1Hz [5]), 
         .C(n336), .Z(n34[6])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i306_3_lut.init = 16'h6a6a;
    LUT4 i179_4_lut (.A(\Counter.Counter3Hz [1]), .B(\Counter.Counter3Hz [5]), 
         .C(n6_adj_5), .D(\Counter.Counter3Hz [4]), .Z(n121)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i179_4_lut.init = 16'hccc8;
    LUT4 i269_1_lut (.A(n59[0]), .Z(n34[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i269_1_lut.init = 16'h5555;
    LUT4 i2_4_lut_adj_3 (.A(\Counter.Counter03Hz [1]), .B(\Counter.Counter03Hz [5]), 
         .C(n4_adj_4), .D(\Counter.Counter03Hz [4]), .Z(n361)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2_4_lut_adj_3.init = 16'hffec;
    FD1S3IX \Counter.Counter03Hz_42__i7  (.D(n42[7]), .CK(Clk200Hz), .CD(n122), 
            .Q(\Counter.Counter03Hz [7]));
    defparam \Counter.Counter03Hz_42__i7 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_42__i6  (.D(n42[6]), .CK(Clk200Hz), .CD(n122), 
            .Q(\Counter.Counter03Hz [6]));
    defparam \Counter.Counter03Hz_42__i6 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_42__i5  (.D(n42[5]), .CK(Clk200Hz), .CD(n122), 
            .Q(\Counter.Counter03Hz [5]));
    defparam \Counter.Counter03Hz_42__i5 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_42__i4  (.D(n42[4]), .CK(Clk200Hz), .CD(n122), 
            .Q(\Counter.Counter03Hz [4]));
    defparam \Counter.Counter03Hz_42__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_42__i3  (.D(n42[3]), .CK(Clk200Hz), .CD(n122), 
            .Q(\Counter.Counter03Hz [3]));
    defparam \Counter.Counter03Hz_42__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_42__i2  (.D(n42[2]), .CK(Clk200Hz), .CD(n122), 
            .Q(\Counter.Counter03Hz [2]));
    defparam \Counter.Counter03Hz_42__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_42__i1  (.D(n42[1]), .CK(Clk200Hz), .CD(n122), 
            .Q(\Counter.Counter03Hz [1]));
    defparam \Counter.Counter03Hz_42__i1 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_38__i5  (.D(n30[5]), .CK(Clk200Hz), .CD(n121), 
            .Q(\Counter.Counter3Hz [5]));
    defparam \Counter.Counter3Hz_38__i5 .GSR = "DISABLED";
    LUT4 i335_3_lut (.A(\Counter.Clk3Hz ), .B(Clk100Hz), .C(MRIGHT[0]), 
         .Z(n381)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i335_3_lut.init = 16'hcaca;
    LUT4 i181_4_lut (.A(\Counter.Counter03Hz [6]), .B(\Counter.Counter03Hz [8]), 
         .C(\Counter.Counter03Hz [7]), .D(n361), .Z(n122)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i181_4_lut.init = 16'hc8c0;
    FD1S3IX \Counter.Counter3Hz_38__i4  (.D(n30[4]), .CK(Clk200Hz), .CD(n121), 
            .Q(\Counter.Counter3Hz [4]));
    defparam \Counter.Counter3Hz_38__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_38__i3  (.D(n30[3]), .CK(Clk200Hz), .CD(n121), 
            .Q(\Counter.Counter3Hz [3]));
    defparam \Counter.Counter3Hz_38__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_38__i2  (.D(n30[2]), .CK(Clk200Hz), .CD(n121), 
            .Q(\Counter.Counter3Hz [2]));
    defparam \Counter.Counter3Hz_38__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_38__i1  (.D(n30[1]), .CK(Clk200Hz), .CD(n121), 
            .Q(\Counter.Counter3Hz [1]));
    defparam \Counter.Counter3Hz_38__i1 .GSR = "DISABLED";
    PFUMX i339 (.BLUT(n383), .ALUT(n384), .C0(MLEFT[1]), .Z(D14_c));
    LUT4 i7_2_lut (.A(n123), .B(\Counter.Clk1Hz ), .Z(n190)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7_2_lut.init = 16'h6666;
    LUT4 i334_3_lut (.A(TRIGHT_c), .B(\Counter.Clk1Hz ), .C(MRIGHT[0]), 
         .Z(n380)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i334_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_4 (.A(\Counter.Clk03Hz ), .B(n122), .Z(n104)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_4.init = 16'h6666;
    CT CTInst0 (.ClkOsc(ClkOsc), .VCC_net(VCC_net), .Clk200Hz(Clk200Hz), 
       .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;
    
endmodule
//
// Verilog Description of module CT
//

module CT (ClkOsc, VCC_net, Clk200Hz, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
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
        .PLL1ACKI(GND_net), .TCOC(Clk200Hz)) /* synthesis syn_instantiated=1 */ ;   // d:/dt/clkgen.vhd(89[11:36])
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

