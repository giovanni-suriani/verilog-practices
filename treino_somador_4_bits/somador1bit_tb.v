`include "treino_somador_4_bits/somador1bit.v"

module somador_tb(output sum, carryOut);
    reg a, b;

somadorSimples u_somadorSimples(
    .a        (a        ),
    .b        (b        ),
    .sum      (sum      ),
    .carryOut (carryOut )
);

initial begin
$display("a b | sum carryout");
$display("--------------");

// Teste 0 + 0
a = 0; b = 0;
#1 $display("%b %b |  %b     %b", a, b, sum, carryOut);

// Teste 0 + 1
a = 0; b = 1;
#1 $display("%b %b |  %b     %b", a, b, sum, carryOut);

// Teste 1 + 0
a = 1; b = 0;
#1 $display("%b %b |  %b     %b", a, b, sum, carryOut);

// Teste 1 + 1
a = 1; b = 1;
#1 $display("%b %b |  %b     %b", a, b, sum, carryOut);

$finish;
end


endmodule

// iverilog -o somador1bit treino_somador_4_bits/somador1bit_tb.v 