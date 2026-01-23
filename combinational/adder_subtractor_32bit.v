// 32-bit Adder–Subtractor using two 16-bit adders.
// Author: kathiravan S

module top_module(
    input  [31:0] a,
    input  [31:0] b,
    input  sub,
    output [31:0] sum
);

    wire [31:0] b_xor;   
    wire [15:0] p, q;    
    wire c;            
  
    assign b_xor = b ^ {32{sub}};

    add16 lower (
        .a   (a[15:0]),
        .b   (b_xor[15:0]),
        .cin (sub),
        .sum (p),
        .cout(c)
    );

    add16 upper (
        .a   (a[31:16]),
        .b   (b_xor[31:16]),
        .cin (c),
        .sum (q),
        .cout()
    );
  
    assign sum = {q, p};

endmodule
