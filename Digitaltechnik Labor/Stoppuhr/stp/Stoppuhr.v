/* Verilog model created from schematic Stoppuhr.sch -- Nov 20, 2018 08:01 */

module Stoppuhr( D15, MR, PR, RES, SEG, Start, Stop, y );
output D15;
 input [1:0] MR;
 input PR;
 input RES;
output [3:0] SEG;
 input Start;
 input Stop;
output [1:8] y;
  wire [3:0] seg1;
  wire [3:0] seg2;
  wire [3:0] seg3;
  wire [3:0] s;
  wire [3:0] seg4;
wire N_9;
wire N_10;
wire N_11;
wire N_7;
wire N_8;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;



OR2 I11 ( .A(N_9), .B(RES), .Z(N_10) );
INV I9 ( .A(Stop), .Z(N_9) );
INV I10 ( .A(Start), .Z(N_11) );
srff I8 ( .D(N_8), .R(N_10), .S(N_11) );
mux4 I7 ( .Clk(N_2), .D1(seg1[3:0]), .D2(seg2[3:0]), .D3(seg3[3:0]),
       .D4(seg4[3:0]), .DP(N_7), .Q(s[3:0]), .Seg7(SEG[3:0]) );
dek1z I1 ( .Clk(N_3), .EN(N_8), .Q(seg4[3:0]), .RES(RES) );
dek1z I2 ( .Clk(N_4), .Cout(N_3), .EN(N_8), .Q(seg3[3:0]), .RES(RES) );
dek1z I3 ( .Clk(N_5), .Cout(N_4), .EN(N_8), .Q(seg2[3:0]), .RES(RES) );
dek1z I4 ( .Clk(N_6), .Cout(N_5), .EN(N_8), .Q(seg1[3:0]), .RES(RES) );
dec7s I5 ( .A(s[3:0]), .DP(N_7), .y(y[1:8]) );
clkgen I6 ( .Clk200Hz(N_2), .ClkModeRight(MR[1:0]), .ClkRight(N_6),
         .PulseRight(PR), .SignalRight(D15) );

endmodule // Stoppuhr
