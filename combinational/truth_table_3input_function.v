// 3-input combinational logic implemented from a truth table (sum-of-products)
// Author: Kathiravan S

module top_module( 
    input x3,
    input x2,
    input x1,
    output f
);
    assign f = (~x3 & x2 & ~x1) | (~x3 & x2 & x1) | (x3 & ~x2 & x1) | (x3 & x2 & x1);
endmodule
