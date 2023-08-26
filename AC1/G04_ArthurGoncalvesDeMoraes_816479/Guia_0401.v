// Arthur Goncalves de Moraes 816479

module fxyz (output s,
 input x, y, z);
assign s = ( ~x | y ) & ( ~y | ~z);
endmodule // fxyz


// ---------------------
// -- test_module
// ---------------------
module test_module;
reg x, y, z;
wire s1;
// instancias
fxyz FXYZ1 (s1, x, y, z);
// valores iniciais
initial begin: start
x=1'bx; y=1'bx; y=1'bx; // indefinidos
end
// parte principal
initial begin: main
// identificacao
$display("Guia_0401");
$display("Test boolean expression");
$display("\n( ~x | y ) & ( ~y | ~z) = s1\n");
// monitoramento
$display(" x  y  z = s1");
$monitor("%2b %2b %2b = %2b", x, y, z, s1);
// sinalizacao
#1 x=0; y=0; z = 0;
#1 x=0; y=0; z = 1;
#1 x=0; y=1; z = 0;
#1 x=0; y=1; z = 1;
#1 x=1; y=0; z = 0;
#1 x=1; y=0; z = 1;
#1 x=1; y=1; z = 0;
#1 x=1; y=1; z = 1;
end
endmodule // test_module
