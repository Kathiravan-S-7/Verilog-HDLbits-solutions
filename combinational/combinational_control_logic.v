// Combinational control logic example
// Demonstrates how to avoid latch inference
// Outputs are assigned in all input conditions
// Author: Kathiravan S

module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving
);

    always @(*) begin
        shut_off_computer = cpu_overheated;
    end

    always @(*) begin
        keep_driving = ~arrived & ~gas_tank_empty;
    end

endmodule
