module wrapper (
  input logic [8:0] SW,
  output logic [8:0] LEDR,
  output logic [4:0] LEDG
);

design2 dut (
  .subtract(SW[4]),
  .a(SW[8:5]),
  .b(SW[3:0]),
  .c_out(LEDG[4]),
  .sum(LEDG[3:0])
);

assign LEDR = SW;

endmodule: wrapper
