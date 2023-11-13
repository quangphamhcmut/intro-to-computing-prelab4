module design4 (
  input clk_in,
  output clk_out
);


//logic rst;
integer count = 0;

/*
counter # (
  .Width(25),
  .MaxValue(25'b1011111010111100001000000)
  ) counter1 (
    .clk(clk_in),
    .rst(rst),
    .out(count)
  );

always_ff @ (posedge clk_in) begin
  if (count == 25'b1011111010111100001000000) begin
    clk_out <= ~ clk_out;
    //rst <= '1;
    //rst <= '0;
  end
end
*/

always_ff @(posedge clk_in)begin
  count <= count + 1;
  if (count == 25000000) begin
    clk_out = ~ clk_out;
    count <= 0;
  end
end


endmodule: design4
