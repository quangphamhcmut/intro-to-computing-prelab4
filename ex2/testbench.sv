`timescale 1 s / 1 s
module testbench ();
  reg a, b, sel;
  wire sum;

  design2 dut (
    .a(a),
    .b(b),
    .sel(sel),
    .sum(sum)
  );


  // Create clock signal
  /*
  reg clk;
  always begin
    #1 clk = ~clk;
  end;
  */

  initial begin
    a <= 4'b0000;
    b <= 4'b0000;
    sel <= 1'b0;

    for (int i = 0; i < 16; i++) begin
      for (int t = 0; t < 16; t ++) begin
	#1 $display("Time: %0t |  Select = %b |  A = %b  |  B = %b  |  Sum:  %b", $time, sel, a, b, sum);
	b <= b + 1'b1;
      end

      sel <= 1'b1;
      b <= 4'b0000;

      for (int t = 0; t < 16; t ++) begin
	#1 $display("Time: %0t |  Select = %b |  A = %b  |  B = %b  |  Sum:  %b", $time, sel, a, b, sum);
	b <= b + 1'b1;
      end

      a <= a + 1'b1;
    end

    #10 $finish;

  end
endmodule
