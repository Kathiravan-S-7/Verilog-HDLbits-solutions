// Basic Gates - HDLBits practice
// Author: Kathiravan S

module top_module (
    input  a,
    input  b,
    output and_out,
    output or_out
);
    assign and_out = a & b;
    assign or_out  = a | b;
endmodule
