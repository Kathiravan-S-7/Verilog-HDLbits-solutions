// Combinational Logic Circuits
// Author: Kathiravan Srini

module top_module (
    input  a,
    input  b,
    input  sel,
    output and_out,
    output or_out,
    output mux_out
);

    assign and_out = a & b;
    assign or_out  = a | b;

    assign mux_out = sel ? b : a;

endmodule
