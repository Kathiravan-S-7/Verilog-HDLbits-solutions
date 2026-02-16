// JK flip-flop implemented using a D flip-flop and logic gates
// Author: Kathiravan S

module top_module (
    input clk,
    input j,
    input k,
    output reg Q
);

    wire D;

    assign D = (j & ~Q) | (~k & Q);

    always @(posedge clk) begin
        Q <= D;
    end

endmodule
