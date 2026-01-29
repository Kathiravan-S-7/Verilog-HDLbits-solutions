// Description:
// Code 1: Generates even parity for an 8-bit input using the reduction XOR operator.
// Code 2: Demonstrates reduction AND, OR, and XOR operations on a 100-bit input vector.
// Code 3: Reverses the bit ordering of a 100-bit input using combinational logic and a for loop.
// Author: Kathiravan S.



//------------------------------------------------------------
// Code 1: Even Parity Generator using Reduction XOR
//------------------------------------------------------------
module parity_generator (
    input  [7:0] in,
    output parity
);

    assign parity = ^in;

endmodule



//------------------------------------------------------------
// Code 2: Reduction AND, OR, XOR on 100-bit Vector
//------------------------------------------------------------
module reduction_operators (
    input  [99:0] in,
    output out_and,
    output out_or,
    output out_xor
);

    assign out_and = &in;
    assign out_or  = |in;
    assign out_xor = ^in;

endmodule



//------------------------------------------------------------
// Code 3: 100-bit Bit Reversal using Combinational Logic
//------------------------------------------------------------
module bit_reverse_100 (
    input  [99:0] in,
    output reg [99:0] out
);

    integer i;

    always @(*) begin
        for (i = 0; i < 100; i = i + 1) begin
            out[i] = in[99 - i];
        end
    end

endmodule
