/*
 Guia_0103.v
 Arthur Goncalves de Moraes 816479
*/
module Guia_0103;
// define data
 integer x = 54; // decimal
 reg [7:0] b = 0; // binary
// actions
 initial
 begin : main
 $display ( "Guia_0103 - Tests" );
 $display ( "x = %d" , x );
 $display ( "b = %8b", b );
 b = x;
 $display ( "b = %B (2) = %o (8) = %x (16) = %X (16)", b, b, b, b );
 end // main
endmodule // Guia_0103
