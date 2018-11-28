// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Fri May 11 01:07:43 2018
//
// Verilog Description of module mult
//

module mult (A, B, Z);   // h:/digitaltechnik_labor/projects/lab_rw/test.vhd(6[8:12])
    input [2:0]A;   // h:/digitaltechnik_labor/projects/lab_rw/test.vhd(8[6:7])
    input [2:0]B;   // h:/digitaltechnik_labor/projects/lab_rw/test.vhd(9[3:4])
    output [3:0]Z;   // h:/digitaltechnik_labor/projects/lab_rw/test.vhd(10[3:4])
    
    wire GND_net;   // mult_3s_3s.v(28[10:19])
    wire VCC_net;   // mult_3s_3s.v(29[10:19])
    wire [2:0]A_c;   // h:/digitaltechnik_labor/projects/lab_rw/test.vhd(8[6:7])
    wire [2:0]B_c;   // h:/digitaltechnik_labor/projects/lab_rw/test.vhd(9[3:4])
    wire [3:0]Z_c;   // h:/digitaltechnik_labor/projects/lab_rw/test.vhd(10[3:4])
    wire [5:0]R;   // h:/digitaltechnik_labor/projects/lab_rw/test.vhd(18[13:14])
    wire mult_3s_3s_0_pp_0_2;   // mult_3s_3s.v(20[10:29])
    wire mult_3s_3s_0_mult_0_1_n0;   // mult_3s_3s.v(30[10:34])
    wire mult_3s_3s_0_pp_0_4;   // mult_3s_3s.v(25[10:29])
    wire co_t_mult_3s_3s_0_0_2;   // mult_3s_3s.v(19[10:31])
    wire mult_3s_3s_0_pp_1_4;   // mult_3s_3s.v(17[10:29])
    wire mult_3s_3s_0_pp_1_3;   // mult_3s_3s.v(16[10:29])
    wire co_t_mult_3s_3s_0_0_1;   // mult_3s_3s.v(15[10:31])
    wire mult_3s_3s_0_mult_0_0_n3;   // mult_3s_3s.v(23[10:34])
    wire mult_3s_3s_0_pp_1_2;   // mult_3s_3s.v(14[10:29])
    wire mult_3s_3s_0_pp_0_3;   // mult_3s_3s.v(26[10:29])
    wire mco;   // mult_3s_3s.v(27[10:13])
    wire mult_3s_3s_0_cin_lr_0;   // mult_3s_3s.v(22[10:31])
    
    wire n5, n30;
    
    VHI i2 (.Z(VCC_net));
    FADD2B mult_3s_3s_0_cin_lr_add_0 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_3s_3s_0_cin_lr_0)) /* synthesis syn_instantiated=1 */ ;
    AND2 AND2_t5 (.A(A_c[0]), .B(B_c[0]), .Z(R[0])) /* synthesis syn_instantiated=1 */ ;
    OB Z_pad_2 (.I(Z_c[2]), .O(Z[2]));
    VLO i1 (.Z(GND_net));
    AND2 AND2_t0 (.A(A_c[2]), .B(B_c[2]), .Z(mult_3s_3s_0_pp_1_4)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t2 (.A(A_c[0]), .B(B_c[2]), .Z(mult_3s_3s_0_pp_1_2)) /* synthesis syn_instantiated=1 */ ;
    FADD2B t_mult_3s_3s_0_add_0_2 (.A0(mult_3s_3s_0_pp_0_3), .A1(mult_3s_3s_0_pp_0_4), 
           .B0(mult_3s_3s_0_pp_1_3), .B1(mult_3s_3s_0_pp_1_4), .CI(co_t_mult_3s_3s_0_0_1), 
           .COUT(co_t_mult_3s_3s_0_0_2), .S0(R[3]), .S1(R[4])) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t3 (.A(A_c[2]), .B(B_c[1]), .Z(mult_3s_3s_0_mult_0_1_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t4 (.A(A_c[2]), .B(B_c[0]), .Z(mult_3s_3s_0_mult_0_0_n3)) /* synthesis syn_instantiated=1 */ ;
    FADD2B Cadd_t_mult_3s_3s_0_0_1 (.A0(GND_net), .A1(mult_3s_3s_0_pp_0_2), 
           .B0(GND_net), .B1(mult_3s_3s_0_pp_1_2), .CI(GND_net), .COUT(co_t_mult_3s_3s_0_0_1), 
           .S1(R[2])) /* synthesis syn_instantiated=1 */ ;
    OB Z_pad_3 (.I(Z_c[3]), .O(Z[3]));
    OB Z_pad_1 (.I(Z_c[1]), .O(Z[1]));
    ND2 ND2_t1 (.A(A_c[1]), .B(B_c[2]), .Z(mult_3s_3s_0_pp_1_3)) /* synthesis syn_instantiated=1 */ ;
    FADD2B t_mult_3s_3s_0_add_0_3 (.A0(GND_net), .A1(GND_net), .B0(VCC_net), 
           .B1(GND_net), .CI(co_t_mult_3s_3s_0_0_2), .S0(R[5])) /* synthesis syn_instantiated=1 */ ;
    MULT2 mult_3s_3s_0_mult_0_0 (.A0(A_c[0]), .A1(A_c[1]), .A2(A_c[1]), 
          .A3(mult_3s_3s_0_mult_0_0_n3), .B0(B_c[1]), .B1(B_c[0]), .B2(B_c[1]), 
          .B3(VCC_net), .CI(mult_3s_3s_0_cin_lr_0), .CO(mco), .P0(R[1]), 
          .P1(mult_3s_3s_0_pp_0_2)) /* synthesis syn_instantiated=1 */ ;
    MULT2 mult_3s_3s_0_mult_0_1 (.A0(mult_3s_3s_0_mult_0_1_n0), .A1(VCC_net), 
          .A2(GND_net), .A3(GND_net), .B0(VCC_net), .B1(VCC_net), .B2(B_c[1]), 
          .B3(B_c[0]), .CI(mco), .P0(mult_3s_3s_0_pp_0_3), .P1(mult_3s_3s_0_pp_0_4)) /* synthesis syn_instantiated=1 */ ;
    OB Z_pad_0 (.I(Z_c[0]), .O(Z[0]));
    IB A_pad_2 (.I(A[2]), .O(A_c[2]));
    IB A_pad_1 (.I(A[1]), .O(A_c[1]));
    IB A_pad_0 (.I(A[0]), .O(A_c[0]));
    IB B_pad_2 (.I(B[2]), .O(B_c[2]));
    IB B_pad_1 (.I(B[1]), .O(B_c[1]));
    IB B_pad_0 (.I(B[0]), .O(B_c[0]));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_2_lut (.A(R[1]), .B(R[2]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 R_2__bdd_4_lut (.A(R[2]), .B(R[5]), .C(R[4]), .D(R[3]), .Z(Z_c[2])) /* synthesis lut_function=(A ((C (D))+!B)+!A !(B+!(C+(D)))) */ ;
    defparam R_2__bdd_4_lut.init = 16'hb332;
    LUT4 i1_4_lut (.A(n5), .B(R[5]), .C(R[0]), .D(n30), .Z(Z_c[3])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hccc8;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 R_1__bdd_4_lut (.A(R[1]), .B(R[4]), .C(R[5]), .D(R[3]), .Z(Z_c[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam R_1__bdd_4_lut.init = 16'h8f0e;
    LUT4 R_0__bdd_4_lut (.A(R[0]), .B(R[4]), .C(R[5]), .D(R[3]), .Z(Z_c[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam R_0__bdd_4_lut.init = 16'h8f0e;
    LUT4 i1_2_lut_adj_1 (.A(R[3]), .B(R[4]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_1.init = 16'heeee;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

