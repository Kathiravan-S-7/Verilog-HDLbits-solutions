// Moore FSM for serial 2's complement generation
// Author: Kathiravan S

module top_module (
    input clk,
    input areset,
    input x,
    output reg z
);

parameter A = 1'b0, B = 1'b1;

reg state;

always @(posedge clk or posedge areset) begin
    if (areset) begin
        state <= A;
        z <= 0;
    end
    else begin
        case(state)
            A: begin
                z <= x;
                if (x)
                    state <= B;
                else
                    state <= A;
            end

            B: begin
                z <= ~x;
                state <= B;
            end
        endcase
    end
end

endmodule
