// 3-bit population count: counts number of 1s in the input vector
// Author: Kathiravan S

module top_module( 
    input  [2:0] in,
    output [1:0] out
);
    assign out = in[0] + in[1] + in[2];
endmodule
