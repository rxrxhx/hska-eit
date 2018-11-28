// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Wed Nov 14 13:16:51 2018
//
// Verilog Description of module Stoppuhr
//

module Stoppuhr (D15, MR, PR, RES, SEG, Start, Stop, y) /* synthesis syn_module_defined=1 */ ;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(3[8:16])
    output D15;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(4[8:11])
    input [1:0]MR;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(5[14:16])
    input PR;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(6[8:10])
    input RES;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(7[8:11])
    output [3:0]SEG;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(8[14:17])
    input Start;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(9[8:13])
    input Stop;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(10[8:12])
    output [1:8]y;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(11[14:15])
    
    wire D15_c;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(4[8:11])
    wire [1:0]MR_c;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(5[14:16])
    wire PR_c;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(6[8:10])
    wire RES_c;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(7[8:11])
    wire [3:0]SEG_c;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(8[14:17])
    wire Start_c;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(9[8:13])
    wire Stop_c;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(10[8:12])
    wire [1:8]y_c;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(11[14:15])
    wire N_9;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(17[6:9])
    wire N_10;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(18[6:10])
    wire N_11;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(19[6:10])
    wire N_8;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(21[6:9])
    wire N_2;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(22[6:9])
    wire N_3;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(23[6:9])
    wire N_4;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(24[6:9])
    wire N_5;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(25[6:9])
    wire GND_net;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/dec7s.vhd(34[11:15])
    wire VCC_net;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/ct.vhd(17[9:16])
    wire [31:0]\dec.cnt ;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/sg7mux.vhd(21[11:14])
    wire [3:0]cnt;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/dec1counter.vhd(18[8:11])
    wire [3:0]cnt_adj_28;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/dec1counter.vhd(18[8:11])
    wire [3:0]cnt_adj_36;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/dec1counter.vhd(18[8:11])
    wire [3:0]cnt_adj_44;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/dec1counter.vhd(18[8:11])
    wire [1:8]\dec.help ;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/dec7s.vhd(34[11:15])
    wire n2539 /* synthesis nomerge= */ ;
    
    wire n2282, n2276, n2273, n628, n2488, n2486, n4;
    
    VLO i1 (.Z(GND_net));
    OR2 I11 (.A(N_9), .B(RES_c), .Z(N_10)) /* synthesis syn_instantiated=1 */ ;
    INV I9 (.A(Stop_c), .Z(N_9));
    INV I10 (.A(Start_c), .Z(N_11));
    OB y_pad_2 (.I(\dec.help [2]), .O(y[2]));
    OB y_pad_3 (.I(\dec.help [3]), .O(y[3]));
    OB y_pad_1 (.I(\dec.help [1]), .O(y[1]));
    SRFF I8 (.N_8(N_8), .N_11(N_11), .N_10(N_10), .n2539(n2539), .RES_c(RES_c), 
         .n628(n628));
    OB SEG_pad_0 (.I(SEG_c[0]), .O(SEG[0]));
    OB SEG_pad_1 (.I(SEG_c[1]), .O(SEG[1]));
    OB SEG_pad_2 (.I(SEG_c[2]), .O(SEG[2]));
    OB SEG_pad_3 (.I(SEG_c[3]), .O(SEG[3]));
    OB D15_pad (.I(D15_c), .O(D15));
    IB Stop_pad (.I(Stop), .O(Stop_c));
    IB Start_pad (.I(Start), .O(Start_c));
    IB RES_pad (.I(RES), .O(RES_c));
    IB PR_pad (.I(PR), .O(PR_c));
    IB MR_pad_0 (.I(MR[0]), .O(MR_c[0]));
    IB MR_pad_1 (.I(MR[1]), .O(MR_c[1]));
    OB y_pad_8 (.I(y_c[8]), .O(y[8]));
    OB y_pad_7 (.I(\dec.help [7]), .O(y[7]));
    OB y_pad_6 (.I(\dec.help [6]), .O(y[6]));
    OB y_pad_5 (.I(\dec.help [5]), .O(y[5]));
    OB y_pad_4 (.I(\dec.help [4]), .O(y[4]));
    Dek1Z_U1 I2 (.n2486(n2486), .n2273(n2273), .n2276(n2276), .N_3(N_3), 
            .N_4(N_4), .n628(n628), .\cnt[0] (cnt_adj_36[0]), .\cnt[0]_adj_4 (cnt[0]), 
            .\dec.cnt[1] (\dec.cnt [1]), .N_8(N_8), .\cnt[0]_adj_5 (cnt_adj_44[0]), 
            .\cnt[3] (cnt_adj_36[3]), .\cnt[3]_adj_6 (cnt[3]), .\cnt[3]_adj_7 (cnt_adj_44[3]), 
            .\cnt[2] (cnt_adj_28[2]), .\cnt[1] (cnt[1]), .n4(n4), .n2282(n2282), 
            .\cnt[1]_adj_8 (cnt_adj_36[1]), .\cnt[1]_adj_9 (cnt_adj_44[1]));
    mux4 I7 (.n516(\dec.help [4]), .n517(\dec.help [5]), .RES_c(RES_c), 
         .n2276(n2276), .GND_net(GND_net), .n2273(n2273), .n2488(n2488), 
         .SEG({SEG_c}), .\dec.cnt[1] (\dec.cnt [1]), .N_2(N_2), .n2282(n2282), 
         .y_c(y_c[8]), .n515(\dec.help [3]), .n514(\dec.help [2]), .\cnt[2] (cnt[2]), 
         .\cnt[2]_adj_1 (cnt_adj_28[2]), .\cnt[2]_adj_2 (cnt_adj_36[2]), 
         .\cnt[2]_adj_3 (cnt_adj_44[2]), .n2486(n2486), .n518(\dec.help [6]), 
         .n519(\dec.help [7]), .n513(\dec.help [1]));
    Dek1Z_U0 I3 (.N_4(N_4), .N_5(N_5), .n628(n628), .cnt({cnt_adj_36}), 
            .N_8(N_8));
    VHI i2 (.Z(VCC_net));
    GSR GSR_INST (.GSR(n2488));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    Dek1Z I4 (.N_5(N_5), .D15_c(D15_c), .n628(n628), .cnt({cnt_adj_44}), 
          .N_8(N_8));
    LUT4 m1_lut (.Z(n2539)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    Dek1Z_U2 I1 (.cnt({cnt}), .N_3(N_3), .N_8(N_8), .n4(n4));
    ClkGen I6 (.N_2(N_2), .MR({MR_c}), .D15_c(D15_c), .GND_net(GND_net), 
           .PR_c(PR_c), .VCC_net(VCC_net));
    
endmodule
//
// Verilog Description of module SRFF
//

module SRFF (N_8, N_11, N_10, n2539, RES_c, n628);
    output N_8;
    input N_11;
    input N_10;
    input n2539;
    input RES_c;
    output n628;
    
    wire n2539 /* synthesis nomerge= */ ;
    
    FD1S3DX \dec.v_8  (.D(n2539), .CK(N_11), .CD(N_10), .Q(N_8));
    defparam \dec.v_8 .GSR = "DISABLED";
    LUT4 i1_2_lut (.A(N_8), .B(RES_c), .Z(n628)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    
endmodule
//
// Verilog Description of module Dek1Z_U1
//

module Dek1Z_U1 (n2486, n2273, n2276, N_3, N_4, n628, \cnt[0] , 
            \cnt[0]_adj_4 , \dec.cnt[1] , N_8, \cnt[0]_adj_5 , \cnt[3] , 
            \cnt[3]_adj_6 , \cnt[3]_adj_7 , \cnt[2] , \cnt[1] , n4, 
            n2282, \cnt[1]_adj_8 , \cnt[1]_adj_9 );
    input n2486;
    output n2273;
    output n2276;
    output N_3;
    input N_4;
    input n628;
    input \cnt[0] ;
    input \cnt[0]_adj_4 ;
    input \dec.cnt[1] ;
    input N_8;
    input \cnt[0]_adj_5 ;
    input \cnt[3] ;
    input \cnt[3]_adj_6 ;
    input \cnt[3]_adj_7 ;
    output \cnt[2] ;
    input \cnt[1] ;
    output n4;
    output n2282;
    input \cnt[1]_adj_8 ;
    input \cnt[1]_adj_9 ;
    
    wire [3:0]cnt;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/dec1counter.vhd(18[8:11])
    
    wire n2271, n2272, n2274, n2275, n19;
    wire [3:0]n22;
    
    wire n2484, n1173, n2280, n2281;
    
    PFUMX i1934 (.BLUT(n2271), .ALUT(n2272), .C0(n2486), .Z(n2273));
    PFUMX i1937 (.BLUT(n2274), .ALUT(n2275), .C0(n2486), .Z(n2276));
    FD1P3AX Cout_18 (.D(n19), .SP(n628), .CK(N_4), .Q(N_3));
    defparam Cout_18.GSR = "DISABLED";
    LUT4 i1936_3_lut (.A(\cnt[0] ), .B(\cnt[0]_adj_4 ), .C(\dec.cnt[1] ), 
         .Z(n2275)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1936_3_lut.init = 16'hcaca;
    LUT4 i1663_1_lut (.A(cnt[0]), .Z(n22[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1663_1_lut.init = 16'h5555;
    LUT4 i1665_2_lut (.A(cnt[1]), .B(cnt[0]), .Z(n22[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1665_2_lut.init = 16'h6666;
    LUT4 i2_3_lut (.A(cnt[3]), .B(N_8), .C(n2484), .Z(n1173)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1935_3_lut (.A(\cnt[0]_adj_5 ), .B(cnt[0]), .C(\dec.cnt[1] ), 
         .Z(n2274)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1935_3_lut.init = 16'hcaca;
    LUT4 i1933_3_lut (.A(\cnt[3] ), .B(\cnt[3]_adj_6 ), .C(\dec.cnt[1] ), 
         .Z(n2272)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1933_3_lut.init = 16'hcaca;
    LUT4 i1932_3_lut (.A(\cnt[3]_adj_7 ), .B(cnt[3]), .C(\dec.cnt[1] ), 
         .Z(n2271)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1932_3_lut.init = 16'hcaca;
    FD1P3IX cnt_203__i1 (.D(n22[1]), .SP(N_8), .CD(n1173), .CK(N_4), 
            .Q(cnt[1]));
    defparam cnt_203__i1.GSR = "ENABLED";
    FD1P3IX cnt_203__i2 (.D(n22[2]), .SP(N_8), .CD(n1173), .CK(N_4), 
            .Q(\cnt[2] ));
    defparam cnt_203__i2.GSR = "ENABLED";
    FD1P3IX cnt_203__i3 (.D(n22[3]), .SP(N_8), .CD(n1173), .CK(N_4), 
            .Q(cnt[3]));
    defparam cnt_203__i3.GSR = "ENABLED";
    FD1P3IX cnt_203__i0 (.D(n22[0]), .SP(N_8), .CD(n1173), .CK(N_4), 
            .Q(cnt[0]));
    defparam cnt_203__i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(\cnt[0]_adj_4 ), .B(\cnt[1] ), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    PFUMX i1943 (.BLUT(n2280), .ALUT(n2281), .C0(n2486), .Z(n2282));
    LUT4 i1942_3_lut (.A(\cnt[1]_adj_8 ), .B(\cnt[1] ), .C(\dec.cnt[1] ), 
         .Z(n2281)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1942_3_lut.init = 16'hcaca;
    LUT4 i1941_3_lut (.A(\cnt[1]_adj_9 ), .B(cnt[1]), .C(\dec.cnt[1] ), 
         .Z(n2280)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1941_3_lut.init = 16'hcaca;
    LUT4 i1679_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(\cnt[2] ), .D(cnt[3]), 
         .Z(n22[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1679_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1672_2_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(\cnt[2] ), .Z(n22[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1672_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_4_lut (.A(\cnt[2] ), .B(cnt[1]), .C(cnt[0]), .D(cnt[3]), 
         .Z(n19)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfe00;
    LUT4 i2_3_lut_rep_27 (.A(\cnt[2] ), .B(cnt[1]), .C(cnt[0]), .Z(n2484)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_27.init = 16'hfefe;
    
endmodule
//
// Verilog Description of module mux4
//

module mux4 (n516, n517, RES_c, n2276, GND_net, n2273, n2488, 
            SEG, \dec.cnt[1] , N_2, n2282, y_c, n515, n514, \cnt[2] , 
            \cnt[2]_adj_1 , \cnt[2]_adj_2 , \cnt[2]_adj_3 , n2486, n518, 
            n519, n513);
    output n516;
    output n517;
    input RES_c;
    input n2276;
    input GND_net;
    input n2273;
    output n2488;
    output [3:0]SEG;
    output \dec.cnt[1] ;
    input N_2;
    input n2282;
    output y_c;
    output n515;
    output n514;
    input \cnt[2] ;
    input \cnt[2]_adj_1 ;
    input \cnt[2]_adj_2 ;
    input \cnt[2]_adj_3 ;
    output n2486;
    output n518;
    output n519;
    output n513;
    
    wire [31:0]\dec.cnt ;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/sg7mux.vhd(21[11:14])
    wire [3:0]s;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(15[14:15])
    
    wire n35, n44, n2480, n2080;
    wire [31:0]n134;
    
    wire n2081, n2082, n2083, n2077, n2078, n46, n32, n52, n2267, 
        n2205, n2485, n2076, n2088, n2087, n54, n48, n36, n56, 
        n43, n2086, n2085;
    wire [0:0]n238;
    
    wire n1022, n2075, n2084, n2079, n2074, n2073, n2265, n2266, 
        n300, n40, n50;
    
    LUT4 i6_2_lut (.A(\dec.cnt [15]), .B(\dec.cnt [9]), .Z(n35)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    LUT4 s_3__bdd_4_lut_2059 (.A(s[3]), .B(s[1]), .C(s[0]), .D(s[2]), 
         .Z(n516)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam s_3__bdd_4_lut_2059.init = 16'h3ee7;
    LUT4 i15_3_lut (.A(\dec.cnt [14]), .B(\dec.cnt [8]), .C(\dec.cnt [28]), 
         .Z(n44)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i15_3_lut.init = 16'hfefe;
    LUT4 i2004_4_lut (.A(s[3]), .B(s[1]), .C(s[0]), .D(s[2]), .Z(n517)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i2004_4_lut.init = 16'hae8f;
    LUT4 mux_111_i1_4_lut_4_lut (.A(RES_c), .B(n2276), .C(n2480), .D(s[0]), 
         .Z(s[0])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_111_i1_4_lut_4_lut.init = 16'hf404;
    CCU2D \dec.cnt_201_add_4_17  (.A0(\dec.cnt [15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2080), .COUT(n2081), .S0(n134[15]), .S1(n134[16]));
    defparam \dec.cnt_201_add_4_17 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_17 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_17 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_17 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_201_add_4_21  (.A0(\dec.cnt [19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2082), .COUT(n2083), .S0(n134[19]), .S1(n134[20]));
    defparam \dec.cnt_201_add_4_21 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_21 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_21 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_21 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_201_add_4_11  (.A0(\dec.cnt [9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2077), .COUT(n2078), .S0(n134[9]), .S1(n134[10]));
    defparam \dec.cnt_201_add_4_11 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_11 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_11 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_11 .INJECT1_1 = "NO";
    LUT4 i23_4_lut (.A(\dec.cnt [29]), .B(n46), .C(n32), .D(\dec.cnt [16]), 
         .Z(n52)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23_4_lut.init = 16'hfffe;
    LUT4 mux_111_i3_4_lut (.A(s[2]), .B(n2267), .C(n2480), .D(RES_c), 
         .Z(s[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;
    defparam mux_111_i3_4_lut.init = 16'ha0ac;
    LUT4 i914_4_lut_4_lut (.A(RES_c), .B(n2273), .C(n2480), .D(s[3]), 
         .Z(s[3])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i914_4_lut_4_lut.init = 16'hf404;
    LUT4 i905_1_lut_rep_31 (.A(RES_c), .Z(n2488)) /* synthesis lut_function=(!(A)) */ ;
    defparam i905_1_lut_rep_31.init = 16'h5555;
    LUT4 mux_123_i1_3_lut_4_lut (.A(\dec.cnt [31]), .B(n2205), .C(n2485), 
         .D(SEG[0]), .Z(SEG[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_123_i1_3_lut_4_lut.init = 16'hfe10;
    CCU2D \dec.cnt_201_add_4_9  (.A0(\dec.cnt [7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2076), .COUT(n2077), .S0(n134[7]), .S1(n134[8]));
    defparam \dec.cnt_201_add_4_9 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_9 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_9 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_9 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_201_add_4_33  (.A0(\dec.cnt [31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2088), .S0(n134[31]));
    defparam \dec.cnt_201_add_4_33 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_33 .INIT1 = 16'h0000;
    defparam \dec.cnt_201_add_4_33 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_33 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_201_add_4_31  (.A0(\dec.cnt [29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2087), .COUT(n2088), .S0(n134[29]), .S1(n134[30]));
    defparam \dec.cnt_201_add_4_31 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_31 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_31 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_31 .INJECT1_1 = "NO";
    LUT4 i27_4_lut (.A(n35), .B(n54), .C(n48), .D(n36), .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27_4_lut.init = 16'hfffe;
    LUT4 i14_2_lut (.A(\dec.cnt [4]), .B(\dec.cnt [22]), .Z(n43)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14_2_lut.init = 16'heeee;
    CCU2D \dec.cnt_201_add_4_29  (.A0(\dec.cnt [27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2086), .COUT(n2087), .S0(n134[27]), .S1(n134[28]));
    defparam \dec.cnt_201_add_4_29 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_29 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_29 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_29 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_201_add_4_27  (.A0(\dec.cnt [25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2085), .COUT(n2086), .S0(n134[25]), .S1(n134[26]));
    defparam \dec.cnt_201_add_4_27 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_27 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_27 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_27 .INJECT1_1 = "NO";
    LUT4 mux_123_i3_4_lut (.A(SEG[2]), .B(\dec.cnt[1] ), .C(n2480), .D(\dec.cnt [0]), 
         .Z(SEG[2])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;
    defparam mux_123_i3_4_lut.init = 16'ha3a0;
    LUT4 i28_4_lut (.A(n43), .B(n56), .C(n52), .D(n44), .Z(n2205)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i28_4_lut.init = 16'hfffe;
    LUT4 mux_123_i2_3_lut_4_lut (.A(\dec.cnt [31]), .B(n2205), .C(n238[0]), 
         .D(SEG[1]), .Z(SEG[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_123_i2_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX \dec.cnt_201__i0  (.D(n134[0]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [0]));
    defparam \dec.cnt_201__i0 .GSR = "DISABLED";
    LUT4 i1_2_lut (.A(\dec.cnt[1] ), .B(\dec.cnt [0]), .Z(n238[0])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    CCU2D \dec.cnt_201_add_4_7  (.A0(\dec.cnt [5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2075), .COUT(n2076), .S0(n134[5]), .S1(n134[6]));
    defparam \dec.cnt_201_add_4_7 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_7 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_7 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_7 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_201_add_4_25  (.A0(\dec.cnt [23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2084), .COUT(n2085), .S0(n134[23]), .S1(n134[24]));
    defparam \dec.cnt_201_add_4_25 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_25 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_25 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_25 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_201_add_4_15  (.A0(\dec.cnt [13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2079), .COUT(n2080), .S0(n134[13]), .S1(n134[14]));
    defparam \dec.cnt_201_add_4_15 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_15 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_15 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_15 .INJECT1_1 = "NO";
    LUT4 mux_111_i2_4_lut (.A(s[1]), .B(RES_c), .C(n2480), .D(n2282), 
         .Z(s[1])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;
    defparam mux_111_i2_4_lut.init = 16'ha3a0;
    CCU2D \dec.cnt_201_add_4_5  (.A0(\dec.cnt [3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2074), .COUT(n2075), .S0(n134[3]), .S1(n134[4]));
    defparam \dec.cnt_201_add_4_5 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_5 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_5 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_5 .INJECT1_1 = "NO";
    LUT4 mux_136_i1_3_lut_4_lut (.A(\dec.cnt [31]), .B(n2205), .C(n238[0]), 
         .D(y_c), .Z(y_c)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_136_i1_3_lut_4_lut.init = 16'hfe10;
    CCU2D \dec.cnt_201_add_4_13  (.A0(\dec.cnt [11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2078), .COUT(n2079), .S0(n134[11]), .S1(n134[12]));
    defparam \dec.cnt_201_add_4_13 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_13 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_13 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_13 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_201_add_4_19  (.A0(\dec.cnt [17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2081), .COUT(n2082), .S0(n134[17]), .S1(n134[18]));
    defparam \dec.cnt_201_add_4_19 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_19 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_19 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_19 .INJECT1_1 = "NO";
    LUT4 mux_123_i4_4_lut (.A(SEG[3]), .B(\dec.cnt[1] ), .C(n2480), .D(\dec.cnt [0]), 
         .Z(SEG[3])) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+(C+(D)))) */ ;
    defparam mux_123_i4_4_lut.init = 16'ha0a3;
    CCU2D \dec.cnt_201_add_4_23  (.A0(\dec.cnt [21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2083), .COUT(n2084), .S0(n134[21]), .S1(n134[22]));
    defparam \dec.cnt_201_add_4_23 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_23 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_23 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_23 .INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_23 (.A(\dec.cnt [31]), .B(n2205), .Z(n2480)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_23.init = 16'heeee;
    CCU2D \dec.cnt_201_add_4_3  (.A0(\dec.cnt[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2073), .COUT(n2074), .S0(n134[1]), .S1(n134[2]));
    defparam \dec.cnt_201_add_4_3 .INIT0 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_3 .INIT1 = 16'hfaaa;
    defparam \dec.cnt_201_add_4_3 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_3 .INJECT1_1 = "NO";
    CCU2D \dec.cnt_201_add_4_1  (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\dec.cnt [0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2073), .S1(n134[0]));
    defparam \dec.cnt_201_add_4_1 .INIT0 = 16'hF000;
    defparam \dec.cnt_201_add_4_1 .INIT1 = 16'h0555;
    defparam \dec.cnt_201_add_4_1 .INJECT1_0 = "NO";
    defparam \dec.cnt_201_add_4_1 .INJECT1_1 = "NO";
    LUT4 s_2__bdd_4_lut_2060 (.A(s[2]), .B(s[1]), .C(s[3]), .D(s[0]), 
         .Z(n515)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A !((C+(D))+!B))) */ ;
    defparam s_2__bdd_4_lut_2060.init = 16'h7f5b;
    FD1S3IX \dec.cnt_201__i31  (.D(n134[31]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [31]));
    defparam \dec.cnt_201__i31 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i30  (.D(n134[30]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [30]));
    defparam \dec.cnt_201__i30 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i29  (.D(n134[29]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [29]));
    defparam \dec.cnt_201__i29 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i28  (.D(n134[28]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [28]));
    defparam \dec.cnt_201__i28 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i27  (.D(n134[27]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [27]));
    defparam \dec.cnt_201__i27 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i26  (.D(n134[26]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [26]));
    defparam \dec.cnt_201__i26 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i25  (.D(n134[25]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [25]));
    defparam \dec.cnt_201__i25 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i24  (.D(n134[24]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [24]));
    defparam \dec.cnt_201__i24 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i23  (.D(n134[23]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [23]));
    defparam \dec.cnt_201__i23 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i22  (.D(n134[22]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [22]));
    defparam \dec.cnt_201__i22 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i21  (.D(n134[21]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [21]));
    defparam \dec.cnt_201__i21 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i20  (.D(n134[20]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [20]));
    defparam \dec.cnt_201__i20 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i19  (.D(n134[19]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [19]));
    defparam \dec.cnt_201__i19 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i18  (.D(n134[18]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [18]));
    defparam \dec.cnt_201__i18 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i17  (.D(n134[17]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [17]));
    defparam \dec.cnt_201__i17 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i16  (.D(n134[16]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [16]));
    defparam \dec.cnt_201__i16 .GSR = "DISABLED";
    LUT4 s_2__bdd_4_lut (.A(s[2]), .B(s[1]), .C(s[3]), .D(s[0]), .Z(n514)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B (C (D))))) */ ;
    defparam s_2__bdd_4_lut.init = 16'h3d57;
    FD1S3IX \dec.cnt_201__i15  (.D(n134[15]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [15]));
    defparam \dec.cnt_201__i15 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i14  (.D(n134[14]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [14]));
    defparam \dec.cnt_201__i14 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i13  (.D(n134[13]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [13]));
    defparam \dec.cnt_201__i13 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i12  (.D(n134[12]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [12]));
    defparam \dec.cnt_201__i12 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i11  (.D(n134[11]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [11]));
    defparam \dec.cnt_201__i11 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i10  (.D(n134[10]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [10]));
    defparam \dec.cnt_201__i10 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i9  (.D(n134[9]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [9]));
    defparam \dec.cnt_201__i9 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i8  (.D(n134[8]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [8]));
    defparam \dec.cnt_201__i8 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i7  (.D(n134[7]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [7]));
    defparam \dec.cnt_201__i7 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i6  (.D(n134[6]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [6]));
    defparam \dec.cnt_201__i6 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i5  (.D(n134[5]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [5]));
    defparam \dec.cnt_201__i5 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i4  (.D(n134[4]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [4]));
    defparam \dec.cnt_201__i4 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i3  (.D(n134[3]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [3]));
    defparam \dec.cnt_201__i3 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i2  (.D(n134[2]), .CK(N_2), .CD(n1022), .Q(\dec.cnt [2]));
    defparam \dec.cnt_201__i2 .GSR = "DISABLED";
    FD1S3IX \dec.cnt_201__i1  (.D(n134[1]), .CK(N_2), .CD(n1022), .Q(\dec.cnt[1] ));
    defparam \dec.cnt_201__i1 .GSR = "DISABLED";
    PFUMX i1928 (.BLUT(n2265), .ALUT(n2266), .C0(n300), .Z(n2267));
    LUT4 i3_2_lut (.A(\dec.cnt [26]), .B(\dec.cnt [2]), .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_3 (.A(\dec.cnt[1] ), .B(RES_c), .Z(n300)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_3.init = 16'h2222;
    LUT4 i1927_3_lut_4_lut (.A(\dec.cnt [0]), .B(RES_c), .C(\cnt[2] ), 
         .D(\cnt[2]_adj_1 ), .Z(n2266)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i1927_3_lut_4_lut.init = 16'hfd20;
    LUT4 i17_4_lut (.A(\dec.cnt [13]), .B(\dec.cnt [30]), .C(\dec.cnt [7]), 
         .D(\dec.cnt [23]), .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i11_2_lut (.A(\dec.cnt [17]), .B(\dec.cnt [24]), .Z(n40)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11_2_lut.init = 16'heeee;
    LUT4 i1926_3_lut_4_lut (.A(\dec.cnt [0]), .B(RES_c), .C(\cnt[2]_adj_2 ), 
         .D(\cnt[2]_adj_3 ), .Z(n2265)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i1926_3_lut_4_lut.init = 16'hfd20;
    LUT4 i182_2_lut_rep_29 (.A(\dec.cnt [0]), .B(RES_c), .Z(n2486)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i182_2_lut_rep_29.init = 16'h2222;
    LUT4 i21_4_lut (.A(\dec.cnt [12]), .B(\dec.cnt [25]), .C(\dec.cnt [5]), 
         .D(\dec.cnt [6]), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(\dec.cnt[1] ), .B(\dec.cnt [0]), .C(n2205), 
         .D(\dec.cnt [31]), .Z(n1022)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h00f8;
    LUT4 i1_2_lut_rep_28 (.A(\dec.cnt[1] ), .B(\dec.cnt [0]), .Z(n2485)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_28.init = 16'h8888;
    LUT4 s_1__bdd_4_lut_2046 (.A(s[1]), .B(s[3]), .C(s[2]), .D(s[0]), 
         .Z(n518)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !(B (C (D))+!B !(C+!(D)))) */ ;
    defparam s_1__bdd_4_lut_2046.init = 16'h9cfd;
    LUT4 s_1__bdd_4_lut (.A(s[1]), .B(s[3]), .C(s[2]), .D(s[0]), .Z(n519)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B ((D)+!C)+!B (C))) */ ;
    defparam s_1__bdd_4_lut.init = 16'hdebe;
    LUT4 s_0__bdd_4_lut (.A(s[0]), .B(s[1]), .C(s[3]), .D(s[2]), .Z(n513)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A (B+(C+!(D)))) */ ;
    defparam s_0__bdd_4_lut.init = 16'hde7d;
    LUT4 i7_2_lut (.A(\dec.cnt [3]), .B(\dec.cnt [19]), .Z(n36)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i19_4_lut (.A(\dec.cnt [11]), .B(\dec.cnt [18]), .C(\dec.cnt [27]), 
         .D(\dec.cnt [21]), .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i25_4_lut (.A(\dec.cnt [20]), .B(n50), .C(n40), .D(\dec.cnt [10]), 
         .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i25_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module Dek1Z_U0
//

module Dek1Z_U0 (N_4, N_5, n628, cnt, N_8);
    output N_4;
    input N_5;
    input n628;
    output [3:0]cnt;
    input N_8;
    
    
    wire n19;
    wire [3:0]n22;
    
    wire n1029;
    
    FD1P3AX Cout_18 (.D(n19), .SP(n628), .CK(N_5), .Q(N_4));
    defparam Cout_18.GSR = "DISABLED";
    LUT4 i1331_4_lut (.A(cnt[2]), .B(cnt[3]), .C(cnt[0]), .D(cnt[1]), 
         .Z(n19)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1331_4_lut.init = 16'hccc8;
    LUT4 i1701_2_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .Z(n22[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1701_2_lut_3_lut.init = 16'h7878;
    LUT4 i1708_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .D(cnt[3]), 
         .Z(n22[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1708_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1692_1_lut (.A(cnt[0]), .Z(n22[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1692_1_lut.init = 16'h5555;
    LUT4 i1694_2_lut (.A(cnt[1]), .B(cnt[0]), .Z(n22[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1694_2_lut.init = 16'h6666;
    FD1P3IX cnt_204__i3 (.D(n22[3]), .SP(N_8), .CD(n1029), .CK(N_5), 
            .Q(cnt[3]));
    defparam cnt_204__i3.GSR = "ENABLED";
    FD1P3IX cnt_204__i1 (.D(n22[1]), .SP(N_8), .CD(n1029), .CK(N_5), 
            .Q(cnt[1]));
    defparam cnt_204__i1.GSR = "ENABLED";
    FD1P3IX cnt_204__i0 (.D(n22[0]), .SP(N_8), .CD(n1029), .CK(N_5), 
            .Q(cnt[0]));
    defparam cnt_204__i0.GSR = "ENABLED";
    LUT4 i776_2_lut (.A(N_8), .B(n19), .Z(n1029)) /* synthesis lut_function=(A (B)) */ ;
    defparam i776_2_lut.init = 16'h8888;
    FD1P3IX cnt_204__i2 (.D(n22[2]), .SP(N_8), .CD(n1029), .CK(N_5), 
            .Q(cnt[2]));
    defparam cnt_204__i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Dek1Z
//

module Dek1Z (N_5, D15_c, n628, cnt, N_8);
    output N_5;
    input D15_c;
    input n628;
    output [3:0]cnt;
    input N_8;
    
    
    wire n19, n1026;
    wire [3:0]n22;
    
    FD1P3AX Cout_18 (.D(n19), .SP(n628), .CK(D15_c), .Q(N_5));
    defparam Cout_18.GSR = "DISABLED";
    FD1P3IX cnt_205__i0 (.D(n22[0]), .SP(N_8), .CD(n1026), .CK(D15_c), 
            .Q(cnt[0]));
    defparam cnt_205__i0.GSR = "ENABLED";
    FD1P3IX cnt_205__i1 (.D(n22[1]), .SP(N_8), .CD(n1026), .CK(D15_c), 
            .Q(cnt[1]));
    defparam cnt_205__i1.GSR = "ENABLED";
    FD1P3IX cnt_205__i2 (.D(n22[2]), .SP(N_8), .CD(n1026), .CK(D15_c), 
            .Q(cnt[2]));
    defparam cnt_205__i2.GSR = "ENABLED";
    FD1P3IX cnt_205__i3 (.D(n22[3]), .SP(N_8), .CD(n1026), .CK(D15_c), 
            .Q(cnt[3]));
    defparam cnt_205__i3.GSR = "ENABLED";
    LUT4 i1723_2_lut (.A(cnt[1]), .B(cnt[0]), .Z(n22[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1723_2_lut.init = 16'h6666;
    LUT4 i1327_4_lut (.A(cnt[2]), .B(cnt[3]), .C(cnt[0]), .D(cnt[1]), 
         .Z(n19)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1327_4_lut.init = 16'hccc8;
    LUT4 i1737_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .D(cnt[3]), 
         .Z(n22[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1737_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1730_2_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .Z(n22[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1730_2_lut_3_lut.init = 16'h7878;
    LUT4 i1721_1_lut (.A(cnt[0]), .Z(n22[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1721_1_lut.init = 16'h5555;
    LUT4 i777_2_lut (.A(N_8), .B(n19), .Z(n1026)) /* synthesis lut_function=(A (B)) */ ;
    defparam i777_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module Dek1Z_U2
//

module Dek1Z_U2 (cnt, N_3, N_8, n4);
    output [3:0]cnt;
    input N_3;
    input N_8;
    input n4;
    
    wire [3:0]n22;
    
    wire n1036;
    
    LUT4 i1634_1_lut (.A(cnt[0]), .Z(n22[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1634_1_lut.init = 16'h5555;
    FD1P3IX cnt_202__i1 (.D(n22[1]), .SP(N_8), .CD(n1036), .CK(N_3), 
            .Q(cnt[1]));
    defparam cnt_202__i1.GSR = "ENABLED";
    FD1P3IX cnt_202__i2 (.D(n22[2]), .SP(N_8), .CD(n1036), .CK(N_3), 
            .Q(cnt[2]));
    defparam cnt_202__i2.GSR = "ENABLED";
    FD1P3IX cnt_202__i3 (.D(n22[3]), .SP(N_8), .CD(n1036), .CK(N_3), 
            .Q(cnt[3]));
    defparam cnt_202__i3.GSR = "ENABLED";
    FD1P3IX cnt_202__i0 (.D(n22[0]), .SP(N_8), .CD(n1036), .CK(N_3), 
            .Q(cnt[0]));
    defparam cnt_202__i0.GSR = "ENABLED";
    LUT4 i1650_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .D(cnt[3]), 
         .Z(n22[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1650_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1636_2_lut (.A(cnt[1]), .B(cnt[0]), .Z(n22[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1636_2_lut.init = 16'h6666;
    LUT4 i774_4_lut (.A(N_8), .B(cnt[2]), .C(cnt[3]), .D(n4), .Z(n1036)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i774_4_lut.init = 16'ha080;
    LUT4 i1643_2_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .Z(n22[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1643_2_lut_3_lut.init = 16'h7878;
    
endmodule
//
// Verilog Description of module ClkGen
//

module ClkGen (N_2, MR, D15_c, GND_net, PR_c, VCC_net);
    output N_2;
    input [1:0]MR;
    output D15_c;
    input GND_net;
    input PR_c;
    input VCC_net;
    
    wire [6:0]\Counter.Counter1Hz ;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/clkgen.vhd(99[11:21])
    wire \Counter.Clk3Hz ;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/clkgen.vhd(100[11:17])
    wire \Counter.Clk1Hz ;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/clkgen.vhd(101[11:17])
    wire Clk100Hz;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/clkgen.vhd(62[4:12])
    wire ClkOsc;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/clkgen.vhd(64[4:10])
    wire [5:0]\Counter.Counter3Hz ;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/clkgen.vhd(98[11:21])
    wire [6:0]n59;
    wire [6:0]n34;
    
    wire n2489, n4, n1021, n2277, n2278, n2481, n521, n523, 
        n71;
    wire [5:0]n52;
    wire [5:0]n30;
    
    wire n2487, n1023, n6_adj_4, n2483, n2482;
    
    LUT4 i1593_2_lut_3_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [2]), 
         .Z(n34[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1593_2_lut_3_lut.init = 16'h7878;
    LUT4 i1589_2_lut_rep_32 (.A(n59[1]), .B(n59[0]), .Z(n2489)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1589_2_lut_rep_32.init = 16'h8888;
    LUT4 i1_2_lut (.A(\Counter.Counter1Hz [2]), .B(\Counter.Counter1Hz [3]), 
         .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(\Counter.Counter1Hz [6]), .B(\Counter.Counter1Hz [4]), 
         .C(\Counter.Counter1Hz [5]), .D(n4), .Z(n1021)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    FD1S3IX \Counter.Counter1Hz_209__i4  (.D(n34[4]), .CK(N_2), .CD(n1021), 
            .Q(\Counter.Counter1Hz [4]));
    defparam \Counter.Counter1Hz_209__i4 .GSR = "DISABLED";
    PFUMX i1940 (.BLUT(n2277), .ALUT(n2278), .C0(MR[1]), .Z(D15_c));
    LUT4 i1610_2_lut_3_lut_rep_24_4_lut (.A(\Counter.Counter1Hz [2]), .B(n2489), 
         .C(\Counter.Counter1Hz [4]), .D(\Counter.Counter1Hz [3]), .Z(n2481)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1610_2_lut_3_lut_rep_24_4_lut.init = 16'h8000;
    FD1S3AX \Counter.Clk3Hz_32  (.D(n521), .CK(N_2), .Q(\Counter.Clk3Hz ));
    defparam \Counter.Clk3Hz_32 .GSR = "DISABLED";
    FD1S3AX \Counter.Clk1Hz_34  (.D(n523), .CK(N_2), .Q(\Counter.Clk1Hz ));
    defparam \Counter.Clk1Hz_34 .GSR = "DISABLED";
    FD1S3AX SigClk100Hz_37 (.D(n71), .CK(N_2), .Q(Clk100Hz));
    defparam SigClk100Hz_37.GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_209__i3  (.D(n34[3]), .CK(N_2), .CD(n1021), 
            .Q(\Counter.Counter1Hz [3]));
    defparam \Counter.Counter1Hz_209__i3 .GSR = "DISABLED";
    LUT4 i1750_1_lut (.A(n52[0]), .Z(n30[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1750_1_lut.init = 16'h5555;
    OSCH OscInst0 (.STDBY(GND_net), .OSC(ClkOsc)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/stp/stoppuhr.v(41[8] 42[46])
    defparam OscInst0.NOM_FREQ = "2.08";
    LUT4 i1607_2_lut_3_lut_4_lut (.A(\Counter.Counter1Hz [2]), .B(n2489), 
         .C(\Counter.Counter1Hz [4]), .D(\Counter.Counter1Hz [3]), .Z(n34[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1607_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3IX \Counter.Counter1Hz_209__i2  (.D(n34[2]), .CK(N_2), .CD(n1021), 
            .Q(\Counter.Counter1Hz [2]));
    defparam \Counter.Counter1Hz_209__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_209__i1  (.D(n34[1]), .CK(N_2), .CD(n1021), 
            .Q(n59[1]));
    defparam \Counter.Counter1Hz_209__i1 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_209__i0  (.D(n34[0]), .CK(N_2), .CD(n1021), 
            .Q(n59[0]));
    defparam \Counter.Counter1Hz_209__i0 .GSR = "DISABLED";
    LUT4 i1773_2_lut_3_lut_4_lut (.A(\Counter.Counter3Hz [2]), .B(n2487), 
         .C(\Counter.Counter3Hz [4]), .D(\Counter.Counter3Hz [3]), .Z(n30[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1773_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1752_2_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n30[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1752_2_lut.init = 16'h6666;
    FD1S3IX \Counter.Counter1Hz_209__i6  (.D(n34[6]), .CK(N_2), .CD(n1021), 
            .Q(\Counter.Counter1Hz [6]));
    defparam \Counter.Counter1Hz_209__i6 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_207__i5  (.D(n30[5]), .CK(N_2), .CD(n1023), 
            .Q(\Counter.Counter3Hz [5]));
    defparam \Counter.Counter3Hz_207__i5 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter1Hz_209__i5  (.D(n34[5]), .CK(N_2), .CD(n1021), 
            .Q(\Counter.Counter1Hz [5]));
    defparam \Counter.Counter1Hz_209__i5 .GSR = "DISABLED";
    LUT4 i2_2_lut (.A(\Counter.Counter3Hz [2]), .B(\Counter.Counter3Hz [3]), 
         .Z(n6_adj_4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1329_4_lut (.A(\Counter.Counter3Hz [1]), .B(\Counter.Counter3Hz [5]), 
         .C(n6_adj_4), .D(\Counter.Counter3Hz [4]), .Z(n1023)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1329_4_lut.init = 16'hccc8;
    LUT4 i1621_3_lut (.A(\Counter.Counter1Hz [6]), .B(\Counter.Counter1Hz [5]), 
         .C(n2481), .Z(n34[6])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1621_3_lut.init = 16'h6a6a;
    LUT4 i1596_2_lut_rep_26_3_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [2]), 
         .Z(n2483)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1596_2_lut_rep_26_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_1 (.A(\Counter.Clk3Hz ), .B(n1023), .Z(n521)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_1.init = 16'h6666;
    LUT4 i1600_2_lut_3_lut_4_lut (.A(n59[1]), .B(n59[0]), .C(\Counter.Counter1Hz [3]), 
         .D(\Counter.Counter1Hz [2]), .Z(n34[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1600_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1780_3_lut_4_lut (.A(\Counter.Counter3Hz [3]), .B(n2482), .C(\Counter.Counter3Hz [4]), 
         .D(\Counter.Counter3Hz [5]), .Z(n30[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1780_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1584_1_lut (.A(n59[0]), .Z(n34[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1584_1_lut.init = 16'h5555;
    LUT4 i1614_2_lut_4_lut (.A(\Counter.Counter1Hz [3]), .B(n2483), .C(\Counter.Counter1Hz [4]), 
         .D(\Counter.Counter1Hz [5]), .Z(n34[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1614_2_lut_4_lut.init = 16'h7f80;
    FD1S3IX \Counter.Counter3Hz_207__i4  (.D(n30[4]), .CK(N_2), .CD(n1023), 
            .Q(\Counter.Counter3Hz [4]));
    defparam \Counter.Counter3Hz_207__i4 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_207__i3  (.D(n30[3]), .CK(N_2), .CD(n1023), 
            .Q(\Counter.Counter3Hz [3]));
    defparam \Counter.Counter3Hz_207__i3 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_207__i2  (.D(n30[2]), .CK(N_2), .CD(n1023), 
            .Q(\Counter.Counter3Hz [2]));
    defparam \Counter.Counter3Hz_207__i2 .GSR = "DISABLED";
    FD1S3IX \Counter.Counter3Hz_207__i1  (.D(n30[1]), .CK(N_2), .CD(n1023), 
            .Q(\Counter.Counter3Hz [1]));
    defparam \Counter.Counter3Hz_207__i1 .GSR = "DISABLED";
    LUT4 i1586_2_lut (.A(n59[1]), .B(n59[0]), .Z(n34[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1586_2_lut.init = 16'h6666;
    LUT4 i1766_2_lut_3_lut_4_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [3]), .D(\Counter.Counter3Hz [2]), .Z(n30[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1766_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1759_2_lut_3_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .C(\Counter.Counter3Hz [2]), 
         .Z(n30[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1759_2_lut_3_lut.init = 16'h7878;
    LUT4 i19_1_lut (.A(Clk100Hz), .Z(n71)) /* synthesis lut_function=(!(A)) */ ;
    defparam i19_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_2 (.A(\Counter.Clk1Hz ), .B(n1021), .Z(n523)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_2.init = 16'h6666;
    LUT4 i1762_2_lut_rep_25_3_lut (.A(\Counter.Counter3Hz [1]), .B(n52[0]), 
         .C(\Counter.Counter3Hz [2]), .Z(n2482)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1762_2_lut_rep_25_3_lut.init = 16'h8080;
    FD1S3IX \Counter.Counter3Hz_207__i0  (.D(n30[0]), .CK(N_2), .CD(n1023), 
            .Q(n52[0]));
    defparam \Counter.Counter3Hz_207__i0 .GSR = "DISABLED";
    LUT4 i1939_3_lut (.A(\Counter.Clk3Hz ), .B(Clk100Hz), .C(MR[0]), .Z(n2278)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1939_3_lut.init = 16'hcaca;
    LUT4 i1755_2_lut_rep_30 (.A(\Counter.Counter3Hz [1]), .B(n52[0]), .Z(n2487)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1755_2_lut_rep_30.init = 16'h8888;
    LUT4 i1938_3_lut (.A(PR_c), .B(\Counter.Clk1Hz ), .C(MR[0]), .Z(n2277)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1938_3_lut.init = 16'hcaca;
    CT CTInst0 (.ClkOsc(ClkOsc), .VCC_net(VCC_net), .N_2(N_2), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;
    
endmodule
//
// Verilog Description of module CT
//

module CT (ClkOsc, VCC_net, N_2, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input ClkOsc;
    input VCC_net;
    output N_2;
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
        .PLL1ACKI(GND_net), .TCOC(N_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rrhar/desktop/digitaltechnik/dt/stoppuhr/clkgen.vhd(89[11:36])
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
