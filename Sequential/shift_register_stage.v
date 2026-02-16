// One stage of an n-bit shift register with load and enable
// Author: Kathiravan S

module top_module (
    input clk,
    input w, R, E, L,
    output reg Q
);

    always @(posedge clk) begin
        if (L)
            Q <= R;        
        else if (E)
            Q <= w;    
        else
            Q <= Q;       
    end

endmodule
