/* Verilog model created from schematic Stopw.sch -- Jun 13, 2018 12:17 */

module Stopw( D15, EN, MR, PR, RES, SEG, y );
output D15;
 input EN;
 input [1:0] MR;
 input PR;
 input RES;
output [3:0] SEG;
output [1:8] y;
  wire [3:0] seg1;
  wire [3:0] seg2;
  wire [3:0] seg3;
  wire [3:0] seg4;
  wire [3:0] s;
wire N_5;
wire N_1;
wire N_2;
wire N_3;
wire N_4;



dek1z I1 ( .Clk(N_1), .EN(EN), .Q(seg4[3:0]), .RES(RES) );
dek1z I2 ( .Clk(N_2), .Cout(N_1), .EN(EN), .Q(seg3[3:0]), .RES(RES) );
dek1z I3 ( .Clk(N_3), .Cout(N_2), .EN(EN), .Q(seg2[3:0]), .RES(RES) );
dek1z I4 ( .Clk(N_4), .Cout(N_3), .EN(EN), .Q(seg1[3:0]), .RES(RES) );
dec7s I5 ( .A(s[3:0]), .y(y[1:8]) );
clkgen I6 ( .Clk200Hz(N_5), .ClkModeRight(MR[1:0]), .ClkRight(N_4),
         .PulseRight(PR), .SignalRight(D15) );

endmodule // Stopw
