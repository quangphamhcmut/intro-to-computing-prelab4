module wrapper (
  input CLOCK_50,
  output logic [0:0] LEDG
);

design4 dut (
  .clk_in(CLOCK_50),
  .clk_out(LEDG[0])
);

endmodule: wrapper
