// Simple positive-edge triggered D flip-flop
// Author: Kathiravan S

module top_module (
    input clk,    
    input d,
    output reg q );
    
    always @(posedge clk) begin 
         q<=d;
    end
    

endmodule
