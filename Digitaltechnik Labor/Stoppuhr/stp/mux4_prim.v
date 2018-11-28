// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Wed Jun 13 00:50:46 2018
//
// Verilog Description of module mux4
//

module mux4 (D1, D2, D3, D4, Clk, Q, Seg7);   // d:/dt/stoppuhr/sg7mux.vhd(4[8:12])
    input [3:0]D1;   // d:/dt/stoppuhr/sg7mux.vhd(6[2:4])
    input [3:0]D2;   // d:/dt/stoppuhr/sg7mux.vhd(7[2:4])
    input [3:0]D3;   // d:/dt/stoppuhr/sg7mux.vhd(8[2:4])
    input [3:0]D4;   // d:/dt/stoppuhr/sg7mux.vhd(9[2:4])
    input Clk;   // d:/dt/stoppuhr/sg7mux.vhd(10[2:5])
    output [3:0]Q;   // d:/dt/stoppuhr/sg7mux.vhd(12[2:3])
    output [3:0]Seg7;   // d:/dt/stoppuhr/sg7mux.vhd(13[2:6])
    
    wire [3:0]D1_c;   // d:/dt/stoppuhr/sg7mux.vhd(6[2:4])
    wire [3:0]D2_c;   // d:/dt/stoppuhr/sg7mux.vhd(7[2:4])
    wire [3:0]D3_c;   // d:/dt/stoppuhr/sg7mux.vhd(8[2:4])
    wire [3:0]D4_c;   // d:/dt/stoppuhr/sg7mux.vhd(9[2:4])
    wire Clk_c;   // d:/dt/stoppuhr/sg7mux.vhd(10[2:5])
    wire [3:0]Q_c;   // d:/dt/stoppuhr/sg7mux.vhd(12[2:3])
    wire [3:0]Seg7_c;   // d:/dt/stoppuhr/sg7mux.vhd(13[2:6])
    wire [31:0]\dec.cnt ;   // d:/dt/stoppuhr/sg7mux.vhd(20[11:14])
    
    wire GND_net, VCC_net, n1357, n44, n36, n1369, n843, n1364, 
        n1360, n1366, n1494, n1355, n1354, n1493, n1491, n1492, 
        n1486, n1489, n1490, n43, n1488, n1487, n1485, n1484, 
        n1483, n1361, n1639, n1638, n1368, n1359, n1362;
    wire [31:0]n134;
    
    wire n35, n1358, n40, n1363, n56, n54, n52, n50, n48, 
        n1365, n1433, n32, n46, n1356, n1367;
    
    VHI i2 (.Z(VCC_net));
    CCU2D \dec.cnt_130_add_4_31  (.A0(\dec.cnt [29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1368), .COUT(n1369), .S0(n134[29]), .S1(n134[30]));
    defparam \dec.cnt_130_add_4_31 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_31 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_31 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_31 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_130_add_4_33  (.A0(\dec.cnt [31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1369), .S0(n134[31]));
    defparam \dec.cnt_130_add_4_33 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_33 .INIT1 = 16'h0000;
    defparam \dec.cnt_130_add_4_33 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_33 .INJECT1_1 = "NO";
    LUT4 i6_2_lut (.A(\dec.cnt [25]), .B(\dec.cnt [2]), .Z(n35)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i1071_3_lut (.A(D3_c[0]), .B(D4_c[0]), .C(\dec.cnt [0]), .Z(n1487)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1071_3_lut.init = 16'hcaca;
    CCU2D \dec.cnt_130_add_4_15  (.A0(\dec.cnt [13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1360), .COUT(n1361), .S0(n134[13]), .S1(n134[14]));
    defparam \dec.cnt_130_add_4_15 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_15 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_15 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_15 .INJECT1_1 = "NO";
    LUT4 i1067_3_lut (.A(D1_c[1]), .B(D2_c[1]), .C(\dec.cnt [0]), .Z(n1483)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1067_3_lut.init = 16'hcaca;
    LUT4 i23_4_lut (.A(\dec.cnt [13]), .B(n46), .C(n32), .D(\dec.cnt [16]), 
         .Z(n52)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23_4_lut.init = 16'hfffe;
    CCU2D \dec.cnt_130_add_4_13  (.A0(\dec.cnt [11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1359), .COUT(n1360), .S0(n134[11]), .S1(n134[12]));
    defparam \dec.cnt_130_add_4_13 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_13 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_13 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_13 .INJECT1_1 = "NO";
    LUT4 i15_3_lut (.A(\dec.cnt [7]), .B(\dec.cnt [8]), .C(\dec.cnt [24]), 
         .Z(n44)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i15_3_lut.init = 16'hfefe;
    LUT4 i1070_3_lut (.A(D1_c[0]), .B(D2_c[0]), .C(\dec.cnt [0]), .Z(n1486)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1070_3_lut.init = 16'hcaca;
    CCU2D \dec.cnt_130_add_4_29  (.A0(\dec.cnt [27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1367), .COUT(n1368), .S0(n134[27]), .S1(n134[28]));
    defparam \dec.cnt_130_add_4_29 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_29 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_29 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_29 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_130_add_4_11  (.A0(\dec.cnt [9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1358), .COUT(n1359), .S0(n134[9]), .S1(n134[10]));
    defparam \dec.cnt_130_add_4_11 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_11 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_11 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_11 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_130_add_4_9  (.A0(\dec.cnt [7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1357), .COUT(n1358), .S0(n134[7]), .S1(n134[8]));
    defparam \dec.cnt_130_add_4_9 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_9 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_9 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_9 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_130_add_4_27  (.A0(\dec.cnt [25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1366), .COUT(n1367), .S0(n134[25]), .S1(n134[26]));
    defparam \dec.cnt_130_add_4_27 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_27 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_27 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_27 .INJECT1_1 = "NO";
    LUT4 i27_4_lut (.A(n35), .B(n54), .C(n48), .D(n36), .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27_4_lut.init = 16'hfffe;
    CCU2D \dec.cnt_130_add_4_25  (.A0(\dec.cnt [23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1365), .COUT(n1366), .S0(n134[23]), .S1(n134[24]));
    defparam \dec.cnt_130_add_4_25 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_25 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_25 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_25 .INJECT1_1 = "NO";
    LUT4 mux_125_i1_4_lut (.A(Seg7_c[0]), .B(\dec.cnt [0]), .C(n1638), 
         .D(\dec.cnt [1]), .Z(Seg7_c[0])) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+(C+(D)))) */ ;
    defparam mux_125_i1_4_lut.init = 16'ha0a3;
    FD1S3IX \dec.cnt_130__i31  (.D(n134[31]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [31]));
    defparam \dec.cnt_130__i31 .GSR = "DISABLED";
    LUT4 i14_2_lut (.A(\dec.cnt [4]), .B(\dec.cnt [28]), .Z(n43)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14_2_lut.init = 16'heeee;
    LUT4 i28_4_lut (.A(n43), .B(n56), .C(n52), .D(n44), .Z(n1433)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i28_4_lut.init = 16'hfffe;
    CCU2D \dec.cnt_130_add_4_23  (.A0(\dec.cnt [21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1364), .COUT(n1365), .S0(n134[21]), .S1(n134[22]));
    defparam \dec.cnt_130_add_4_23 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_23 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_23 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_23 .INJECT1_1 = "NO";
    LUT4 i1077_3_lut (.A(D3_c[2]), .B(D4_c[2]), .C(\dec.cnt [0]), .Z(n1493)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1077_3_lut.init = 16'hcaca;
    LUT4 mux_125_i2_4_lut (.A(Seg7_c[1]), .B(\dec.cnt [0]), .C(n1638), 
         .D(\dec.cnt [1]), .Z(Seg7_c[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;
    defparam mux_125_i2_4_lut.init = 16'ha0ac;
    FD1S3IX \dec.cnt_130__i0  (.D(n134[0]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [0]));
    defparam \dec.cnt_130__i0 .GSR = "DISABLED";
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 mux_125_i3_4_lut (.A(Seg7_c[2]), .B(\dec.cnt [0]), .C(n1638), 
         .D(\dec.cnt [1]), .Z(Seg7_c[2])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;
    defparam mux_125_i3_4_lut.init = 16'ha3a0;
    PFUMX i1072 (.BLUT(n1486), .ALUT(n1487), .C0(\dec.cnt [1]), .Z(n1488));
    CCU2D \dec.cnt_130_add_4_7  (.A0(\dec.cnt [5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1356), .COUT(n1357), .S0(n134[5]), .S1(n134[6]));
    defparam \dec.cnt_130_add_4_7 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_7 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_7 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_7 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_130_add_4_21  (.A0(\dec.cnt [19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1363), .COUT(n1364), .S0(n134[19]), .S1(n134[20]));
    defparam \dec.cnt_130_add_4_21 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_21 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_21 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_21 .INJECT1_1 = "NO";
    FD1S3IX \dec.cnt_130__i30  (.D(n134[30]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [30]));
    defparam \dec.cnt_130__i30 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i29  (.D(n134[29]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [29]));
    defparam \dec.cnt_130__i29 .GSR = "DISABLED";
    LUT4 i1076_3_lut (.A(D1_c[2]), .B(D2_c[2]), .C(\dec.cnt [0]), .Z(n1492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1076_3_lut.init = 16'hcaca;
    FD1S3IX \dec.cnt_130__i28  (.D(n134[28]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [28]));
    defparam \dec.cnt_130__i28 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i27  (.D(n134[27]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [27]));
    defparam \dec.cnt_130__i27 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i26  (.D(n134[26]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [26]));
    defparam \dec.cnt_130__i26 .GSR = "DISABLED";
    LUT4 i3_2_lut (.A(\dec.cnt [9]), .B(\dec.cnt [26]), .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    FD1S3IX \dec.cnt_130__i25  (.D(n134[25]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [25]));
    defparam \dec.cnt_130__i25 .GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(\dec.cnt [0]), .B(\dec.cnt [1]), .C(n1433), 
         .D(\dec.cnt [31]), .Z(n843)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h00f8;
    FD1S3IX \dec.cnt_130__i24  (.D(n134[24]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [24]));
    defparam \dec.cnt_130__i24 .GSR = "DISABLED";
    LUT4 i800_2_lut_rep_9 (.A(\dec.cnt [0]), .B(\dec.cnt [1]), .Z(n1639)) /* synthesis lut_function=(A (B)) */ ;
    defparam i800_2_lut_rep_9.init = 16'h8888;
    PFUMX i1075 (.BLUT(n1489), .ALUT(n1490), .C0(\dec.cnt [1]), .Z(n1491));
    FD1S3IX \dec.cnt_130__i23  (.D(n134[23]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [23]));
    defparam \dec.cnt_130__i23 .GSR = "DISABLED";
    CCU2D \dec.cnt_130_add_4_5  (.A0(\dec.cnt [3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1355), .COUT(n1356), .S0(n134[3]), .S1(n134[4]));
    defparam \dec.cnt_130_add_4_5 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_5 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_5 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_5 .INJECT1_1 = "NO";
    FD1S3IX \dec.cnt_130__i22  (.D(n134[22]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [22]));
    defparam \dec.cnt_130__i22 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i21  (.D(n134[21]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [21]));
    defparam \dec.cnt_130__i21 .GSR = "DISABLED";
    IB Clk_pad (.I(Clk), .O(Clk_c));
    FD1S3IX \dec.cnt_130__i20  (.D(n134[20]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [20]));
    defparam \dec.cnt_130__i20 .GSR = "DISABLED";
    IB D4_pad_0 (.I(D4[0]), .O(D4_c[0]));
    IB D4_pad_1 (.I(D4[1]), .O(D4_c[1]));
    FD1S3IX \dec.cnt_130__i19  (.D(n134[19]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [19]));
    defparam \dec.cnt_130__i19 .GSR = "DISABLED";
    IB D4_pad_2 (.I(D4[2]), .O(D4_c[2]));
    IB D4_pad_3 (.I(D4[3]), .O(D4_c[3]));
    FD1S3IX \dec.cnt_130__i18  (.D(n134[18]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [18]));
    defparam \dec.cnt_130__i18 .GSR = "DISABLED";
    IB D3_pad_0 (.I(D3[0]), .O(D3_c[0]));
    IB D3_pad_1 (.I(D3[1]), .O(D3_c[1]));
    FD1S3IX \dec.cnt_130__i17  (.D(n134[17]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [17]));
    defparam \dec.cnt_130__i17 .GSR = "DISABLED";
    IB D3_pad_2 (.I(D3[2]), .O(D3_c[2]));
    IB D3_pad_3 (.I(D3[3]), .O(D3_c[3]));
    FD1S3IX \dec.cnt_130__i16  (.D(n134[16]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [16]));
    defparam \dec.cnt_130__i16 .GSR = "DISABLED";
    IB D2_pad_0 (.I(D2[0]), .O(D2_c[0]));
    IB D2_pad_1 (.I(D2[1]), .O(D2_c[1]));
    FD1S3IX \dec.cnt_130__i15  (.D(n134[15]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [15]));
    defparam \dec.cnt_130__i15 .GSR = "DISABLED";
    IB D2_pad_2 (.I(D2[2]), .O(D2_c[2]));
    IB D2_pad_3 (.I(D2[3]), .O(D2_c[3]));
    IB D1_pad_0 (.I(D1[0]), .O(D1_c[0]));
    IB D1_pad_1 (.I(D1[1]), .O(D1_c[1]));
    IB D1_pad_2 (.I(D1[2]), .O(D1_c[2]));
    LUT4 i17_4_lut (.A(\dec.cnt [14]), .B(\dec.cnt [23]), .C(\dec.cnt [30]), 
         .D(\dec.cnt [15]), .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i17_4_lut.init = 16'hfffe;
    IB D1_pad_3 (.I(D1[3]), .O(D1_c[3]));
    OB Seg7_pad_0 (.I(Seg7_c[0]), .O(Seg7[0]));
    OB Seg7_pad_1 (.I(Seg7_c[1]), .O(Seg7[1]));
    FD1S3IX \dec.cnt_130__i14  (.D(n134[14]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [14]));
    defparam \dec.cnt_130__i14 .GSR = "DISABLED";
    OB Seg7_pad_2 (.I(Seg7_c[2]), .O(Seg7[2]));
    OB Seg7_pad_3 (.I(Seg7_c[3]), .O(Seg7[3]));
    OB Q_pad_0 (.I(Q_c[0]), .O(Q[0]));
    OB Q_pad_1 (.I(Q_c[1]), .O(Q[1]));
    OB Q_pad_2 (.I(Q_c[2]), .O(Q[2]));
    OB Q_pad_3 (.I(Q_c[3]), .O(Q[3]));
    FD1S3IX \dec.cnt_130__i13  (.D(n134[13]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [13]));
    defparam \dec.cnt_130__i13 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i12  (.D(n134[12]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [12]));
    defparam \dec.cnt_130__i12 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i11  (.D(n134[11]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [11]));
    defparam \dec.cnt_130__i11 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i10  (.D(n134[10]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [10]));
    defparam \dec.cnt_130__i10 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i9  (.D(n134[9]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [9]));
    defparam \dec.cnt_130__i9 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i8  (.D(n134[8]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [8]));
    defparam \dec.cnt_130__i8 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i7  (.D(n134[7]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [7]));
    defparam \dec.cnt_130__i7 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i6  (.D(n134[6]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [6]));
    defparam \dec.cnt_130__i6 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i5  (.D(n134[5]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [5]));
    defparam \dec.cnt_130__i5 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i4  (.D(n134[4]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [4]));
    defparam \dec.cnt_130__i4 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i3  (.D(n134[3]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [3]));
    defparam \dec.cnt_130__i3 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i2  (.D(n134[2]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [2]));
    defparam \dec.cnt_130__i2 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_130__i1  (.D(n134[1]), .CK(Clk_c), .CD(n843), .Q(\dec.cnt [1]));
    defparam \dec.cnt_130__i1 .GSR = "DISABLED";
    PFUMX i1078 (.BLUT(n1492), .ALUT(n1493), .C0(\dec.cnt [1]), .Z(n1494));
    LUT4 i11_2_lut (.A(\dec.cnt [17]), .B(\dec.cnt [12]), .Z(n40)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11_2_lut.init = 16'heeee;
    LUT4 i21_4_lut (.A(\dec.cnt [18]), .B(\dec.cnt [19]), .C(\dec.cnt [22]), 
         .D(\dec.cnt [6]), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i1074_3_lut (.A(D3_c[3]), .B(D4_c[3]), .C(\dec.cnt [0]), .Z(n1490)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1074_3_lut.init = 16'hcaca;
    CCU2D \dec.cnt_130_add_4_19  (.A0(\dec.cnt [17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1362), .COUT(n1363), .S0(n134[17]), .S1(n134[18]));
    defparam \dec.cnt_130_add_4_19 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_19 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_19 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_19 .INJECT1_1 = "NO";
    LUT4 mux_113_i4_3_lut_4_lut (.A(\dec.cnt [31]), .B(n1433), .C(n1491), 
         .D(Q_c[3]), .Z(Q_c[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_113_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 i7_2_lut (.A(\dec.cnt [29]), .B(\dec.cnt [21]), .Z(n36)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7_2_lut.init = 16'heeee;
    CCU2D \dec.cnt_130_add_4_3  (.A0(\dec.cnt [1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1354), .COUT(n1355), .S0(n134[1]), .S1(n134[2]));
    defparam \dec.cnt_130_add_4_3 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_3 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_3 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_3 .INJECT1_1 = "NO";
    LUT4 mux_113_i3_3_lut_4_lut (.A(\dec.cnt [31]), .B(n1433), .C(n1494), 
         .D(Q_c[2]), .Z(Q_c[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_113_i3_3_lut_4_lut.init = 16'hfe10;
    CCU2D \dec.cnt_130_add_4_1  (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1354), .S1(n134[0]));
    defparam \dec.cnt_130_add_4_1 .INIT0 = 16'hF000;
    defparam \dec.cnt_130_add_4_1 .INIT1 = 16'h0555;
    defparam \dec.cnt_130_add_4_1 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_1 .INJECT1_1 = "NO";
    LUT4 i1073_3_lut (.A(D1_c[3]), .B(D2_c[3]), .C(\dec.cnt [0]), .Z(n1489)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1073_3_lut.init = 16'hcaca;
    LUT4 i19_4_lut (.A(\dec.cnt [27]), .B(\dec.cnt [11]), .C(\dec.cnt [20]), 
         .D(\dec.cnt [3]), .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i25_4_lut (.A(\dec.cnt [5]), .B(n50), .C(n40), .D(\dec.cnt [10]), 
         .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i25_4_lut.init = 16'hfffe;
    CCU2D \dec.cnt_130_add_4_17  (.A0(\dec.cnt [15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1361), .COUT(n1362), .S0(n134[15]), .S1(n134[16]));
    defparam \dec.cnt_130_add_4_17 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_17 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_130_add_4_17 .INJECT1_0 = "NO";
    defparam \dec.cnt_130_add_4_17 .INJECT1_1 = "NO";
    PFUMX i1069 (.BLUT(n1483), .ALUT(n1484), .C0(\dec.cnt [1]), .Z(n1485));
    LUT4 mux_113_i1_3_lut_4_lut (.A(\dec.cnt [31]), .B(n1433), .C(n1488), 
         .D(Q_c[0]), .Z(Q_c[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_113_i1_3_lut_4_lut.init = 16'hfe10;
    VLO i1 (.Z(GND_net));
    LUT4 mux_113_i2_3_lut_4_lut (.A(\dec.cnt [31]), .B(n1433), .C(n1485), 
         .D(Q_c[1]), .Z(Q_c[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_113_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_125_i4_3_lut_4_lut (.A(\dec.cnt [31]), .B(n1433), .C(n1639), 
         .D(Seg7_c[3]), .Z(Seg7_c[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_125_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_8 (.A(\dec.cnt [31]), .B(n1433), .Z(n1638)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_8.init = 16'heeee;
    LUT4 i1068_3_lut (.A(D3_c[1]), .B(D4_c[1]), .C(\dec.cnt [0]), .Z(n1484)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1068_3_lut.init = 16'hcaca;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

