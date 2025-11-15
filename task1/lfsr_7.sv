module lfsr7 (
    input logic clk,    // clock
    input logic rst,    // reset
    input logic en,      // enable signal
    output logic [6:0] data_out // pseudo-random output
);

logic [6:0] sreg;

always_ff @(posedge clk, posedge rst)
    if (rst)
        sreg <= 7'b1;
    else 
        sreg <= {sreg[5:0], sreg[2] ^ sreg[6]};

assign data_out = sreg;

endmodule