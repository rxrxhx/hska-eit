/* Verilog model created from schematic count7seg.sch -- Jun 08, 2018 13:55 */

module count7seg( C, D14, D15, DIR, MLEFT, MRIGHT, RES, TLEFT, TRIGHT, y );
output C;
output D14;
output D15;
 input DIR;
 input [1:0] MLEFT;
 input [1:0] MRIGHT;
 input RES;
 input TLEFT;
 input TRIGHT;
output [1:8] y;
  wire [3:0] LEDBUS;
wire N_1;



VLO I1 ( .Z(N_1) );
lauflicht I2 ( .D14(D14), .D15(D15), .DIR(DIR), .LED(LEDBUS[3:0]),
            .MLEFT(MLEFT[1:0]), .MRIGHT(MRIGHT[1:0]), .RES(RES),
            .TLEFT(TLEFT), .TRIGHT(TRIGHT) );
dec7s I3 ( .A(LEDBUS[3:0]), .C(C), .DP(N_1), .y(y[1:8]) );

endmodule // count7seg
