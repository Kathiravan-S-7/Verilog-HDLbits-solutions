// Moore FSM detecting if at least two of three consecutive w inputs are 1 
// Author: Kathiravan S

module top_module (
    input clk,
    input reset,
    input s,
    input w,
    output z
);

parameter A=0, B0=1, B1=2, B2=3, C0=4, C1=5, C2=6;

reg [2:0] state,next;

always @(*) begin
    case(state)

    A:  next = s ? (w ? B1 : B0) : A;

    B0: next = w ? B1 : C0;
    B1: next = w ? B2 : C1;
    B2: next = w ? C2 : C2;

    C0: next = w ? B1 : B0;
    C1: next = w ? B2 : B1;
    C2: next = w ? B2 : B2;

    default: next = A;

    endcase
end

always @(posedge clk) begin
    if(reset)
        state <= A;
    else
        state <= next;
end

assign z = (state == C2);

endmodule
