// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Fri May 11 02:24:06 2018
//
// Verilog Description of module mux4
//

module mux4 (A, B, C, Q);   // h:/digitaltechnik_labor/projects/lab_rw/lab_mux.vhd(5[8:12])
    input [2:0]A;   // h:/digitaltechnik_labor/projects/lab_rw/lab_mux.vhd(7[2:3])
    input [2:0]B;   // h:/digitaltechnik_labor/projects/lab_rw/lab_mux.vhd(7[5:6])
    input [1:0]C;   // h:/digitaltechnik_labor/projects/lab_rw/lab_mux.vhd(8[2:3])
    output [3:0]Q;   // h:/digitaltechnik_labor/projects/lab_rw/lab_mux.vhd(9[2:3])
    
    wire [2:0]A_c;   // h:/digitaltechnik_labor/projects/lab_rw/lab_mux.vhd(7[2:3])
    wire [2:0]B_c;   // h:/digitaltechnik_labor/projects/lab_rw/lab_mux.vhd(7[5:6])
    wire [1:0]C_c;   // h:/digitaltechnik_labor/projects/lab_rw/lab_mux.vhd(8[2:3])
    wire [3:0]Q_c;   // h:/digitaltechnik_labor/projects/lab_rw/lab_mux.vhd(9[2:3])
    wire VCC_net;   // mult_3s_3s.v(29[10:19])
    wire GND_net;   // mult_3s_3s.v(28[10:19])
    wire [5:0]\multer.R ;   // h:/digitaltechnik_labor/projects/lab_rw/lab_mult.vhd(15[11:12])
    wire mult_3s_3s_0_pp_1_2;   // mult_3s_3s.v(14[10:29])
    wire co_t_mult_3s_3s_0_0_1;   // mult_3s_3s.v(15[10:31])
    wire mult_3s_3s_0_pp_1_3;   // mult_3s_3s.v(16[10:29])
    wire mult_3s_3s_0_pp_1_4;   // mult_3s_3s.v(17[10:29])
    wire co_t_mult_3s_3s_0_0_2;   // mult_3s_3s.v(19[10:31])
    wire mult_3s_3s_0_pp_0_2;   // mult_3s_3s.v(20[10:29])
    wire mult_3s_3s_0_cin_lr_0;   // mult_3s_3s.v(22[10:31])
    wire mult_3s_3s_0_mult_0_0_n3;   // mult_3s_3s.v(23[10:34])
    wire mult_3s_3s_0_pp_0_4;   // mult_3s_3s.v(25[10:29])
    wire mult_3s_3s_0_pp_0_3;   // mult_3s_3s.v(26[10:29])
    wire mco;   // mult_3s_3s.v(27[10:13])
    wire mult_3s_3s_0_mult_0_1_n0;   // mult_3s_3s.v(30[10:34])
    wire [3:0]n166;
    
    wire n2009, n440, n164, n2, n221;
    wire [4:0]n5_adj_15;
    
    wire n95, n101, n1759;
    wire [3:0]n129;
    
    wire n2031;
    wire [3:0]n171;
    
    wire n6, n436, n2072, n1933, n417, n1943, n16, n2033, n2032, 
        n434, n438, n2023, n2030, n2019, n2018, n2016, n2071, 
        n2015, n2029, n1771, n2028, n4_adj_2, n2014, n2013, n2012, 
        n2075, n2011;
    
    VHI i6 (.Z(VCC_net));
    LUT4 i64_3_lut_rep_23 (.A(C_c[0]), .B(n1759), .C(C_c[1]), .Z(n2015)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;
    defparam i64_3_lut_rep_23.init = 16'h3a3a;
    PFUMX i311 (.BLUT(n436), .ALUT(n5_adj_15[3]), .C0(n101), .Z(Q_c[3]));
    IB B_pad_1 (.I(B[1]), .O(B_c[1]));
    mult4 mul (.\multer.R ({\multer.R }), .n18(n2075), .n1771(n1771), 
          .n2018(n2018), .n2016(n2016));
    IB B_pad_2 (.I(B[2]), .O(B_c[2]));
    PFUMX i313 (.BLUT(n438), .ALUT(n5_adj_15[2]), .C0(n101), .Z(Q_c[2]));
    LUT4 i144_4_lut_3_lut (.A(n2012), .B(n2009), .C(n166[2]), .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam i144_4_lut_3_lut.init = 16'he8e8;
    LUT4 i2_4_lut (.A(C_c[0]), .B(B_c[2]), .C(C_c[1]), .D(n2023), .Z(n101)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    LUT4 mux_80_i1_3_lut_4_lut (.A(C_c[0]), .B(n1759), .C(C_c[1]), .D(B_c[0]), 
         .Z(n171[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C+(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam mux_80_i1_3_lut_4_lut.init = 16'hc5fa;
    FADD2B mult_3s_3s_0_cin_lr_add_0 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_3s_3s_0_cin_lr_0)) /* synthesis syn_instantiated=1 */ ;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    IB C_pad_0 (.I(C[0]), .O(C_c[0]));
    IB C_pad_1 (.I(C[1]), .O(C_c[1]));
    IB B_pad_0 (.I(B[0]), .O(B_c[0]));
    IB A_pad_0 (.I(A[0]), .O(A_c[0]));
    IB A_pad_1 (.I(A[1]), .O(A_c[1]));
    IB A_pad_2 (.I(A[2]), .O(A_c[2]));
    ND2 ND2_t4 (.A(A_c[2]), .B(B_c[0]), .Z(mult_3s_3s_0_mult_0_0_n3)) /* synthesis syn_instantiated=1 */ ;
    AND2 AND2_t5 (.A(A_c[0]), .B(B_c[0]), .Z(\multer.R [0])) /* synthesis syn_instantiated=1 */ ;
    OB Q_pad_0 (.I(Q_c[0]), .O(Q[0]));
    ND2 ND2_t3 (.A(A_c[2]), .B(B_c[1]), .Z(mult_3s_3s_0_mult_0_1_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t2 (.A(A_c[0]), .B(B_c[2]), .Z(mult_3s_3s_0_pp_1_2)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t1 (.A(A_c[1]), .B(B_c[2]), .Z(mult_3s_3s_0_pp_1_3)) /* synthesis syn_instantiated=1 */ ;
    AND2 AND2_t0 (.A(A_c[2]), .B(B_c[2]), .Z(mult_3s_3s_0_pp_1_4)) /* synthesis syn_instantiated=1 */ ;
    OB Q_pad_1 (.I(Q_c[1]), .O(Q[1]));
    FADD2B Cadd_t_mult_3s_3s_0_0_1 (.A0(GND_net), .A1(mult_3s_3s_0_pp_0_2), 
           .B0(GND_net), .B1(mult_3s_3s_0_pp_1_2), .CI(GND_net), .COUT(co_t_mult_3s_3s_0_0_1), 
           .S1(\multer.R [2])) /* synthesis syn_instantiated=1 */ ;
    FADD2B t_mult_3s_3s_0_add_0_2 (.A0(mult_3s_3s_0_pp_0_3), .A1(mult_3s_3s_0_pp_0_4), 
           .B0(mult_3s_3s_0_pp_1_3), .B1(mult_3s_3s_0_pp_1_4), .CI(co_t_mult_3s_3s_0_0_1), 
           .COUT(co_t_mult_3s_3s_0_0_2), .S0(\multer.R [3]), .S1(\multer.R [4])) /* synthesis syn_instantiated=1 */ ;
    FADD2B t_mult_3s_3s_0_add_0_3 (.A0(GND_net), .A1(GND_net), .B0(VCC_net), 
           .B1(GND_net), .CI(co_t_mult_3s_3s_0_0_2), .S0(\multer.R [5])) /* synthesis syn_instantiated=1 */ ;
    MULT2 mult_3s_3s_0_mult_0_0 (.A0(A_c[0]), .A1(A_c[1]), .A2(A_c[1]), 
          .A3(mult_3s_3s_0_mult_0_0_n3), .B0(B_c[1]), .B1(B_c[0]), .B2(B_c[1]), 
          .B3(VCC_net), .CI(mult_3s_3s_0_cin_lr_0), .CO(mco), .P0(\multer.R [1]), 
          .P1(mult_3s_3s_0_pp_0_2)) /* synthesis syn_instantiated=1 */ ;
    MULT2 mult_3s_3s_0_mult_0_1 (.A0(mult_3s_3s_0_mult_0_1_n0), .A1(VCC_net), 
          .A2(GND_net), .A3(GND_net), .B0(VCC_net), .B1(VCC_net), .B2(B_c[1]), 
          .B3(B_c[0]), .CI(mco), .P0(mult_3s_3s_0_pp_0_3), .P1(mult_3s_3s_0_pp_0_4)) /* synthesis syn_instantiated=1 */ ;
    LUT4 i250_2_lut_rep_21_2_lut (.A(n1759), .B(C_c[1]), .Z(n2013)) /* synthesis lut_function=(A (B)) */ ;
    defparam i250_2_lut_rep_21_2_lut.init = 16'h8888;
    PFUMX i315 (.BLUT(n440), .ALUT(n5_adj_15[1]), .C0(n101), .Z(Q_c[1]));
    LUT4 i2_4_lut_adj_1 (.A(n2016), .B(C_c[1]), .C(C_c[0]), .D(\multer.R [5]), 
         .Z(n95)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_4_lut_adj_1.init = 16'h0800;
    GSR GSR_INST (.GSR(VCC_net));
    OB Q_pad_2 (.I(Q_c[2]), .O(Q[2]));
    OB Q_pad_3 (.I(Q_c[3]), .O(Q[3]));
    LUT4 i2_3_lut_4_lut_4_lut_3_lut (.A(B_c[1]), .B(B_c[0]), .C(B_c[2]), 
         .Z(n2072)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_4_lut_4_lut_3_lut.init = 16'hfefe;
    LUT4 mux_80_i2_3_lut_rep_22_4_lut (.A(C_c[0]), .B(n1759), .C(C_c[1]), 
         .D(B_c[1]), .Z(n2014)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam mux_80_i2_3_lut_rep_22_4_lut.init = 16'h053a;
    LUT4 i240_2_lut_rep_27_3_lut (.A(B_c[1]), .B(B_c[0]), .C(B_c[2]), 
         .Z(n2019)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i240_2_lut_rep_27_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_31 (.A(B_c[1]), .B(B_c[0]), .Z(n2023)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_31.init = 16'heeee;
    LUT4 mux_80_i4_3_lut_rep_20_4_lut (.A(C_c[0]), .B(n1759), .C(C_c[1]), 
         .D(B_c[2]), .Z(n2012)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam mux_80_i4_3_lut_rep_20_4_lut.init = 16'h053a;
    LUT4 i255_4_lut (.A(A_c[2]), .B(\multer.R [2]), .C(n2013), .D(n2018), 
         .Z(n166[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;
    defparam i255_4_lut.init = 16'hca3a;
    LUT4 i1828_3_lut (.A(B_c[2]), .B(B_c[1]), .C(B_c[0]), .Z(n1933)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1828_3_lut.init = 16'h0101;
    LUT4 i308_3_lut (.A(n95), .B(n2011), .C(n101), .Z(n434)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam i308_3_lut.init = 16'h3535;
    LUT4 mux_55_i1_4_lut (.A(n2015), .B(\multer.R [0]), .C(n164), .D(n4_adj_2), 
         .Z(n129[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam mux_55_i1_4_lut.init = 16'hc5ca;
    LUT4 i244_2_lut (.A(C_c[1]), .B(n1759), .Z(n164)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i244_2_lut.init = 16'h2222;
    LUT4 i1_4_lut (.A(n221), .B(n2015), .C(A_c[0]), .D(B_c[0]), .Z(n2)) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'heaee;
    VLO i1 (.Z(GND_net));
    LUT4 mux_55_i4_4_lut (.A(n6), .B(\multer.R [3]), .C(n164), .D(n2071), 
         .Z(n129[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam mux_55_i4_4_lut.init = 16'hc5ca;
    LUT4 i1_2_lut_4_lut (.A(A_c[0]), .B(\multer.R [0]), .C(n2013), .D(n171[0]), 
         .Z(n4_adj_2)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(D))+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hc53a;
    LUT4 i126_2_lut_4_lut (.A(A_c[0]), .B(\multer.R [0]), .C(n2013), .D(n171[0]), 
         .Z(n221)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;
    defparam i126_2_lut_4_lut.init = 16'h3a00;
    LUT4 i3_4_lut (.A(C_c[0]), .B(\multer.R [5]), .C(\multer.R [4]), .D(\multer.R [3]), 
         .Z(n1759)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i257_4_lut (.A(A_c[1]), .B(\multer.R [1]), .C(n2013), .D(\multer.R [0]), 
         .Z(n166[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;
    defparam i257_4_lut.init = 16'hca3a;
    PFUMX i1858 (.BLUT(n2031), .ALUT(n2032), .C0(C_c[1]), .Z(n2033));
    LUT4 mux_55_i3_4_lut_else_4_lut (.A(n2009), .B(n166[2]), .C(B_c[2]), 
         .D(C_c[0]), .Z(n2031)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam mux_55_i3_4_lut_else_4_lut.init = 16'h6996;
    LUT4 mux_55_i3_4_lut_then_4_lut (.A(n2009), .B(\multer.R [2]), .C(n166[2]), 
         .D(n1759), .Z(n2032)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D)))+!A !(B (C+!(D))+!B (C (D))))) */ ;
    defparam mux_55_i3_4_lut_then_4_lut.init = 16'h5acc;
    PFUMX i1856 (.BLUT(n2028), .ALUT(n2029), .C0(C_c[1]), .Z(n2030));
    LUT4 mux_55_i2_4_lut_else_4_lut (.A(n2), .B(n166[1]), .C(B_c[1]), 
         .D(C_c[0]), .Z(n2028)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam mux_55_i2_4_lut_else_4_lut.init = 16'h6996;
    div4 div (.B({B_c}), .n50(n2072), .n7(n5_adj_15[3]), .A({A_c}), 
         .n2011(n2011), .n9(n5_adj_15[1]), .n2019(n2019), .n2023(n2023), 
         .n8(n5_adj_15[2]));
    LUT4 i1_4_lut_adj_2 (.A(n2012), .B(A_c[2]), .C(n1771), .D(n2013), 
         .Z(n2071)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !(B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_2.init = 16'ha566;
    LUT4 i310_3_lut (.A(n129[3]), .B(n95), .C(n417), .Z(n436)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i310_3_lut.init = 16'hcaca;
    LUT4 mux_55_i2_4_lut_then_4_lut (.A(n2), .B(\multer.R [1]), .C(n166[1]), 
         .D(n1759), .Z(n2029)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D)))+!A !(B (C+!(D))+!B (C (D))))) */ ;
    defparam mux_55_i2_4_lut_then_4_lut.init = 16'h5acc;
    PFUMX i309 (.BLUT(n129[0]), .ALUT(n434), .C0(n1943), .Z(Q_c[0]));
    LUT4 i314_3_lut_4_lut (.A(n2030), .B(n95), .C(C_c[1]), .D(n16), 
         .Z(n440)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B+!(C (D))))) */ ;
    defparam i314_3_lut_4_lut.init = 16'h3aaa;
    LUT4 i312_3_lut_4_lut (.A(n2033), .B(n95), .C(C_c[1]), .D(n16), 
         .Z(n438)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B+!(C (D))))) */ ;
    defparam i312_3_lut_4_lut.init = 16'h3aaa;
    PFUMX i29 (.BLUT(n2075), .ALUT(n1933), .C0(C_c[0]), .Z(n16));
    LUT4 i137_4_lut_3_lut_rep_17 (.A(n2014), .B(n2), .C(n166[1]), .Z(n2009)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam i137_4_lut_3_lut_rep_17.init = 16'he8e8;
    LUT4 i1825_2_lut_3_lut (.A(n101), .B(C_c[1]), .C(n16), .Z(n1943)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1825_2_lut_3_lut.init = 16'heaea;
    LUT4 i1_2_lut (.A(C_c[1]), .B(n16), .Z(n417)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module mult4
//

module mult4 (\multer.R , n18, n1771, n2018, n2016);
    input [5:0]\multer.R ;
    output n18;
    output n1771;
    output n2018;
    output n2016;
    
    
    wire n2017;
    
    LUT4 i30_4_lut_4_lut (.A(\multer.R [3]), .B(n2017), .C(\multer.R [4]), 
         .D(\multer.R [5]), .Z(n18)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C+(D))+!B (C)))) */ ;
    defparam i30_4_lut_4_lut.init = 16'h7efa;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\multer.R [1]), .B(\multer.R [0]), .C(\multer.R [3]), 
         .D(\multer.R [2]), .Z(n1771)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i973_2_lut_rep_25_3_lut (.A(\multer.R [1]), .B(\multer.R [0]), 
         .C(\multer.R [2]), .Z(n2017)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i973_2_lut_rep_25_3_lut.init = 16'hfefe;
    LUT4 i961_2_lut_rep_26 (.A(\multer.R [1]), .B(\multer.R [0]), .Z(n2018)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i961_2_lut_rep_26.init = 16'heeee;
    LUT4 i1_4_lut_3_lut_rep_24_4_lut (.A(\multer.R [2]), .B(n2018), .C(\multer.R [4]), 
         .D(\multer.R [3]), .Z(n2016)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B !(C+(D))))) */ ;
    defparam i1_4_lut_3_lut_rep_24_4_lut.init = 16'h1ffe;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module div4
//

module div4 (B, n50, n7, A, n2011, n9, n2019, n2023, n8);
    input [2:0]B;
    input n50;
    output n7;
    input [2:0]A;
    output n2011;
    output n9;
    input n2019;
    input n2023;
    output n8;
    
    
    wire n2024, n95, n111, n2020, n2022, n2010, n4, n92, n2021, 
        n110, n4_adj_1, n71, n2026, n2025;
    
    LUT4 div_4_i69_3_lut (.A(n2024), .B(B[0]), .C(n95), .Z(n111)) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;
    defparam div_4_i69_3_lut.init = 16'ha6a6;
    LUT4 div_4_i91_4_lut (.A(n50), .B(n2020), .C(n2022), .D(n2010), 
         .Z(n7)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(B ((D)+!C)+!B !(C)))) */ ;
    defparam div_4_i91_4_lut.init = 16'h65a5;
    LUT4 i1515_2_lut_4_lut (.A(A[1]), .B(A[0]), .C(A[2]), .D(B[0]), 
         .Z(n4)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C+!(D))+!B !(D)))) */ ;
    defparam i1515_2_lut_4_lut.init = 16'h6aff;
    LUT4 div_4_mux_3_i2_3_lut_rep_32 (.A(A[1]), .B(A[0]), .C(A[2]), .Z(n2024)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam div_4_mux_3_i2_3_lut_rep_32.init = 16'h6a6a;
    LUT4 div_4_i68_4_lut (.A(n92), .B(n2021), .C(n95), .D(n4), .Z(n110)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C+!(D))+!B (C+(D)))) */ ;
    defparam div_4_i68_4_lut.init = 16'ha6a9;
    LUT4 div_4_LessThan_70_i4_4_lut (.A(B[0]), .B(n2021), .C(n111), .D(A[0]), 
         .Z(n4_adj_1)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;
    defparam div_4_LessThan_70_i4_4_lut.init = 16'h0c8e;
    LUT4 div_4_i93_3_lut_4_lut (.A(A[2]), .B(B[2]), .C(n2011), .D(n95), 
         .Z(n9)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam div_4_i93_3_lut_4_lut.init = 16'h06f9;
    LUT4 div_4_i82_2_lut_rep_30 (.A(A[2]), .B(B[2]), .Z(n2022)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam div_4_i82_2_lut_rep_30.init = 16'h6666;
    LUT4 div_4_mux_5_i2_3_lut_rep_29 (.A(B[1]), .B(B[0]), .C(B[2]), .Z(n2021)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam div_4_mux_5_i2_3_lut_rep_29.init = 16'h6a6a;
    LUT4 div_4_LessThan_57_i8_3_lut_4_lut_then_4_lut (.A(B[0]), .B(n2024), 
         .C(n71), .D(B[1]), .Z(n2026)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (C (D)))) */ ;
    defparam div_4_LessThan_57_i8_3_lut_4_lut_then_4_lut.init = 16'h277f;
    LUT4 div_4_i55_3_lut_4_lut (.A(B[0]), .B(n2019), .C(n2021), .D(n71), 
         .Z(n92)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;
    defparam div_4_i55_3_lut_4_lut.init = 16'hfd00;
    LUT4 i1545_2_lut_rep_18_4_lut (.A(n4_adj_1), .B(n2019), .C(n110), 
         .D(n95), .Z(n2010)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1545_2_lut_rep_18_4_lut.init = 16'h8e00;
    LUT4 i1_4_lut_rep_28 (.A(B[0]), .B(n2019), .C(n2021), .D(n71), .Z(n2020)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i1_4_lut_rep_28.init = 16'hfcfe;
    LUT4 i1813_4_lut_rep_19_4_lut (.A(n2023), .B(B[2]), .C(n110), .D(n4_adj_1), 
         .Z(n2011)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;
    defparam i1813_4_lut_rep_19_4_lut.init = 16'h4f04;
    LUT4 div_4_i92_3_lut_4_lut (.A(n95), .B(n2011), .C(n2022), .D(n2020), 
         .Z(n8)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D)))) */ ;
    defparam div_4_i92_3_lut_4_lut.init = 16'h708f;
    LUT4 i1_3_lut (.A(A[2]), .B(A[1]), .C(A[0]), .Z(n71)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h0202;
    PFUMX i1854 (.BLUT(n2025), .ALUT(n2026), .C0(B[2]), .Z(n95));
    LUT4 div_4_LessThan_57_i8_3_lut_4_lut_else_4_lut (.A(B[0]), .B(n2024), 
         .C(n71), .D(B[1]), .Z(n2025)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam div_4_LessThan_57_i8_3_lut_4_lut_else_4_lut.init = 16'h2f22;
    
endmodule
