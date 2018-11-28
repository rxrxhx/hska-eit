// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Fri Jun 01 14:18:16 2018
//
// Verilog Description of module counter
//

module counter (clkleft, RES, DIR, Q);   // d:/dt/bitcount4.vhd(6[8:15])
    input clkleft;   // d:/dt/bitcount4.vhd(8[10:17])
    input RES;   // d:/dt/bitcount4.vhd(8[18:21])
    input DIR;   // d:/dt/bitcount4.vhd(8[22:25])
    output [3:0]Q;   // d:/dt/bitcount4.vhd(9[4:5])
    
    wire clkleft_c;   // d:/dt/bitcount4.vhd(8[10:17])
    wire RES_c;   // d:/dt/bitcount4.vhd(8[18:21])
    wire DIR_c;   // d:/dt/bitcount4.vhd(8[22:25])
    wire [3:0]Q_c;   // d:/dt/bitcount4.vhd(9[4:5])
    wire [31:0]x;   // d:/dt/bitcount4.vhd(15[18:19])
    
    wire GND_net, VCC_net, n1188, n1128, n1202, n393, n1131, n1182, 
        n1140, n1139, n1138, n1137, n1130, n1127, n1126, n1136, 
        n1135, n1134, n20, n22, n26, n24, n22_adj_1, n1133, 
        n1129, n23, n1196, n29, n17, n18, n28, n30, n1179, 
        n26_adj_2, n1125, n1181, n1132, n1227;
    wire [31:0]n134;
    wire [31:0]n168;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i8_4_lut (.A(x[5]), .B(x[22]), .C(x[31]), .D(x[28]), .Z(n22_adj_1)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    OB Q_pad_3 (.I(Q_c[3]), .O(Q[3]));
    LUT4 i12_4_lut (.A(RES_c), .B(n24), .C(n1188), .D(x[6]), .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(x[4]), .B(n26), .C(n22_adj_1), .D(n1227), .Z(n1179)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(n1179), .B(x[2]), .Z(Q_c[2])) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    CCU2D x_73_add_4_33 (.A0(DIR_c), .B0(x[31]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1140), 
          .S0(n134[31]));
    defparam x_73_add_4_33.INIT0 = 16'h5666;
    defparam x_73_add_4_33.INIT1 = 16'h0000;
    defparam x_73_add_4_33.INJECT1_0 = "NO";
    defparam x_73_add_4_33.INJECT1_1 = "NO";
    CCU2D x_73_add_4_13 (.A0(DIR_c), .B0(x[11]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[12]), .C1(GND_net), .D1(GND_net), .CIN(n1130), 
          .COUT(n1131), .S0(n134[11]), .S1(n134[12]));
    defparam x_73_add_4_13.INIT0 = 16'h5666;
    defparam x_73_add_4_13.INIT1 = 16'h5666;
    defparam x_73_add_4_13.INJECT1_0 = "NO";
    defparam x_73_add_4_13.INJECT1_1 = "NO";
    CCU2D x_73_add_4_31 (.A0(DIR_c), .B0(x[29]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[30]), .C1(GND_net), .D1(GND_net), .CIN(n1139), 
          .COUT(n1140), .S0(n134[29]), .S1(n134[30]));
    defparam x_73_add_4_31.INIT0 = 16'h5666;
    defparam x_73_add_4_31.INIT1 = 16'h5666;
    defparam x_73_add_4_31.INJECT1_0 = "NO";
    defparam x_73_add_4_31.INJECT1_1 = "NO";
    LUT4 i10_4_lut (.A(x[15]), .B(x[26]), .C(x[19]), .D(x[29]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(x[30]), .B(x[8]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    CCU2D x_73_add_4_29 (.A0(DIR_c), .B0(x[27]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[28]), .C1(GND_net), .D1(GND_net), .CIN(n1138), 
          .COUT(n1139), .S0(n134[27]), .S1(n134[28]));
    defparam x_73_add_4_29.INIT0 = 16'h5666;
    defparam x_73_add_4_29.INIT1 = 16'h5666;
    defparam x_73_add_4_29.INJECT1_0 = "NO";
    defparam x_73_add_4_29.INJECT1_1 = "NO";
    CCU2D x_73_add_4_11 (.A0(DIR_c), .B0(x[9]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[10]), .C1(GND_net), .D1(GND_net), .CIN(n1129), 
          .COUT(n1130), .S0(n134[9]), .S1(n134[10]));
    defparam x_73_add_4_11.INIT0 = 16'h5666;
    defparam x_73_add_4_11.INIT1 = 16'h5666;
    defparam x_73_add_4_11.INJECT1_0 = "NO";
    defparam x_73_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_1 (.A(n1179), .B(x[0]), .Z(Q_c[0])) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_1.init = 16'h4444;
    CCU2D x_73_add_4_27 (.A0(DIR_c), .B0(x[25]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[26]), .C1(GND_net), .D1(GND_net), .CIN(n1137), 
          .COUT(n1138), .S0(n134[25]), .S1(n134[26]));
    defparam x_73_add_4_27.INIT0 = 16'h5666;
    defparam x_73_add_4_27.INIT1 = 16'h5666;
    defparam x_73_add_4_27.INJECT1_0 = "NO";
    defparam x_73_add_4_27.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_2 (.A(n1179), .B(x[1]), .Z(Q_c[1])) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_2.init = 16'h4444;
    CCU2D x_73_add_4_7 (.A0(DIR_c), .B0(x[5]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[6]), .C1(GND_net), .D1(GND_net), .CIN(n1127), 
          .COUT(n1128), .S0(n134[5]), .S1(n134[6]));
    defparam x_73_add_4_7.INIT0 = 16'h5666;
    defparam x_73_add_4_7.INIT1 = 16'h5666;
    defparam x_73_add_4_7.INJECT1_0 = "NO";
    defparam x_73_add_4_7.INJECT1_1 = "NO";
    CCU2D x_73_add_4_25 (.A0(DIR_c), .B0(x[23]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[24]), .C1(GND_net), .D1(GND_net), .CIN(n1136), 
          .COUT(n1137), .S0(n134[23]), .S1(n134[24]));
    defparam x_73_add_4_25.INIT0 = 16'h5666;
    defparam x_73_add_4_25.INIT1 = 16'h5666;
    defparam x_73_add_4_25.INJECT1_0 = "NO";
    defparam x_73_add_4_25.INJECT1_1 = "NO";
    CCU2D x_73_add_4_5 (.A0(DIR_c), .B0(x[3]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[4]), .C1(GND_net), .D1(GND_net), .CIN(n1126), 
          .COUT(n1127), .S0(n134[3]), .S1(n134[4]));
    defparam x_73_add_4_5.INIT0 = 16'h5666;
    defparam x_73_add_4_5.INIT1 = 16'h5666;
    defparam x_73_add_4_5.INJECT1_0 = "NO";
    defparam x_73_add_4_5.INJECT1_1 = "NO";
    LUT4 i12_4_lut_adj_3 (.A(x[25]), .B(x[11]), .C(x[23]), .D(x[14]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut_adj_3.init = 16'hfffe;
    CCU2D x_73_add_4_23 (.A0(DIR_c), .B0(x[21]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[22]), .C1(GND_net), .D1(GND_net), .CIN(n1135), 
          .COUT(n1136), .S0(n134[21]), .S1(n134[22]));
    defparam x_73_add_4_23.INIT0 = 16'h5666;
    defparam x_73_add_4_23.INIT1 = 16'h5666;
    defparam x_73_add_4_23.INJECT1_0 = "NO";
    defparam x_73_add_4_23.INJECT1_1 = "NO";
    CCU2D x_73_add_4_21 (.A0(DIR_c), .B0(x[19]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[20]), .C1(GND_net), .D1(GND_net), .CIN(n1134), 
          .COUT(n1135), .S0(n134[19]), .S1(n134[20]));
    defparam x_73_add_4_21.INIT0 = 16'h5666;
    defparam x_73_add_4_21.INIT1 = 16'h5666;
    defparam x_73_add_4_21.INJECT1_0 = "NO";
    defparam x_73_add_4_21.INJECT1_1 = "NO";
    LUT4 x_73_mux_6_i2_3_lut (.A(n134[1]), .B(DIR_c), .C(n393), .Z(n168[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam x_73_mux_6_i2_3_lut.init = 16'hcaca;
    LUT4 x_73_mux_6_i3_3_lut (.A(n134[2]), .B(DIR_c), .C(n393), .Z(n168[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam x_73_mux_6_i3_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut (.A(x[20]), .B(x[27]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i733_4_lut_4_lut (.A(n1227), .B(n20), .C(n1202), .D(n1182), 
         .Z(n393)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i733_4_lut_4_lut.init = 16'h0004;
    LUT4 i10_4_lut_adj_4 (.A(x[13]), .B(x[7]), .C(x[24]), .D(x[21]), 
         .Z(n26_adj_2)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut_adj_4.init = 16'hfffe;
    PFUMX i36 (.BLUT(n1181), .ALUT(n23), .C0(x[0]), .Z(n29));
    LUT4 i15_4_lut_rep_4 (.A(n17), .B(n30), .C(n26_adj_2), .D(n18), 
         .Z(n1227)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut_rep_4.init = 16'hfffe;
    LUT4 i1_4_lut (.A(DIR_c), .B(x[1]), .C(x[3]), .D(x[2]), .Z(n1181)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0002;
    LUT4 i14_4_lut (.A(x[9]), .B(n28), .C(n22), .D(x[16]), .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_5 (.A(x[12]), .B(x[18]), .Z(n17)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_5.init = 16'heeee;
    CCU2D x_73_add_4_9 (.A0(DIR_c), .B0(x[7]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[8]), .C1(GND_net), .D1(GND_net), .CIN(n1128), 
          .COUT(n1129), .S0(n134[7]), .S1(n134[8]));
    defparam x_73_add_4_9.INIT0 = 16'h5666;
    defparam x_73_add_4_9.INIT1 = 16'h5666;
    defparam x_73_add_4_9.INJECT1_0 = "NO";
    defparam x_73_add_4_9.INJECT1_1 = "NO";
    CCU2D x_73_add_4_3 (.A0(DIR_c), .B0(x[1]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[2]), .C1(GND_net), .D1(GND_net), .CIN(n1125), 
          .COUT(n1126), .S0(n134[1]), .S1(n134[2]));
    defparam x_73_add_4_3.INIT0 = 16'h5666;
    defparam x_73_add_4_3.INIT1 = 16'h5666;
    defparam x_73_add_4_3.INJECT1_0 = "NO";
    defparam x_73_add_4_3.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    FD1S3AX x_73__i0 (.D(n168[0]), .CK(clkleft_c), .Q(x[0]));
    defparam x_73__i0.GSR = "DISABLED";
    CCU2D x_73_add_4_19 (.A0(DIR_c), .B0(x[17]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[18]), .C1(GND_net), .D1(GND_net), .CIN(n1133), 
          .COUT(n1134), .S0(n134[17]), .S1(n134[18]));
    defparam x_73_add_4_19.INIT0 = 16'h5666;
    defparam x_73_add_4_19.INIT1 = 16'h5666;
    defparam x_73_add_4_19.INJECT1_0 = "NO";
    defparam x_73_add_4_19.INJECT1_1 = "NO";
    LUT4 i715_2_lut (.A(x[10]), .B(x[17]), .Z(n1188)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i715_2_lut.init = 16'heeee;
    LUT4 i723_4_lut (.A(x[22]), .B(x[6]), .C(x[29]), .D(x[5]), .Z(n1196)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i723_4_lut.init = 16'hfffe;
    LUT4 i7_3_lut (.A(n29), .B(x[26]), .C(x[15]), .Z(n20)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i7_3_lut.init = 16'h0202;
    LUT4 i729_4_lut (.A(n1188), .B(n1196), .C(x[19]), .D(x[28]), .Z(n1202)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i729_4_lut.init = 16'hfffe;
    LUT4 i709_2_lut (.A(x[4]), .B(x[31]), .Z(n1182)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i709_2_lut.init = 16'heeee;
    CCU2D x_73_add_4_17 (.A0(DIR_c), .B0(x[15]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[16]), .C1(GND_net), .D1(GND_net), .CIN(n1132), 
          .COUT(n1133), .S0(n134[15]), .S1(n134[16]));
    defparam x_73_add_4_17.INIT0 = 16'h5666;
    defparam x_73_add_4_17.INIT1 = 16'h5666;
    defparam x_73_add_4_17.INJECT1_0 = "NO";
    defparam x_73_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_6 (.A(n1179), .B(x[3]), .Z(Q_c[3])) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_6.init = 16'h4444;
    CCU2D x_73_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1125), 
          .S1(n134[0]));
    defparam x_73_add_4_1.INIT0 = 16'hF000;
    defparam x_73_add_4_1.INIT1 = 16'h0555;
    defparam x_73_add_4_1.INJECT1_0 = "NO";
    defparam x_73_add_4_1.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 x_73_mux_6_i1_3_lut (.A(n134[0]), .B(DIR_c), .C(n393), .Z(n168[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam x_73_mux_6_i1_3_lut.init = 16'hcaca;
    LUT4 x_73_mux_6_i4_3_lut (.A(n134[3]), .B(DIR_c), .C(n393), .Z(n168[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam x_73_mux_6_i4_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(x[3]), .B(x[1]), .C(x[2]), .D(DIR_c), .Z(n23)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0080;
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D x_73_add_4_15 (.A0(DIR_c), .B0(x[13]), .C0(GND_net), .D0(GND_net), 
          .A1(DIR_c), .B1(x[14]), .C1(GND_net), .D1(GND_net), .CIN(n1131), 
          .COUT(n1132), .S0(n134[13]), .S1(n134[14]));
    defparam x_73_add_4_15.INIT0 = 16'h5666;
    defparam x_73_add_4_15.INIT1 = 16'h5666;
    defparam x_73_add_4_15.INJECT1_0 = "NO";
    defparam x_73_add_4_15.INJECT1_1 = "NO";
    FD1S3IX x_73__i31 (.D(n134[31]), .CK(clkleft_c), .CD(n393), .Q(x[31]));
    defparam x_73__i31.GSR = "DISABLED";
    OB Q_pad_2 (.I(Q_c[2]), .O(Q[2]));
    FD1S3IX x_73__i30 (.D(n134[30]), .CK(clkleft_c), .CD(n393), .Q(x[30]));
    defparam x_73__i30.GSR = "DISABLED";
    FD1S3IX x_73__i29 (.D(n134[29]), .CK(clkleft_c), .CD(n393), .Q(x[29]));
    defparam x_73__i29.GSR = "DISABLED";
    FD1S3IX x_73__i28 (.D(n134[28]), .CK(clkleft_c), .CD(n393), .Q(x[28]));
    defparam x_73__i28.GSR = "DISABLED";
    FD1S3IX x_73__i27 (.D(n134[27]), .CK(clkleft_c), .CD(n393), .Q(x[27]));
    defparam x_73__i27.GSR = "DISABLED";
    FD1S3IX x_73__i26 (.D(n134[26]), .CK(clkleft_c), .CD(n393), .Q(x[26]));
    defparam x_73__i26.GSR = "DISABLED";
    FD1S3IX x_73__i25 (.D(n134[25]), .CK(clkleft_c), .CD(n393), .Q(x[25]));
    defparam x_73__i25.GSR = "DISABLED";
    FD1S3IX x_73__i24 (.D(n134[24]), .CK(clkleft_c), .CD(n393), .Q(x[24]));
    defparam x_73__i24.GSR = "DISABLED";
    FD1S3IX x_73__i23 (.D(n134[23]), .CK(clkleft_c), .CD(n393), .Q(x[23]));
    defparam x_73__i23.GSR = "DISABLED";
    FD1S3IX x_73__i22 (.D(n134[22]), .CK(clkleft_c), .CD(n393), .Q(x[22]));
    defparam x_73__i22.GSR = "DISABLED";
    FD1S3IX x_73__i21 (.D(n134[21]), .CK(clkleft_c), .CD(n393), .Q(x[21]));
    defparam x_73__i21.GSR = "DISABLED";
    FD1S3IX x_73__i20 (.D(n134[20]), .CK(clkleft_c), .CD(n393), .Q(x[20]));
    defparam x_73__i20.GSR = "DISABLED";
    FD1S3IX x_73__i19 (.D(n134[19]), .CK(clkleft_c), .CD(n393), .Q(x[19]));
    defparam x_73__i19.GSR = "DISABLED";
    FD1S3IX x_73__i18 (.D(n134[18]), .CK(clkleft_c), .CD(n393), .Q(x[18]));
    defparam x_73__i18.GSR = "DISABLED";
    FD1S3IX x_73__i17 (.D(n134[17]), .CK(clkleft_c), .CD(n393), .Q(x[17]));
    defparam x_73__i17.GSR = "DISABLED";
    FD1S3IX x_73__i16 (.D(n134[16]), .CK(clkleft_c), .CD(n393), .Q(x[16]));
    defparam x_73__i16.GSR = "DISABLED";
    FD1S3IX x_73__i15 (.D(n134[15]), .CK(clkleft_c), .CD(n393), .Q(x[15]));
    defparam x_73__i15.GSR = "DISABLED";
    FD1S3IX x_73__i14 (.D(n134[14]), .CK(clkleft_c), .CD(n393), .Q(x[14]));
    defparam x_73__i14.GSR = "DISABLED";
    FD1S3IX x_73__i13 (.D(n134[13]), .CK(clkleft_c), .CD(n393), .Q(x[13]));
    defparam x_73__i13.GSR = "DISABLED";
    FD1S3IX x_73__i12 (.D(n134[12]), .CK(clkleft_c), .CD(n393), .Q(x[12]));
    defparam x_73__i12.GSR = "DISABLED";
    FD1S3IX x_73__i11 (.D(n134[11]), .CK(clkleft_c), .CD(n393), .Q(x[11]));
    defparam x_73__i11.GSR = "DISABLED";
    FD1S3IX x_73__i10 (.D(n134[10]), .CK(clkleft_c), .CD(n393), .Q(x[10]));
    defparam x_73__i10.GSR = "DISABLED";
    FD1S3IX x_73__i9 (.D(n134[9]), .CK(clkleft_c), .CD(n393), .Q(x[9]));
    defparam x_73__i9.GSR = "DISABLED";
    FD1S3IX x_73__i8 (.D(n134[8]), .CK(clkleft_c), .CD(n393), .Q(x[8]));
    defparam x_73__i8.GSR = "DISABLED";
    FD1S3IX x_73__i7 (.D(n134[7]), .CK(clkleft_c), .CD(n393), .Q(x[7]));
    defparam x_73__i7.GSR = "DISABLED";
    FD1S3IX x_73__i6 (.D(n134[6]), .CK(clkleft_c), .CD(n393), .Q(x[6]));
    defparam x_73__i6.GSR = "DISABLED";
    FD1S3IX x_73__i5 (.D(n134[5]), .CK(clkleft_c), .CD(n393), .Q(x[5]));
    defparam x_73__i5.GSR = "DISABLED";
    FD1S3IX x_73__i4 (.D(n134[4]), .CK(clkleft_c), .CD(n393), .Q(x[4]));
    defparam x_73__i4.GSR = "DISABLED";
    FD1S3AX x_73__i3 (.D(n168[3]), .CK(clkleft_c), .Q(x[3]));
    defparam x_73__i3.GSR = "DISABLED";
    FD1S3AX x_73__i2 (.D(n168[2]), .CK(clkleft_c), .Q(x[2]));
    defparam x_73__i2.GSR = "DISABLED";
    FD1S3AX x_73__i1 (.D(n168[1]), .CK(clkleft_c), .Q(x[1]));
    defparam x_73__i1.GSR = "DISABLED";
    OB Q_pad_1 (.I(Q_c[1]), .O(Q[1]));
    OB Q_pad_0 (.I(Q_c[0]), .O(Q[0]));
    IB clkleft_pad (.I(clkleft), .O(clkleft_c));
    IB RES_pad (.I(RES), .O(RES_c));
    IB DIR_pad (.I(DIR), .O(DIR_c));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

