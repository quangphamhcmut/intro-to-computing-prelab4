module counter # (
  parameter Width = 25,
  //parameter MaxValue = 25'b1011111010111100001000000
  parameter MaxValue = 25000000
  ) (
  input logic clk,
  input logic rst,
  output logic [Width-1:0] out
  );
  
  logic count = 0;

  always_ff @ (posedge clk, posedge rst) begin
    if (rst) begin
      count <= 0;
    end
    else if (count < MaxValue) begin
      count <= count + 1;
    end
    else if (count == MaxValue) begin
      count <= 0;
    end
    out = count;
  end
endmodule: counter
