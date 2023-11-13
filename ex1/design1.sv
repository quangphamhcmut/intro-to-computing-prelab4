module design1 (
  input C_in, a, b,
  output C_out, sum
);

  assign sum = a^b^C_in;
  assign C_out = a&b | (a^b)&C_in;

endmodule: design1
