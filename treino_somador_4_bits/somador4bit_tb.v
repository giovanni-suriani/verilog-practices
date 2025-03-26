`include "treino_somador_4_bits/somador1bit.v"

module somador4bit;

reg [3:0] a, b;
wire [3:0] saida;
wire sum, carryOut;

somadorSimples u1_somadorSimples(
    .a        (a[0]        ),
    .b        (b        ),
    .sum      (sum      ),
    .carryOut (carryOut )
);



    
endmodule