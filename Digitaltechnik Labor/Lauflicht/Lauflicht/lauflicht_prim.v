// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Tue Jun 19 22:58:26 2018
//
// Verilog Description of module lauflicht
//

module lauflicht (LED, DIR, INV, MLEFT, MRIGHT, TLEFT, TRIGHT, 
            D14, D15);   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(6[8:17])
    output [7:0]LED;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(8[3:6])
    input DIR;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(9[3:6])
    input INV;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(9[8:11])
    input [1:0]MLEFT;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(10[3:8])
    input [1:0]MRIGHT;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(11[3:9])
    input TLEFT;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(12[3:8])
    input TRIGHT;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(13[3:9])
    output D14;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(14[3:6])
    output D15;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(14[8:11])
    
    wire GND_net;   // c:/users/rrhar/desktop/dt/timer/ct.vhd(26[12:21])
    wire [7:0]LED_c;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(8[3:6])
    wire DIR_c;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(9[3:6])
    wire INV_c;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(9[8:11])
    wire [1:0]MLEFT_c;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(10[3:8])
    wire [1:0]MRIGHT_c;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(11[3:9])
    wire TLEFT_c;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(12[3:8])
    wire TRIGHT_c;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(13[3:9])
    wire D14_c;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(14[3:6])
    wire D15_c;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(14[8:11])
    wire [7:0]regi;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(22[10:14])
    wire VCC_net;   // c:/users/rrhar/desktop/dt/timer/ct.vhd(17[9:16])
    wire [7:0]n20;
    
    VHI i14 (.Z(VCC_net));
    OB LED_pad_5 (.I(LED_c[5]), .O(LED[5]));
    OB LED_pad_6 (.I(LED_c[6]), .O(LED[6]));
    LUT4 i58_2_lut (.A(regi[3]), .B(INV_c), .Z(LED_c[3])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i58_2_lut.init = 16'h6666;
    LUT4 mux_7_i2_3_lut (.A(regi[0]), .B(regi[2]), .C(DIR_c), .Z(n20[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i2_3_lut.init = 16'hcaca;
    LUT4 i57_2_lut (.A(regi[4]), .B(INV_c), .Z(LED_c[4])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i57_2_lut.init = 16'h6666;
    LUT4 mux_7_i3_3_lut (.A(regi[1]), .B(regi[3]), .C(DIR_c), .Z(n20[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i3_3_lut.init = 16'hcaca;
    LUT4 mux_7_i4_3_lut (.A(regi[2]), .B(regi[4]), .C(DIR_c), .Z(n20[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i4_3_lut.init = 16'hcaca;
    LUT4 mux_7_i5_3_lut (.A(regi[3]), .B(regi[5]), .C(DIR_c), .Z(n20[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i5_3_lut.init = 16'hcaca;
    LUT4 mux_7_i6_3_lut (.A(regi[4]), .B(regi[6]), .C(DIR_c), .Z(n20[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i6_3_lut.init = 16'hcaca;
    ClkGen Clock (.GND_net(GND_net), .MRIGHT({MRIGHT_c}), .TRIGHT_c(TRIGHT_c), 
           .D15_c(D15_c), .MLEFT({MLEFT_c}), .D14_c(D14_c), .TLEFT_c(TLEFT_c), 
           .VCC_net(VCC_net));
    LUT4 i54_2_lut (.A(regi[7]), .B(INV_c), .Z(LED_c[7])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i54_2_lut.init = 16'h6666;
    LUT4 mux_7_i7_3_lut (.A(regi[5]), .B(regi[7]), .C(DIR_c), .Z(n20[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i7_3_lut.init = 16'hcaca;
    LUT4 mux_7_i8_3_lut (.A(regi[6]), .B(regi[0]), .C(DIR_c), .Z(n20[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i8_3_lut.init = 16'hcaca;
    LUT4 mux_7_i1_3_lut (.A(regi[7]), .B(regi[1]), .C(DIR_c), .Z(n20[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i1_3_lut.init = 16'hcaca;
    FD1S3AX regi_i0 (.D(n20[0]), .CK(D14_c), .Q(regi[0]));
    defparam regi_i0.GSR = "DISABLED";
    GSR GSR_INST (.GSR(VCC_net));
    OB LED_pad_7 (.I(LED_c[7]), .O(LED[7]));
    OB LED_pad_4 (.I(LED_c[4]), .O(LED[4]));
    LUT4 i55_2_lut (.A(regi[6]), .B(INV_c), .Z(LED_c[6])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i55_2_lut.init = 16'h6666;
    FD1S3AY regi_i7 (.D(n20[7]), .CK(D14_c), .Q(regi[7]));
    defparam regi_i7.GSR = "DISABLED";
    FD1S3AX regi_i6 (.D(n20[6]), .CK(D14_c), .Q(regi[6]));
    defparam regi_i6.GSR = "DISABLED";
    FD1S3AX regi_i5 (.D(n20[5]), .CK(D14_c), .Q(regi[5]));
    defparam regi_i5.GSR = "DISABLED";
    FD1S3AX regi_i4 (.D(n20[4]), .CK(D14_c), .Q(regi[4]));
    defparam regi_i4.GSR = "DISABLED";
    FD1S3AX regi_i3 (.D(n20[3]), .CK(D14_c), .Q(regi[3]));
    defparam regi_i3.GSR = "DISABLED";
    FD1S3AX regi_i2 (.D(n20[2]), .CK(D14_c), .Q(regi[2]));
    defparam regi_i2.GSR = "DISABLED";
    FD1S3AX regi_i1 (.D(n20[1]), .CK(D14_c), .Q(regi[1]));
    defparam regi_i1.GSR = "DISABLED";
    OB LED_pad_3 (.I(LED_c[3]), .O(LED[3]));
    OB LED_pad_2 (.I(LED_c[2]), .O(LED[2]));
    OB LED_pad_1 (.I(LED_c[1]), .O(LED[1]));
    OB LED_pad_0 (.I(LED_c[0]), .O(LED[0]));
    OB D14_pad (.I(D14_c), .O(D14));
    OB D15_pad (.I(D15_c), .O(D15));
    IB DIR_pad (.I(DIR), .O(DIR_c));
    IB INV_pad (.I(INV), .O(INV_c));
    IB MLEFT_pad_1 (.I(MLEFT[1]), .O(MLEFT_c[1]));
    IB MLEFT_pad_0 (.I(MLEFT[0]), .O(MLEFT_c[0]));
    IB MRIGHT_pad_1 (.I(MRIGHT[1]), .O(MRIGHT_c[1]));
    IB MRIGHT_pad_0 (.I(MRIGHT[0]), .O(MRIGHT_c[0]));
    IB TLEFT_pad (.I(TLEFT), .O(TLEFT_c));
    IB TRIGHT_pad (.I(TRIGHT), .O(TRIGHT_c));
    LUT4 i56_2_lut (.A(regi[5]), .B(INV_c), .Z(LED_c[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i56_2_lut.init = 16'h6666;
    LUT4 i53_2_lut (.A(regi[0]), .B(INV_c), .Z(LED_c[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i53_2_lut.init = 16'h6666;
    LUT4 i60_2_lut (.A(regi[1]), .B(INV_c), .Z(LED_c[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i60_2_lut.init = 16'h6666;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i59_2_lut (.A(regi[2]), .B(INV_c), .Z(LED_c[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i59_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module ClkGen
//

module ClkGen (GND_net, MRIGHT, TRIGHT_c, D15_c, MLEFT, D14_c, TLEFT_c, 
            VCC_net);
    input GND_net;
    input [1:0]MRIGHT;
    input TRIGHT_c;
    output D15_c;
    input [1:0]MLEFT;
    output D14_c;
    input TLEFT_c;
    input VCC_net;
    
    wire \Counter.Clk3Hz ;   // c:/users/rrhar/desktop/dt/timer/clkgen.vhd(100[11:17])
    wire Clk200Hz;   // c:/users/rrhar/desktop/dt/timer/clkgen.vhd(63[4:12])
    wire \Counter.Clk1Hz ;   // c:/users/rrhar/desktop/dt/timer/clkgen.vhd(101[11:17])
    wire \Counter.Clk03Hz ;   // c:/users/rrhar/desktop/dt/timer/clkgen.vhd(102[11:18])
    wire Clk100Hz;   // c:/users/rrhar/desktop/dt/timer/clkgen.vhd(62[4:12])
    wire [8:0]\Counter.Counter03Hz ;   // c:/users/rrhar/desktop/dt/timer/clkgen.vhd(97[11:22])
    wire ClkOsc;   // c:/users/rrhar/desktop/dt/timer/clkgen.vhd(64[4:10])
    wire [6:0]\Counter.Counter1Hz ;   // c:/users/rrhar/desktop/dt/timer/clkgen.vhd(99[11:21])
    wire [5:0]\Counter.Counter3Hz ;   // c:/users/rrhar/desktop/dt/timer/clkgen.vhd(98[11:21])
    
    wire n104, n132, n106, n108, n71, n327;
    wire [8:0]n42;
    
    wire n328, n330, n356, n353;
    wire [6:0]n34;
    
    wire n344, n343, n4, n329;
    wire [6:0]n59;
    
    wire n6, n131;
    wire [5:0]n52;
    wire [5:0]n30;
    wire [8:0]n73;
    
    wire n130, n4_adj_3, n336, n355, n357, n354, n346, n347;
    
    FD1S3AX \Counter.Clk3Hz_32  (.D(n104), .CK(Clk200Hz), .Q(\Counter.Clk3Hz ));
    defparam \Counter.Clk3Hz_32 .GSR = "DISABLED";
    LUT4 i1_2_lut (.A(\Counter.Clk1Hz ), .B(n132), .Z(n106)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    FD1S3AX \Counter.Clk1Hz_34  (.D(n106), .CK(Clk200Hz), .Q(\Counter.Clk1Hz ));
    defparam \Counter.Clk1Hz_34 .GSR = "DISABLED";
    FD1S3AX \Counter.Clk03Hz_36  (.D(n108), .CK(Clk200Hz), .Q(\Counter.Clk03Hz ));
    defparam \Counter.Clk03Hz_36 .GSR = "DISABLED";
    FD1S3AX SigClk100Hz_37 (.D(n71), .CK(Clk200Hz), .Q(Clk100Hz));
    defparam SigClk100Hz_37.GSR = "DISABLED";
    CCU2D \Counter.Counter03Hz_35_add_4_3  (.A0(\Counter.Counter03Hz [1]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n327), .COUT(n328), 
          .S0(n42[1]), .S1(n42[2]));
    defparam \Counter.Counter03Hz_35_add_4_3 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_35_add_4_3 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_35_add_4_3 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_35_add_4_3 .INJECT1_1 = "NO";
    OSCH OscInst0 (.STDBY(GND_net), .OSC(ClkOsc)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rrhar/desktop/dt/timer/lauflicht.vhd(24[11:39])
    defparam OscInst0.NOM_FREQ = "2.08";
    CCU2D \Counter.Counter03Hz_35_add_4_9  (.A0(\Counter.Counter03Hz [7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n330), .S0(n42[7]), 
          .S1(n42[8]));
    defparam \Counter.Counter03Hz_35_add_4_9 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_35_add_4_9 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_35_add_4_9 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_35_add_4_9 .INJECT1_1 = "NO";
    LUT4 i217_2_lut_3_lut_rep_1_4_lut (.A(\Counter.Counter1Hz [2]), .B(n356), 
         .C(\Counter.Counter1Hz [4]), .D(\Counter.Counter1Hz [3]), .Z(n353)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i217_2_lut_3_lut_rep_1_4_lut.init = 16'h8000;
    LUT4 i228_3_lut (.A(\Counter.Counter1Hz [6]), .B(\Counter.Counter1Hz [5]), 
         .C(n353), .Z(n34[6])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i228_3_lut.init = 16'h6a6a;
    LUT4 i289_3_lut (.A(\Counter.Clk3Hz ), .B(Clk100Hz), .C(MRIGHT[0]), 
         .Z(n344)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i289_3_lut.init = 16'hcaca;
    LUT4 i288_3_lut (.A(TRIGHT_c), .B(\Counter.Clk1Hz ), .C(MRIGHT[0]), 
         .Z(n343)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i288_3_lut.init = 16'hcaca;
    FD1S3IX \Counter.Counter1Hz_33__i6  (.D(n34[6]), .CK(Clk200Hz), .CD(n132), 
            .Q(\Counter.Counter1Hz [6]));
    defparam \Counter.Counter1Hz_33__i6 .GSR = "DISABLED";
    LUT4 i2_4_lut (.A(\Counter.Counter1Hz [6]), .B(\Counter.Counter1Hz [4]), 
         .C(\Counter.Counter1Hz [5]), .D(n4), .Z(n132)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    CCU2D \Counter.Counter03Hz_35_add_4_7  (.A0(\Counter.Counter03Hz [5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n329), .COUT(n330), 
          .S0(n42[5]), .S1(n42[6]));
    defparam \Counter.Counter03Hz_35_add_4_7 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_35_add_4_7 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_35_add_4_7 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_35_add_4_7 .INJECT1_1 = "NO";
    FD1S3IX \Counter.Counter1Hz_33__i0  (.D(n34[0]), .CK(Clk200Hz), .CD(n132), 
            .Q(n59[0]));
    defparam \Counter.Counter1Hz_33__i0 .GSR = "DISABLED";
    LUT4 i178_4_lut (.A(\Counter.Counter3Hz [1]), .B(\Counter.Counter3Hz [5]), 
         .C(n6), .D(\Counter.Counter3Hz [3]), .Z(n131)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i178_4_lut.init = 16'hccc8;
    LUT4 i19_1_lut (.A(Clk100Hz), .Z(n71)) /* synthesis lut_function=(!(A)) */ ;
    defparam i19_1_lut.init = 16'h5555;
    FD1S3IX \Counter.Counter3Hz_31__i0  (.D(n30[0]), .CK(Clk200Hz), .CD(n131), 
            .Q(n52[0]));
    defparam \Counter.Counter3Hz_31__i0 .GSR = "DISABLED";
    LUT4 i1_2_lut_adj_1 (.A(\Counter.Clk3Hz ), .B(n131), .Z(n104)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_1.init = 16'h6666;
    FD1S3IX \Counter.Counter03Hz_35__i0  (.D(n42[0]), .CK(Clk200Hz), .CD(n130), 
            .Q(n73[0]));
    defparam \Counter.Counter03Hz_35__i0 .GSR = "DISABLED";
    LUT4 i241_1_lut (.A(n52[0]), .Z(n30[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i241_1_lut.init = 16'h5555;
    LUT4 i243_2_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n30[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i243_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_2 (.A(\Counter.Counter03Hz [3]), .B(\Counter.Counter03Hz [2]), 
         .Z(n4_adj_3)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_2.init = 16'h8888;
    LUT4 i214_2_lut_3_lut_4_lut (.A(\Counter.Counter1Hz [2]), .B(n356), 
         .C(\Counter.Counter1Hz [4]), .D(\Counter.Counter1Hz [3]), .Z(n34[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i214_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_4_lut_adj_3 (.A(\Counter.Counter03Hz [1]), .B(\Counter.Counter03Hz [5]), 
         .C(n4_adj_3), .D(\Counter.Counter03Hz [4]), .Z(n336)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2_4_lut_adj_3.init = 16'hffec;
    LUT4 i191_1_lut (.A(n59[0]), .Z(n34[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i191_1_lut.init = 16'h5555;
    LUT4 i2_2_lut (.A(\Counter.Counter3Hz [2]), .B(\Counter.Counter3Hz [4]), 
         .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i176_4_lut (.A(\Counter.Counter03Hz [7]), .B(\Counter.Counter03Hz [8]), 
         .C(\Counter.Counter03Hz [6]), .D(n336), .Z(n130)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i176_4_lut.init = 16'hc888;
    LUT4 i1_2_lut_adj_4 (.A(\Counter.Clk03Hz ), .B(n130), .Z(n108)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_4.init = 16'h6666;
    LUT4 i260_2_lut_3_lut_rep_3_4_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [3]), .D(\Counter.Counter3Hz [2]), .Z(n355)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i260_2_lut_3_lut_rep_3_4_lut.init = 16'h8000;
    FD1S3IX \Counter.Counter1Hz_33__i5  (.D(n34[5]), .CK(Clk200Hz), .CD(n132), 
            .Q(\Counter.Counter1Hz [5]));
    defparam \Counter.Counter1Hz_33__i5 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_33__i4  (.D(n34[4]), .CK(Clk200Hz), .CD(n132), 
            .Q(\Counter.Counter1Hz [4]));
    defparam \Counter.Counter1Hz_33__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_33__i3  (.D(n34[3]), .CK(Clk200Hz), .CD(n132), 
            .Q(\Counter.Counter1Hz [3]));
    defparam \Counter.Counter1Hz_33__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_33__i2  (.D(n34[2]), .CK(Clk200Hz), .CD(n132), 
            .Q(\Counter.Counter1Hz [2]));
    defparam \Counter.Counter1Hz_33__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_33__i1  (.D(n34[1]), .CK(Clk200Hz), .CD(n132), 
            .Q(n59[1]));
    defparam \Counter.Counter1Hz_33__i1 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_31__i5  (.D(n30[5]), .CK(Clk200Hz), .CD(n131), 
            .Q(\Counter.Counter3Hz [5]));
    defparam \Counter.Counter3Hz_31__i5 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_31__i4  (.D(n30[4]), .CK(Clk200Hz), .CD(n131), 
            .Q(\Counter.Counter3Hz [4]));
    defparam \Counter.Counter3Hz_31__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_31__i3  (.D(n30[3]), .CK(Clk200Hz), .CD(n131), 
            .Q(\Counter.Counter3Hz [3]));
    defparam \Counter.Counter3Hz_31__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_31__i2  (.D(n30[2]), .CK(Clk200Hz), .CD(n131), 
            .Q(\Counter.Counter3Hz [2]));
    defparam \Counter.Counter3Hz_31__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_31__i1  (.D(n30[1]), .CK(Clk200Hz), .CD(n131), 
            .Q(\Counter.Counter3Hz [1]));
    defparam \Counter.Counter3Hz_31__i1 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_35__i8  (.D(n42[8]), .CK(Clk200Hz), .CD(n130), 
            .Q(\Counter.Counter03Hz [8]));
    defparam \Counter.Counter03Hz_35__i8 .GSR = "DISABLED";
    LUT4 i271_3_lut (.A(\Counter.Counter3Hz [5]), .B(\Counter.Counter3Hz [4]), 
         .C(n355), .Z(n30[5])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i271_3_lut.init = 16'h6a6a;
    CCU2D \Counter.Counter03Hz_35_add_4_1  (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(n73[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n327), .S1(n42[0]));
    defparam \Counter.Counter03Hz_35_add_4_1 .INIT0 = 16'hF000;
    defparam \Counter.Counter03Hz_35_add_4_1 .INIT1 = 16'h0555;
    defparam \Counter.Counter03Hz_35_add_4_1 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_35_add_4_1 .INJECT1_1 = "NO";
    CCU2D \Counter.Counter03Hz_35_add_4_5  (.A0(\Counter.Counter03Hz [3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\Counter.Counter03Hz [4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n328), .COUT(n329), 
          .S0(n42[3]), .S1(n42[4]));
    defparam \Counter.Counter03Hz_35_add_4_5 .INIT0 = 16'hfaaa;
    defparam \Counter.Counter03Hz_35_add_4_5 .INIT1 = 16'hfaaa;
    defparam \Counter.Counter03Hz_35_add_4_5 .INJECT1_0 = "NO";
    defparam \Counter.Counter03Hz_35_add_4_5 .INJECT1_1 = "NO";
    LUT4 i257_2_lut_3_lut_4_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [3]), .D(\Counter.Counter3Hz [2]), .Z(n30[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i257_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i290 (.BLUT(n343), .ALUT(n344), .C0(MRIGHT[1]), .Z(D15_c));
    LUT4 i193_2_lut (.A(n59[1]), .B(n59[0]), .Z(n34[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i193_2_lut.init = 16'h6666;
    FD1S3IX \Counter.Counter03Hz_35__i7  (.D(n42[7]), .CK(Clk200Hz), .CD(n130), 
            .Q(\Counter.Counter03Hz [7]));
    defparam \Counter.Counter03Hz_35__i7 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_35__i6  (.D(n42[6]), .CK(Clk200Hz), .CD(n130), 
            .Q(\Counter.Counter03Hz [6]));
    defparam \Counter.Counter03Hz_35__i6 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_35__i5  (.D(n42[5]), .CK(Clk200Hz), .CD(n130), 
            .Q(\Counter.Counter03Hz [5]));
    defparam \Counter.Counter03Hz_35__i5 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_35__i4  (.D(n42[4]), .CK(Clk200Hz), .CD(n130), 
            .Q(\Counter.Counter03Hz [4]));
    defparam \Counter.Counter03Hz_35__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_35__i3  (.D(n42[3]), .CK(Clk200Hz), .CD(n130), 
            .Q(\Counter.Counter03Hz [3]));
    defparam \Counter.Counter03Hz_35__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_35__i2  (.D(n42[2]), .CK(Clk200Hz), .CD(n130), 
            .Q(\Counter.Counter03Hz [2]));
    defparam \Counter.Counter03Hz_35__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter03Hz_35__i1  (.D(n42[1]), .CK(Clk200Hz), .CD(n130), 
            .Q(\Counter.Counter03Hz [1]));
    defparam \Counter.Counter03Hz_35__i1 .GSR = "DISABLED";
    LUT4 i1_2_lut_adj_5 (.A(\Counter.Counter1Hz [2]), .B(\Counter.Counter1Hz [3]), 
         .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_5.init = 16'heeee;
    LUT4 i250_2_lut_3_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .C(\Counter.Counter3Hz [2]), 
         .Z(n30[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i250_2_lut_3_lut.init = 16'h7878;
    LUT4 i246_2_lut_rep_5 (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n357)) /* synthesis lut_function=(A (B)) */ ;
    defparam i246_2_lut_rep_5.init = 16'h8888;
    LUT4 i207_2_lut_3_lut_4_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [2]), .Z(n34[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i207_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i200_2_lut_3_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [2]), 
         .Z(n34[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i200_2_lut_3_lut.init = 16'h7878;
    LUT4 i203_2_lut_rep_2_3_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [2]), 
         .Z(n354)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i203_2_lut_rep_2_3_lut.init = 16'h8080;
    PFUMX i293 (.BLUT(n346), .ALUT(n347), .C0(MLEFT[1]), .Z(D14_c));
    LUT4 i292_3_lut (.A(\Counter.Clk1Hz ), .B(\Counter.Clk3Hz ), .C(MLEFT[0]), 
         .Z(n347)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i292_3_lut.init = 16'hcaca;
    LUT4 i291_3_lut (.A(TLEFT_c), .B(\Counter.Clk03Hz ), .C(MLEFT[0]), 
         .Z(n346)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i291_3_lut.init = 16'hcaca;
    LUT4 i196_2_lut_rep_4 (.A(n59[1]), .B(n59[0]), .Z(n356)) /* synthesis lut_function=(A (B)) */ ;
    defparam i196_2_lut_rep_4.init = 16'h8888;
    LUT4 i264_2_lut_4_lut (.A(\Counter.Counter3Hz [2]), .B(n357), .C(\Counter.Counter3Hz [3]), 
         .D(\Counter.Counter3Hz [4]), .Z(n30[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i264_2_lut_4_lut.init = 16'h7f80;
    LUT4 i221_2_lut_4_lut (.A(\Counter.Counter1Hz [3]), .B(n354), .C(\Counter.Counter1Hz [4]), 
         .D(\Counter.Counter1Hz [5]), .Z(n34[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i221_2_lut_4_lut.init = 16'h7f80;
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
        .PLL1ACKI(GND_net), .TCOC(Clk200Hz)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rrhar/desktop/dt/timer/clkgen.vhd(89[11:36])
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

