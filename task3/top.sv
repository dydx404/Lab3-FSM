module top (
    input  logic        clk,
    input  logic        rst,
    input  logic        en,
    input  logic [15:0] N,
    output logic [7:0]  data_out   // <-- ADD THIS LINE (8 bits)
);

    logic tick;

    // Clock divider (Task 3)
    clktick clkdiv (
        .clk(clk),
        .rst(rst),
        .en(en),
        .N(N),
        .tick(tick)
    );

    // Finite State Machine (Task 1)
    f1_fsm fsm (
        .clk(clk),
        .rst(rst),
        .en(tick),          // FSM updates once per tick
        .data_out(data_out) // connect FSM output to top output
    );

endmodule
