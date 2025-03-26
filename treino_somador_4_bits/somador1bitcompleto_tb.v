`include "treino_somador_4_bits/somador1bitcompleto.v"
module testBench;
    reg a, b, carryIn;
    wire carryOut, sum;

    somadorCompleto u_somadorCompleto(
        .a        (a        ),  // .input do modulo (variavel do testbench)
        .b        (b        ),
        .carryIn  (carryIn  ),
        .sum      (sum      ),
        .carryOut (carryOut )
    );
    integer i;

    initial begin
        
        $display("Testando essa porra!!");
        #1
        a = 0; b = 0; carryIn = 0;
        $display("a = %b | b = %b | cin = %b: sum = %b | cout = %b", a, b, carryIn, sum, carryOut);
        #1
        a = 0; b = 1; carryIn = 0;
        $display("a = %b | b = %b | cin = %b: sum = %b | cout = %b", a, b, carryIn, sum, carryOut);
        #1
        // Testando todos os 8 casos com for
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, carryIn} = i; // combinações de 3 bits
            #1
            $display("a = %b | b = %b | cin = %b : sum = %b | cout = %b", a, b, carryIn, sum, carryOut);
        end
    end
    
endmodule 