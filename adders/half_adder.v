// Half adder: adds two 1-bit inputs and produces sum and carry
// Author: Kathiravan S

module top_module( 
    input  a, b,
    output cout, sum
);
    assign sum  = a ^ b;
    assign cout = a & b;
endmodule

