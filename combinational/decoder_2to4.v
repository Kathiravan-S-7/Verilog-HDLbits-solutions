// 2-to-4 Decoder
// Author: Kathiravan S

module top_module (
    input  [1:0] in,
    output [3:0] out
);
    assign out = 4'b0001 << in;
endmodule
