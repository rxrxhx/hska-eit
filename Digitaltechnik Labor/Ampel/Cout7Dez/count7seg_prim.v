// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Fri Jun 08 13:55:05 2018
//
// Verilog Description of module count7seg
//

module count7seg (C, D14, D15, DIR, MLEFT, MRIGHT, RES, TLEFT, 
            TRIGHT, y) /* synthesis syn_module_defined=1 */ ;   // e:/dt/ampel/cout7dez/count7seg.v(3[8:17])
    output C;   // e:/dt/ampel/cout7dez/count7seg.v(4[8:9])
    output D14;   // e:/dt/ampel/cout7dez/count7seg.v(5[8:11])
    output D15;   // e:/dt/ampel/cout7dez/count7seg.v(6[8:11])
    input DIR;   // e:/dt/ampel/cout7dez/count7seg.v(7[8:11])
    input [1:0]MLEFT;   // e:/dt/ampel/cout7dez/count7seg.v(8[14:19])
    input [1:0]MRIGHT;   // e:/dt/ampel/cout7dez/count7seg.v(9[14:20])
    input RES;   // e:/dt/ampel/cout7dez/count7seg.v(10[8:11])
    input TLEFT;   // e:/dt/ampel/cout7dez/count7seg.v(11[8:13])
    input TRIGHT;   // e:/dt/ampel/cout7dez/count7seg.v(12[8:14])
    output [1:8]y;   // e:/dt/ampel/cout7dez/count7seg.v(13[14:15])
    
    wire D14_c;   // e:/dt/ampel/cout7dez/count7seg.v(5[8:11])
    wire D15_c;   // e:/dt/ampel/cout7dez/count7seg.v(6[8:11])
    wire DIR_c;   // e:/dt/ampel/cout7dez/count7seg.v(7[8:11])
    wire [1:0]MLEFT_c;   // e:/dt/ampel/cout7dez/count7seg.v(8[14:19])
    wire [1:0]MRIGHT_c;   // e:/dt/ampel/cout7dez/count7seg.v(9[14:20])
    wire RES_c;   // e:/dt/ampel/cout7dez/count7seg.v(10[8:11])
    wire TLEFT_c;   // e:/dt/ampel/cout7dez/count7seg.v(11[8:13])
    wire TRIGHT_c;   // e:/dt/ampel/cout7dez/count7seg.v(12[8:14])
    wire GND_net;   // e:/dt/ampel/dec7s.vhd(36[11:15])
    wire [1:8]\dec.help ;   // e:/dt/ampel/dec7s.vhd(36[11:15])
    wire VCC_net;   // e:/dt/ampel/cout7dez/count7seg.v(4[8:9])
    
    wire n137;
    
    VLO i1 (.Z(GND_net));
    OB y_pad_1 (.I(\dec.help [1]), .O(y[1]));
    OB y_pad_2 (.I(\dec.help [2]), .O(y[2]));
    OB D15_pad (.I(D15_c), .O(D15));
    OB D14_pad (.I(D14_c), .O(D14));
    OB C_pad (.I(VCC_net), .O(C));
    GSR GSR_INST (.GSR(n137));
    OB y_pad_3 (.I(\dec.help [3]), .O(y[3]));
    OB y_pad_4 (.I(\dec.help [4]), .O(y[4]));
    OB y_pad_5 (.I(\dec.help [5]), .O(y[5]));
    OB y_pad_6 (.I(\dec.help [6]), .O(y[6]));
    OB y_pad_7 (.I(\dec.help [7]), .O(y[7]));
    OB y_pad_8 (.I(GND_net), .O(y[8]));
    IB DIR_pad (.I(DIR), .O(DIR_c));
    IB MLEFT_pad_1 (.I(MLEFT[1]), .O(MLEFT_c[1]));
    IB MLEFT_pad_0 (.I(MLEFT[0]), .O(MLEFT_c[0]));
    IB MRIGHT_pad_1 (.I(MRIGHT[1]), .O(MRIGHT_c[1]));
    IB MRIGHT_pad_0 (.I(MRIGHT[0]), .O(MRIGHT_c[0]));
    IB RES_pad (.I(RES), .O(RES_c));
    IB TLEFT_pad (.I(TLEFT), .O(TLEFT_c));
    IB TRIGHT_pad (.I(TRIGHT), .O(TRIGHT_c));
    LUT4 i106_1_lut (.A(RES_c), .Z(n137)) /* synthesis lut_function=(!(A)) */ ;
    defparam i106_1_lut.init = 16'h5555;
    lauflicht I2 (.n92(\dec.help [6]), .n91(\dec.help [5]), .n93(\dec.help [7]), 
            .D14_c(D14_c), .n88(\dec.help [2]), .DIR_c(DIR_c), .n90(\dec.help [4]), 
            .n87(\dec.help [1]), .n89(\dec.help [3]), .GND_net(GND_net), 
            .MLEFT({MLEFT_c}), .TLEFT_c(TLEFT_c), .MRIGHT({MRIGHT_c}), 
            .D15_c(D15_c), .TRIGHT_c(TRIGHT_c));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i603 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module lauflicht
