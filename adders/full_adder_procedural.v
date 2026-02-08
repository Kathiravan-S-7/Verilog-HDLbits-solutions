// Full adder implemented using procedural (always @(*)) combinational logic
// Author: Kathiravan S

module top_module( 
    input  a, b, cin,
    output reg cout, sum
);

    always @(*) begin
        sum  = a ^ b ^ cin;
        cout = (a & b) | (a & cin) | (b & cin);
    end

endmodule
