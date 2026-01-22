// 32-bit Carry Select Adder
// Author: Kathiravan S

module top_module(
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] sum
);
    wire p;
    wire [15:0] sum0, sum1;

    add16 x (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .cout(p),
        .sum(sum[15:0])
    );

    add16 lower (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .cout(),
        .sum(sum0)
    );

    add16 upper (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .cout(),
        .sum(sum1)
    );

    assign sum[31:16] = p ? sum1 : sum0;

endmodule