//

module lauflicht (n92, n91, n93, D14_c, n88, DIR_c, n90, n87, 
            n89, GND_net, MLEFT, TLEFT_c, MRIGHT, D15_c, TRIGHT_c);
    output n92;
    output n91;
    output n93;
    output D14_c;
    output n88;
    input DIR_c;
    output n90;
    output n87;
    output n89;
    input GND_net;
    input [1:0]MLEFT;
    input TLEFT_c;
    input [1:0]MRIGHT;
    output D15_c;
    input TRIGHT_c;
    
    wire [3:0]LEDBUS;   // e:/dt/ampel/cout7dez/count7seg.v(14[14:20])
    
    wire n636, n621, n638, n533, n535;
    
    LUT4 i1_3_lut_4_lut (.A(LEDBUS[0]), .B(LEDBUS[1]), .C(LEDBUS[3]), 
         .D(LEDBUS[2]), .Z(n92)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A ((C+(D))+!B)) */ ;
    defparam i1_3_lut_4_lut.init = 16'hd7f1;
    LUT4 i564_4_lut_4_lut (.A(LEDBUS[0]), .B(LEDBUS[2]), .C(LEDBUS[1]), 
         .D(LEDBUS[3]), .Z(n91)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A ((C+(D))+!B)) */ ;
    defparam i564_4_lut_4_lut.init = 16'hfd51;
    LUT4 i152_1_lut_rep_9 (.A(LEDBUS[0]), .Z(n636)) /* synthesis lut_function=(!(A)) */ ;
    defparam i152_1_lut_rep_9.init = 16'h5555;
    LUT4 LEDBUS_3__bdd_4_lut (.A(LEDBUS[3]), .B(LEDBUS[1]), .C(LEDBUS[2]), 
         .D(LEDBUS[0]), .Z(n93)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C (D))+!B !(C))) */ ;
    defparam LEDBUS_3__bdd_4_lut.init = 16'hbede;
    FD1S3AX count4bit_50__i3 (.D(n621), .CK(D14_c), .Q(LEDBUS[3]));
    defparam count4bit_50__i3.GSR = "ENABLED";
    LUT4 LEDBUS_2__bdd_4_lut (.A(LEDBUS[2]), .B(LEDBUS[1]), .C(LEDBUS[3]), 
         .D(LEDBUS[0]), .Z(n88)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B (C (D))))) */ ;
    defparam LEDBUS_2__bdd_4_lut.init = 16'h3d57;
    LUT4 LEDBUS_3__bdd_4_lut_595 (.A(LEDBUS[3]), .B(DIR_c), .C(LEDBUS[2]), 
         .D(n638), .Z(n621)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A !(B (C+(D))+!B !(C (D)))) */ ;
    defparam LEDBUS_3__bdd_4_lut_595.init = 16'h9aa6;
    FD1S3AX count4bit_50__i2 (.D(n533), .CK(D14_c), .Q(LEDBUS[2]));
    defparam count4bit_50__i2.GSR = "ENABLED";
    FD1S3AX count4bit_50__i1 (.D(n535), .CK(D14_c), .Q(LEDBUS[1]));
    defparam count4bit_50__i1.GSR = "ENABLED";
    FD1S3AX count4bit_50__i0 (.D(n636), .CK(D14_c), .Q(LEDBUS[0]));
    defparam count4bit_50__i0.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(LEDBUS[1]), .B(LEDBUS[0]), .C(DIR_c), .D(LEDBUS[2]), 
         .Z(n533)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'he718;
    LUT4 i2_3_lut (.A(LEDBUS[1]), .B(DIR_c), .C(LEDBUS[0]), .Z(n535)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i2_3_lut.init = 16'h9696;
    LUT4 LEDBUS_0__bdd_4_lut_596 (.A(LEDBUS[0]), .B(LEDBUS[3]), .C(LEDBUS[1]), 
         .D(LEDBUS[2]), .Z(n90)) /* synthesis lut_function=(!(A (B (C (D))+!B (C (D)+!C !(D)))+!A !(B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam LEDBUS_0__bdd_4_lut_596.init = 16'h5ebd;
    LUT4 i388_4_lut_3_lut_rep_11 (.A(LEDBUS[1]), .B(LEDBUS[0]), .C(DIR_c), 
         .Z(n638)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam i388_4_lut_3_lut_rep_11.init = 16'he8e8;
    LUT4 LEDBUS_0__bdd_4_lut_597 (.A(LEDBUS[0]), .B(LEDBUS[1]), .C(LEDBUS[3]), 
         .D(LEDBUS[2]), .Z(n87)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A (B+(C+!(D)))) */ ;
    defparam LEDBUS_0__bdd_4_lut_597.init = 16'hde7d;
    LUT4 LEDBUS_2__bdd_4_lut_599 (.A(LEDBUS[2]), .B(LEDBUS[1]), .C(LEDBUS[3]), 
         .D(LEDBUS[0]), .Z(n89)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A !((C+(D))+!B))) */ ;
    defparam LEDBUS_2__bdd_4_lut_599.init = 16'h7f5b;
    ClkGen Clock (.GND_net(GND_net), .MLEFT({MLEFT}), .D14_c(D14_c), .TLEFT_c(TLEFT_c), 
           .MRIGHT({MRIGHT}), .D15_c(D15_c), .TRIGHT_c(TRIGHT_c));
    
