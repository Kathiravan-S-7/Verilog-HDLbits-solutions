// Description: 100-bit Ripple Carry Adder using 100 Full Adder instantiations
// Author: Kathiravan S

module full_adder(
    input  a,
    input  b,
    input  cin,
    output sum,
    output cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule


module top_module( 
    input  [99:0] a, b,
    input  cin,
    output [99:0] cout,
    output [99:0] sum
);

    genvar i;

    generate
        for (i = 0; i < 100; i = i + 1) begin : ripple_adder
            if (i == 0) begin
                full_adder fa (
                    .a   (a[i]),
                    .b   (b[i]),
                    .cin (cin),
                    .sum (sum[i]),
                    .cout(cout[i])
                );
            end
            else begin
                full_adder fa (
                    .a   (a[i]),
                    .b   (b[i]),
                    .cin (cout[i-1]),
                    .sum (sum[i]),
                    .cout(cout[i])
                );
            end
        end
    endgenerate

endmodule
