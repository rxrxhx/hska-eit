/* Verilog model created from schematic Dec4Cnt.sch -- Jun 13, 2018 00:19 */

module Dec4Cnt;
wire N_1;



dek1z I1 ( .Clk(N_1) );
dec7s I2 ();
clkgen I3 ( .ClkRight(N_1) );

endmodule // Dec4Cnt