endmodule
//
// Verilog Description of module ClkGen
//

module ClkGen (GND_net, MLEFT, D14_c, TLEFT_c, MRIGHT, D15_c, TRIGHT_c);
    input GND_net;
    input [1:0]MLEFT;
    output D14_c;
    input TLEFT_c;
    input [1:0]MRIGHT;
    output D15_c;
    input TRIGHT_c;
    
    wire [5:0]\Counter.Counter3Hz ;   // e:/dt/ampel/clkgen.vhd(98[11:21])
    wire Clk200Hz;   // e:/dt/ampel/clkgen.vhd(63[4:12])
    wire \Counter.Clk3Hz ;   // e:/dt/ampel/clkgen.vhd(100[11:17])
    wire \Counter.Clk1Hz ;   // e:/dt/ampel/clkgen.vhd(101[11:17])
    wire \Counter.Clk03Hz ;   // e:/dt/ampel/clkgen.vhd(102[11:18])
    wire Clk100Hz;   // e:/dt/ampel/clkgen.vhd(62[4:12])
    wire ClkOsc;   // e:/dt/ampel/clkgen.vhd(64[4:10])
    wire [8:0]\Counter.Counter03Hz ;   // e:/dt/ampel/clkgen.vhd(97[11:22])
    wire [6:0]\Counter.Counter1Hz ;   // e:/dt/ampel/clkgen.vhd(99[11:21])
    
    wire n138;
    wire [5:0]n30;
    wire [6:0]n59;
    
    wire n637, n97, n279, n101, n71;
    wire [5:0]n52;
    wire [8:0]n73;
    wire [8:0]n42;
    
    wire n522, n140;
    wire [6:0]n34;
    
    wire n523, n524, n4, n532, n139, n4_adj_4, n634, n601, n600, 
        n525, n6_adj_5, n635, n597, n598, n505;
    
    FD1S3IX \Counter.Counter3Hz_45__i5  (.D(n30[5]), .CK(Clk200Hz), .CD(n138), 
            .Q(\Counter.Counter3Hz [5]));
    defparam \Counter.Counter3Hz_45__i5 .GSR = "DISABLED";
    LUT4 i461_2_lut_rep_10 (.A(n59[1]), .B(n59[0]), .Z(n637)) /* synthesis lut_function=(A (B)) */ ;
    defparam i461_2_lut_rep_10.init = 16'h8888;
    FD1S3IX \Counter.Counter3Hz_45__i4  (.D(n30[4]), .CK(Clk200Hz), .CD(n138), 
            .Q(\Counter.Counter3Hz [4]));
    defparam \Counter.Counter3Hz_45__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_45__i3  (.D(n30[3]), .CK(Clk200Hz), .CD(n138), 
            .Q(\Counter.Counter3Hz [3]));
    defparam \Counter.Counter3Hz_45__i3 .GSR = "DISABLED";
    FD1S3AX \Counter.Clk3Hz_32  (.D(n97), .CK(Clk200Hz), .Q(\Counter.Clk3Hz ));
    defparam \Counter.Clk3Hz_32 .GSR = "DISABLED";
    FD1S3AX \Counter.Clk1Hz_34  (.D(n279), .CK(Clk200Hz), .Q(\Counter.Clk1Hz ));
    defparam \Counter.Clk1Hz_34 .GSR = "DISABLED";
    FD1S3AX \Counter.Clk03Hz_36  (.D(n101), .CK(Clk200Hz), .Q(\Counter.Clk03Hz ));
    defparam \Counter.Clk03Hz_36 .GSR = "DISABLED";
    FD1S3AX SigClk100Hz_37 (.D(n71), .CK(Clk200Hz), .Q(Clk100Hz));
    defparam SigClk100Hz_37.GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_45__i2  (.D(n30[2]), .CK(Clk200Hz), .CD(n138), 
            .Q(\Counter.Counter3Hz [2]));
    defparam \Counter.Counter3Hz_45__i2 .GSR = "DISABLED";
    OSCH OscInst0 (.STDBY(GND_net), .OSC(ClkOsc)) /* synthesis syn_instantiated=1 */ ;   // e:/dt/ampel/bitcount4.vhd(25[11:39])
    defparam OscInst0.NOM_FREQ = "2.08";
    LUT4 i429_2_lut_3_lut_4_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [3]), .D(\Counter.Counter3Hz [2]), .Z(n30[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i429_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i415_2_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n30[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i415_2_lut.init = 16'h6666;
    LUT4 i19_1_lut (.A(Clk100Hz), .Z(n71)) /* synthesis lut_function=(!(A)) */ ;
    defparam i19_1_lut.init = 16'h5555;
    FD1S3IX \Counter.Counter3Hz_45__i1  (.D(n30[1]), .CK(Clk200Hz), .CD(n138), 
            .Q(\Counter.Counter3Hz [1]));
    defparam \Counter.Counter3Hz_45__i1 .GSR = "DISABLED";
    CCU2D \Counter.Counter03Hz_49_add_4_1  (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(n73[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n522), .S1(n42[0]));
    defparam \Counter.Counter03Hz_49_add_4_1 .INIT0 = 16'hF000;
    defparam \Counter.Counter03Hz_49_add_4_1 .INIT1 = 16'h0555;
    defparam \Counter.Counter03Hz_49_add_4_1 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_49_add_4_1 .INJECT1_1 = "NO";
    FD1S3IX \Counter.Counter1Hz_47__i0  (.D(n34[0]), .CK(Clk200Hz), .CD(n140), 
            .Q(n59[0]));
    defparam \Counter.Counter1Hz_47__i0 .GSR = "DISABLED";
    CCU2D \Counter.Counter03Hz_49_add_4_5  (.A0(\Counter.Counter03Hz [3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n523), .COUT(n524), 
          .S0(n42[3]), .S1(n42[4]));
    defparam \Counter.Counter03Hz_49_add_4_5 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_49_add_4_5 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_49_add_4_5 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_49_add_4_5 .INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(\Counter.Counter03Hz [3]), .B(\Counter.Counter03Hz [2]), 
         .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1S3IX \Counter.Counter1Hz_47__i6  (.D(n34[6]), .CK(Clk200Hz), .CD(n140), 
            .Q(\Counter.Counter1Hz [6]));
    defparam \Counter.Counter1Hz_47__i6 .GSR = "DISABLED";
    LUT4 i2_4_lut (.A(\Counter.Counter03Hz [1]), .B(\Counter.Counter03Hz [5]), 
         .C(n4), .D(\Counter.Counter03Hz [4]), .Z(n532)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2_4_lut.init = 16'hffec;
    LUT4 i285_4_lut (.A(\Counter.Counter03Hz [6]), .B(\Counter.Counter03Hz [8]), 
         .C(\Counter.Counter03Hz [7]), .D(n532), .Z(n139)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i285_4_lut.init = 16'hc8c0;
    LUT4 i422_2_lut_3_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .C(\Counter.Counter3Hz [2]), 
         .Z(n30[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i422_2_lut_3_lut.init = 16'h7878;
    FD1S3IX \Counter.Counter3Hz_45__i0  (.D(n30[0]), .CK(Clk200Hz), .CD(n138), 
            .Q(n52[0]));
    defparam \Counter.Counter3Hz_45__i0 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_49__i0  (.D(n42[0]), .CK(Clk200Hz), .CD(n139), 
            .Q(n73[0]));
    defparam \Counter.Counter03Hz_49__i0 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_47__i5  (.D(n34[5]), .CK(Clk200Hz), .CD(n140), 
            .Q(\Counter.Counter1Hz [5]));
    defparam \Counter.Counter1Hz_47__i5 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_47__i4  (.D(n34[4]), .CK(Clk200Hz), .CD(n140), 
            .Q(\Counter.Counter1Hz [4]));
    defparam \Counter.Counter1Hz_47__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_47__i3  (.D(n34[3]), .CK(Clk200Hz), .CD(n140), 
            .Q(\Counter.Counter1Hz [3]));
    defparam \Counter.Counter1Hz_47__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_47__i2  (.D(n34[2]), .CK(Clk200Hz), .CD(n140), 
            .Q(\Counter.Counter1Hz [2]));
    defparam \Counter.Counter1Hz_47__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_47__i1  (.D(n34[1]), .CK(Clk200Hz), .CD(n140), 
            .Q(n59[1]));
    defparam \Counter.Counter1Hz_47__i1 .GSR = "DISABLED";
    LUT4 i1_2_lut_adj_1 (.A(\Counter.Clk03Hz ), .B(n139), .Z(n101)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_1.init = 16'h6666;
    LUT4 i1_2_lut_adj_2 (.A(\Counter.Counter1Hz [4]), .B(\Counter.Counter1Hz [3]), 
         .Z(n4_adj_4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_2.init = 16'heeee;
    LUT4 i425_2_lut_rep_7_3_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [2]), .Z(n634)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i425_2_lut_rep_7_3_lut.init = 16'h8080;
    FD1S3IX \Counter.Counter03Hz_49__i8  (.D(n42[8]), .CK(Clk200Hz), .CD(n139), 
            .Q(\Counter.Counter03Hz [8]));
    defparam \Counter.Counter03Hz_49__i8 .GSR = "DISABLED";
    LUT4 i573_3_lut (.A(\Counter.Clk1Hz ), .B(\Counter.Clk3Hz ), .C(MLEFT[0]), 
         .Z(n601)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i573_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_3 (.A(\Counter.Counter1Hz [2]), .B(\Counter.Counter1Hz [5]), 
         .C(n4_adj_4), .D(\Counter.Counter1Hz [6]), .Z(n140)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_3.init = 16'hc800;
    FD1S3IX \Counter.Counter03Hz_49__i7  (.D(n42[7]), .CK(Clk200Hz), .CD(n139), 
            .Q(\Counter.Counter03Hz [7]));
    defparam \Counter.Counter03Hz_49__i7 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_49__i6  (.D(n42[6]), .CK(Clk200Hz), .CD(n139), 
            .Q(\Counter.Counter03Hz [6]));
    defparam \Counter.Counter03Hz_49__i6 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_49__i5  (.D(n42[5]), .CK(Clk200Hz), .CD(n139), 
            .Q(\Counter.Counter03Hz [5]));
    defparam \Counter.Counter03Hz_49__i5 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_49__i4  (.D(n42[4]), .CK(Clk200Hz), .CD(n139), 
            .Q(\Counter.Counter03Hz [4]));
    defparam \Counter.Counter03Hz_49__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_49__i3  (.D(n42[3]), .CK(Clk200Hz), .CD(n139), 
            .Q(\Counter.Counter03Hz [3]));
    defparam \Counter.Counter03Hz_49__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_49__i2  (.D(n42[2]), .CK(Clk200Hz), .CD(n139), 
            .Q(\Counter.Counter03Hz [2]));
    defparam \Counter.Counter03Hz_49__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_49__i1  (.D(n42[1]), .CK(Clk200Hz), .CD(n139), 
            .Q(\Counter.Counter03Hz [1]));
    defparam \Counter.Counter03Hz_49__i1 .GSR = "DISABLED";
    PFUMX i574 (.BLUT(n600), .ALUT(n601), .C0(MLEFT[1]), .Z(D14_c));
    LUT4 i7_2_lut (.A(n140), .B(\Counter.Clk1Hz ), .Z(n279)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_4 (.A(\Counter.Clk3Hz ), .B(n138), .Z(n97)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_4.init = 16'h6666;
    LUT4 i572_3_lut (.A(TLEFT_c), .B(\Counter.Clk03Hz ), .C(MLEFT[0]), 
         .Z(n600)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i572_3_lut.init = 16'hcaca;
    CCU2D \Counter.Counter03Hz_49_add_4_9  (.A0(\Counter.Counter03Hz [7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n525), .S0(n42[7]), 
          .S1(n42[8]));
    defparam \Counter.Counter03Hz_49_add_4_9 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_49_add_4_9 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_49_add_4_9 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_49_add_4_9 .INJECT1_1 = "NO";
    LUT4 i458_2_lut (.A(n59[1]), .B(n59[0]), .Z(n34[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i458_2_lut.init = 16'h6666;
    CCU2D \Counter.Counter03Hz_49_add_4_3  (.A0(\Counter.Counter03Hz [1]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n522), .COUT(n523), 
          .S0(n42[1]), .S1(n42[2]));
    defparam \Counter.Counter03Hz_49_add_4_3 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_49_add_4_3 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_49_add_4_3 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_49_add_4_3 .INJECT1_1 = "NO";
    CCU2D \Counter.Counter03Hz_49_add_4_7  (.A0(\Counter.Counter03Hz [5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n524), .COUT(n525), 
          .S0(n42[5]), .S1(n42[6]));
    defparam \Counter.Counter03Hz_49_add_4_7 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_49_add_4_7 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_49_add_4_7 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_49_add_4_7 .INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(\Counter.Counter3Hz [2]), .B(\Counter.Counter3Hz [3]), 
         .Z(n6_adj_5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i418_2_lut_rep_8 (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n635)) /* synthesis lut_function=(A (B)) */ ;
    defparam i418_2_lut_rep_8.init = 16'h8888;
    LUT4 i283_4_lut (.A(\Counter.Counter3Hz [1]), .B(\Counter.Counter3Hz [5]), 
         .C(n6_adj_5), .D(\Counter.Counter3Hz [4]), .Z(n138)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i283_4_lut.init = 16'hccc8;
    PFUMX i571 (.BLUT(n597), .ALUT(n598), .C0(MRIGHT[1]), .Z(D15_c));
    LUT4 i479_2_lut_4_lut (.A(\Counter.Counter1Hz [2]), .B(n637), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [4]), .Z(n34[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i479_2_lut_4_lut.init = 16'h7f80;
    LUT4 i482_2_lut_4_lut (.A(\Counter.Counter1Hz [2]), .B(n637), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [4]), .Z(n505)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i482_2_lut_4_lut.init = 16'h8000;
    LUT4 i486_2_lut (.A(\Counter.Counter1Hz [5]), .B(n505), .Z(n34[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i486_2_lut.init = 16'h6666;
    LUT4 i413_1_lut (.A(n52[0]), .Z(n30[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i413_1_lut.init = 16'h5555;
    LUT4 i465_2_lut_3_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [2]), 
         .Z(n34[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i465_2_lut_3_lut.init = 16'h7878;
    LUT4 i472_2_lut_3_lut_4_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [2]), .Z(n34[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i472_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i493_3_lut (.A(\Counter.Counter1Hz [6]), .B(\Counter.Counter1Hz [5]), 
         .C(n505), .Z(n34[6])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i493_3_lut.init = 16'h6a6a;
    LUT4 i456_1_lut (.A(n59[0]), .Z(n34[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i456_1_lut.init = 16'h5555;
    LUT4 i570_3_lut (.A(\Counter.Clk3Hz ), .B(Clk100Hz), .C(MRIGHT[0]), 
         .Z(n598)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i570_3_lut.init = 16'hcaca;
    LUT4 i436_2_lut_3_lut_4_lut (.A(\Counter.Counter3Hz [2]), .B(n635), 
         .C(\Counter.Counter3Hz [4]), .D(\Counter.Counter3Hz [3]), .Z(n30[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i436_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i569_3_lut (.A(TRIGHT_c), .B(\Counter.Clk1Hz ), .C(MRIGHT[0]), 
         .Z(n597)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i569_3_lut.init = 16'hcaca;
    LUT4 i443_3_lut_4_lut (.A(\Counter.Counter3Hz [3]), .B(n634), .C(\Counter.Counter3Hz [4]), 
         .D(\Counter.Counter3Hz [5]), .Z(n30[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i443_3_lut_4_lut.init = 16'h7f80;
    CT CTInst0 (.ClkOsc(ClkOsc), .Clk200Hz(Clk200Hz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;
    
endmodule
//
// Verilog Description of module CT
//

module CT (ClkOsc, Clk200Hz, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input ClkOsc;
    output Clk200Hz;
    input GND_net;
    
    
    wire VCC_net;
    
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
        .PLL1ACKI(GND_net), .TCOC(Clk200Hz)) /* synthesis syn_instantiated=1 */ ;   // e:/dt/ampel/clkgen.vhd(89[11:36])
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
    VHI i1 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

