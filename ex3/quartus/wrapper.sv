`timescale 1 s / 1 s
module wrapper (
  input logic [3:0] SW,
  output logic [6:0] HEX0,
  output logic [6:0] HEX1,
  output logic [6:0] HEX2,
  output logic [6:0] HEX3,
  output logic [6:0] HEX4,
  output logic [6:0] HEX5,
  output logic [6:0] HEX6,
  output logic [6:0] HEX7,
  output logic [3:0] LEDR
);

logic [3:0] tmp;
logic clk;

always #1 clk = ~clk;

design3 dut1 (
  .i3(SW[3]),
  .i2(SW[2]),
  .i1(SW[1]),
  .i0(SW[0]),
  .a(HEX0[0]),
  .b(HEX0[1]),
  .c(HEX0[2]),
  .d(HEX0[3]),
  .e(HEX0[4]),
  .f(HEX0[5]),
  .g(HEX0[6]),
);

design3 dut2 (
  .i3(tmp[3]),
  .i2(tmp[2]),
  .i1(tmp[1]),
  .i0(tmp[0]),
  .a(HEX1[0]),
  .b(HEX1[1]),
  .c(HEX1[2]),
  .d(HEX1[3]),
  .e(HEX1[4]),
  .f(HEX1[5]),
  .g(HEX1[6]),
);

assign LEDR = SW;

assign HEX2 = 7'b1111111;
assign HEX3 = 7'b1111111;
assign HEX4 = 7'b1111111;
assign HEX5 = 7'b1111111;
assign HEX6 = 7'b1111111;
assign HEX7 = 7'b1111111;


initial begin
  tmp = 4'b0000;
end

always_ff @(posedge clk) begin
  if (tmp == 4'b1111) begin
    tmp = 4'b0000;
  end
  else begin
    tmp = tmp + '1;
  end
end

endmodule: wrapper
