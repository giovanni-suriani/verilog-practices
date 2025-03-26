module somadorSimples (
    input a, b, 
    output sum, carryOut
);

assign sum = a ^ b; // a xor b
assign carryOut = a & b; // a and b
    
endmodule


// iverilog -o soamdor1bit somador1bit.v
