// AND Gate Using contineous and procedudral 
// Author: Kathiravan S
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    always out_assign=a&b;
    
    always @(*) begin
        out_alwaysblock=a&b;
    end 
endmodule
