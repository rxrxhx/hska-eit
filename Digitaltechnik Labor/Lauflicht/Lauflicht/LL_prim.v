// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Thu May 31 19:37:47 2018
//
// Verilog Description of module LL
//

module LL (LED, DIR, INV, MLEFT, MRIGHT, TLEFT, TRIGHT, D14, 
           D15);   // l:/dt/lauflicht.vhd(6[8:10])
    output [7:0]LED;   // l:/dt/lauflicht.vhd(8[3:6])
    input DIR;   // l:/dt/lauflicht.vhd(9[3:6])
    input INV;   // l:/dt/lauflicht.vhd(9[8:11])
    input [1:0]MLEFT;   // l:/dt/lauflicht.vhd(10[3:8])
    input [1:0]MRIGHT;   // l:/dt/lauflicht.vhd(11[3:9])
    input TLEFT;   // l:/dt/lauflicht.vhd(12[3:8])
    input TRIGHT;   // l:/dt/lauflicht.vhd(13[3:9])
    output D14;   // l:/dt/lauflicht.vhd(14[3:6])
    output D15;   // l:/dt/lauflicht.vhd(14[8:11])
    
    wire [7:0]LED_c;   // l:/dt/lauflicht.vhd(8[3:6])
    wire DIR_c;   // l:/dt/lauflicht.vhd(9[3:6])
    wire INV_c;   // l:/dt/lauflicht.vhd(9[8:11])
    wire [1:0]MLEFT_c;   // l:/dt/lauflicht.vhd(10[3:8])
    wire [1:0]MRIGHT_c;   // l:/dt/lauflicht.vhd(11[3:9])
    wire TLEFT_c;   // l:/dt/lauflicht.vhd(12[3:8])
    wire TRIGHT_c;   // l:/dt/lauflicht.vhd(13[3:9])
    wire D14_c;   // l:/dt/lauflicht.vhd(14[3:6])
    wire D15_c;   // l:/dt/lauflicht.vhd(14[8:11])
    wire [7:0]regi;   // l:/dt/lauflicht.vhd(22[10:14])
    
    wire GND_net;
    wire [7:0]n20;
    
    wire VCC_net;
    
    VHI i36 (.Z(VCC_net));
    OB LED_pad_6 (.I(LED_c[6]), .O(LED[6]));
    OB LED_pad_3 (.I(LED_c[3]), .O(LED[3]));
    FD1S3AX regi_i1 (.D(n20[1]), .CK(D14_c), .Q(regi[1]));
    defparam regi_i1.GSR = "DISABLED";
    OB LED_pad_7 (.I(LED_c[7]), .O(LED[7]));
    LUT4 i24_2_lut (.A(regi[3]), .B(INV_c), .Z(LED_c[3])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut.init = 16'h6666;
    OB LED_pad_4 (.I(LED_c[4]), .O(LED[4]));
    FD1S3AX regi_i0 (.D(n20[0]), .CK(D14_c), .Q(regi[0]));
    defparam regi_i0.GSR = "DISABLED";
    OB LED_pad_5 (.I(LED_c[5]), .O(LED[5]));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i52 (.Z(GND_net));
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
    LUT4 i25_2_lut (.A(regi[4]), .B(INV_c), .Z(LED_c[4])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i25_2_lut.init = 16'h6666;
    FD1S3AX regi_i2 (.D(n20[2]), .CK(D14_c), .Q(regi[2]));
    defparam regi_i2.GSR = "DISABLED";
    FD1S3AX regi_i3 (.D(n20[3]), .CK(D14_c), .Q(regi[3]));
    defparam regi_i3.GSR = "DISABLED";
    FD1S3AX regi_i4 (.D(n20[4]), .CK(D14_c), .Q(regi[4]));
    defparam regi_i4.GSR = "DISABLED";
    FD1S3AX regi_i5 (.D(n20[5]), .CK(D14_c), .Q(regi[5]));
    defparam regi_i5.GSR = "DISABLED";
    FD1S3AX regi_i6 (.D(n20[6]), .CK(D14_c), .Q(regi[6]));
    defparam regi_i6.GSR = "DISABLED";
    FD1S3AY regi_i7 (.D(n20[7]), .CK(D14_c), .Q(regi[7]));
    defparam regi_i7.GSR = "DISABLED";
    LUT4 i27_2_lut (.A(regi[6]), .B(INV_c), .Z(LED_c[6])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i27_2_lut.init = 16'h6666;
    LUT4 i28_2_lut (.A(regi[7]), .B(INV_c), .Z(LED_c[7])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i28_2_lut.init = 16'h6666;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 mux_7_i2_3_lut (.A(regi[0]), .B(regi[2]), .C(DIR_c), .Z(n20[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i2_3_lut.init = 16'hcaca;
    ClkGen Clock (.MLEFT({MLEFT_c}), .TLEFT_c(TLEFT_c), .D14_c(D14_c), 
           .MRIGHT({MRIGHT_c}), .TRIGHT_c(TRIGHT_c), .D15_c(D15_c));
    LUT4 mux_7_i1_3_lut (.A(regi[7]), .B(regi[1]), .C(DIR_c), .Z(n20[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i1_3_lut.init = 16'hcaca;
    LUT4 i26_2_lut (.A(regi[5]), .B(INV_c), .Z(LED_c[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i26_2_lut.init = 16'h6666;
    LUT4 i23_2_lut (.A(regi[2]), .B(INV_c), .Z(LED_c[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i23_2_lut.init = 16'h6666;
    LUT4 i22_2_lut (.A(regi[1]), .B(INV_c), .Z(LED_c[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i22_2_lut.init = 16'h6666;
    LUT4 i21_2_lut (.A(regi[0]), .B(INV_c), .Z(LED_c[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i21_2_lut.init = 16'h6666;
    LUT4 mux_7_i3_3_lut (.A(regi[1]), .B(regi[3]), .C(DIR_c), .Z(n20[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i3_3_lut.init = 16'hcaca;
    LUT4 mux_7_i4_3_lut (.A(regi[2]), .B(regi[4]), .C(DIR_c), .Z(n20[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i4_3_lut.init = 16'hcaca;
    LUT4 mux_7_i5_3_lut (.A(regi[3]), .B(regi[5]), .C(DIR_c), .Z(n20[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i5_3_lut.init = 16'hcaca;
    LUT4 mux_7_i6_3_lut (.A(regi[4]), .B(regi[6]), .C(DIR_c), .Z(n20[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i6_3_lut.init = 16'hcaca;
    LUT4 mux_7_i7_3_lut (.A(regi[5]), .B(regi[7]), .C(DIR_c), .Z(n20[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i7_3_lut.init = 16'hcaca;
    LUT4 mux_7_i8_3_lut (.A(regi[6]), .B(regi[0]), .C(DIR_c), .Z(n20[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_7_i8_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ClkGen
//

module ClkGen (MLEFT, TLEFT_c, D14_c, MRIGHT, TRIGHT_c, D15_c);
    input [1:0]MLEFT;
    input TLEFT_c;
    output D14_c;
    input [1:0]MRIGHT;
    input TRIGHT_c;
    output D15_c;
    
    
    LUT4 i2_3_lut (.A(MLEFT[1]), .B(TLEFT_c), .C(MLEFT[0]), .Z(D14_c)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut.init = 16'h0404;
    LUT4 i2_3_lut_adj_1 (.A(MRIGHT[1]), .B(TRIGHT_c), .C(MRIGHT[0]), .Z(D15_c)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_1.init = 16'h0404;
    
endmodule
