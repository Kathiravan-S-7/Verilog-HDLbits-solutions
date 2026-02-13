// Load-enabled D flip-flop with mux (ECE253 2015 Q5 submodule)
// Author: Kathiravan S

module top_module (
    input clk,
    input L,
    input r_in,
    input q_in,
    output reg Q
);

    always @(posedge clk) begin
        if (L)
            Q <= r_in;  
        else
            Q <= q_in;   
    end

endmodule
