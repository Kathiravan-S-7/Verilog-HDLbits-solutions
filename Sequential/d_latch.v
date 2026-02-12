// Level-sensitive D latch with enable
// Author: Kathiravan S

module top_module (
    input d, 
    input ena,
    output reg q
);

    always @(d or ena) begin
        if (ena)
            q <= d;
    end

endmodule
