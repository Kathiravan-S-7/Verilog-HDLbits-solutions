// 3-input combinational logic derived from Karnaugh map (OR function)
// Author: Kathiravan S

module top_module(
    input a,
    input b,
    input c,
    output out
);
    assign out = a | b | c;
endmodule
