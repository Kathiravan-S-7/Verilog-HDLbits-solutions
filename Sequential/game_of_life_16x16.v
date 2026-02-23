// 16x16 toroidal Conway's Game of Life with synchronous load and wrap-around boundaries
// Author: Kathiravan S

module top_module(
    input clk,
    input load,
    input [255:0] data,
    output reg [255:0] q
);

    integer r, c;
    integer count;
    reg [255:0] next_q;

    always @(*) begin
        for (r = 0; r < 16; r = r + 1) begin
            for (c = 0; c < 16; c = c + 1) begin

                count = 0;

                count = count +
                    q[ (( (r+15)%16 )*16) + ((c+15)%16) ] +
                    q[ (( (r+15)%16 )*16) + (c) ] +
                    q[ (( (r+15)%16 )*16) + ((c+1)%16) ] +
                    q[ (r*16) + ((c+15)%16) ] +
                    q[ (r*16) + ((c+1)%16) ] +
                    q[ (( (r+1)%16 )*16) + ((c+15)%16) ] +
                    q[ (( (r+1)%16 )*16) + (c) ] +
                    q[ (( (r+1)%16 )*16) + ((c+1)%16) ];

                if (count < 2)
                    next_q[r*16 + c] = 0;
                else if (count == 2)
                    next_q[r*16 + c] = q[r*16 + c];
                else if (count == 3)
                    next_q[r*16 + c] = 1;
                else
                    next_q[r*16 + c] = 0;

            end
        end
    end

    always @(posedge clk) begin
        if (load)
            q <= data;
        else
            q <= next_q;
    end

endmodule
