`timescale 1 ns / 100 ps

module testbench ();
  reg [2:0] input_tmp;
  wire sum, C_out;

  logic C_in, a, b;
  assign C_in = input_tmp[2];
  assign a = input_tmp[1];
  assign b = input_tmp[0];

  design1 dut (
    .C_in(C_in),
    .a(a),
    .b(b),
    .sum(sum),
    .C_out(C_out)
  );

  /*
  reg clk;
  always begin
    #1 clk = ~clk;
  end;
  */

  initial begin
    //Initialize input
    input_tmp = 3'b000;

    for (int i = 0; i < 8; i++) begin
      #1 $display("Time: %0t, C_in = %b, a = %b, b = %b, sum = %b, C_out = %b", $time, C_in, a, b, sum, C_out);
      input_tmp = input_tmp + 1'b1;
    end

    #10 $finish;
  end

endmodule
