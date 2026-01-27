// 4-bit priority encoder using casez (combinational logic)
// Author: Kathiravan S

module top_module (
    input  [3:0] in,
    output reg [1:0] pos
);

    always @(*) begin
        casez (in)
            4'b???1: pos = 2'd0; // in[0] has highest priority
            4'b??10: pos = 2'd1;
            4'b?100: pos = 2'd2;
            4'b1000: pos = 2'd3;
            default: pos = 2'd0; // all zeros
        endcase
    end

endmodule

