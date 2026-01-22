// 4-bit Shift Register
// Author: Kathiravan S

module top_module (
    input        clk,
    input        shift_in,
    output reg [3:0] q
);
    always @(posedge clk) begin
        q <= {q[2:0], shift_in};
    end
endmodule
