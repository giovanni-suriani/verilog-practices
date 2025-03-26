module somadorCompleto (
    input a, b, carryIn,
    output sum, carryOut
);

assign sum = a ^ b ^ carryIn;
assign carryOut = a & b | ((a ^ b ) & carryIn);
    
endmodule