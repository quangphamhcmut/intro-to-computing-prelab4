module wrapper (
  input logic [3:0] KEY,
  input logic [0:0] SW,
  output logic [0:0] LEDR,
  output logic [7:0] LEDG,
);

logic [0:0] clk;
logic [0:0] rst;
assign clk = ~ KEY[3];
assign rst = ~ KEY[2];

design5 dut (
  .clk(clk),
  .rst(rst),
  .X(SW[0]),
  .Y(LEDG[1:0])
);

assign LEDR = SW;
assign LEDG[7] = clk;
assign LEDG[5] = rst;

endmodule: wrapper
