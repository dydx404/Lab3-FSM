module lfsr4 (
    input logic clk,    // clock
    input logic rst,    // reset
    input logic en,      // enable signal
    output logic [3:0] data_out // pseudo-random output
);

logic [3:0] sreg;

always_ff @(posedge clk, posedge rst)
    if (rst)
        sreg <= 4'b0001;
    else 
        sreg <= {sreg[2:0], sreg[3] ^ sreg[2]};

assign data_out = sreg;

endmodule