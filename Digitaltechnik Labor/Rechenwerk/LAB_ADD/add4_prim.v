// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Thu May 10 15:08:32 2018
//
// Verilog Description of module add4
//

module add4 (A, B, Z);   // h:/digitaltechnik_labor/projects/lab_add/lab_add.vhd(5[8:12])
    input [2:0]A;   // h:/digitaltechnik_labor/projects/lab_add/lab_add.vhd(7[3:4])
    input [2:0]B;   // h:/digitaltechnik_labor/projects/lab_add/lab_add.vhd(7[6:7])
    output [3:0]Z;   // h:/digitaltechnik_labor/projects/lab_add/lab_add.vhd(8[3:4])
    
    wire [2:0]A_c;   // h:/digitaltechnik_labor/projects/lab_add/lab_add.vhd(7[3:4])
    wire [2:0]B_c;   // h:/digitaltechnik_labor/projects/lab_add/lab_add.vhd(7[6:7])
    wire [3:0]Z_c;   // h:/digitaltechnik_labor/projects/lab_add/lab_add.vhd(8[3:4])
    
    wire GND_net, n25, VCC_net;
    
    VLO i157 (.Z(GND_net));
    OB Z_pad_3 (.I(Z_c[3]), .O(Z[3]));
    IB A_pad_0 (.I(A[0]), .O(A_c[0]));
    LUT4 i2_3_lut (.A(B_c[2]), .B(n25), .C(A_c[2]), .Z(Z_c[2])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i2_3_lut.init = 16'h9696;
    GSR GSR_INST (.GSR(VCC_net));
    OB Z_pad_1 (.I(Z_c[1]), .O(Z[1]));
    OB Z_pad_2 (.I(Z_c[2]), .O(Z[2]));
    IB A_pad_2 (.I(A[2]), .O(A_c[2]));
    OB Z_pad_0 (.I(Z_c[0]), .O(Z[0]));
    IB A_pad_1 (.I(A[1]), .O(A_c[1]));
    IB B_pad_2 (.I(B[2]), .O(B_c[2]));
    IB B_pad_1 (.I(B[1]), .O(B_c[1]));
    IB B_pad_0 (.I(B[0]), .O(B_c[0]));
    LUT4 i72_3_lut (.A(A_c[2]), .B(n25), .C(B_c[2]), .Z(Z_c[3])) /* synthesis lut_function=(A ((C)+!B)+!A !(B+!(C))) */ ;
    defparam i72_3_lut.init = 16'hb2b2;
    LUT4 i2_3_lut_4_lut (.A(B_c[0]), .B(A_c[0]), .C(A_c[1]), .D(B_c[1]), 
         .Z(Z_c[1])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8778;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i71_4_lut_3_lut_4_lut (.A(B_c[0]), .B(A_c[0]), .C(B_c[1]), .D(A_c[1]), 
         .Z(n25)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam i71_4_lut_3_lut_4_lut.init = 16'hf880;
    LUT4 i19_2_lut (.A(A_c[0]), .B(B_c[0]), .Z(Z_c[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i19_2_lut.init = 16'h6666;
    VHI i158 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

