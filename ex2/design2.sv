module design2 (
  input [3:0] a,
  input [3:0] b,
  input subtract,
  output reg c_out,
  output reg [3:0] sum
);

always @(*) begin
  if (subtract)
    {c_out, sum} = a - b;
  else
    {c_out, sum} = a + b;
end

endmodule: design2
