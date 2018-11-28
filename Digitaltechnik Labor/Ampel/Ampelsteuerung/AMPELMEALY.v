/* Verilog model created from schematic AMPELMEALY.sch -- Jun 15, 2018 13:44 */

module AMPELMEALY( ANF, CMR, FA, KFZA, PR );
 input ANF;
 input [1:0] CMR;
output [1:0] FA;
output [2:0] KFZA;
 input PR;
  wire [3:0] ZUST;
wire N_9;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_8;



INV I7 ( .A(N_6), .Z(N_5) );
OR2 I8 ( .A(N_3), .B(N_2), .Z(N_4) );
AND2 I9 ( .A(N_6), .B(N_8), .Z(N_2) );
AND2 I2 ( .A(ANF), .B(N_5), .Z(N_3) );
srff I3 ( .D(N_6), .R(N_9), .S(N_3) );
count4bit I4 ( .CLK(N_4), .LED(ZUST[3:0]), .RES(N_9) );
clkgen I5 ( .ClkModeRight(CMR[1:0]), .ClkRight(N_8), .PulseRight(PR) );
ampel I10 ( .FA(FA[1:0]), .I(ZUST[3:0]), .KFZA(KFZA[2:0]), .RES(N_9) );

endmodule // AMPELMEALY
