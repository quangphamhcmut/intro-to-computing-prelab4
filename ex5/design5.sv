module design5 (
  input clk,
  input rst,
  input logic [0:0] X,
  output reg [1:0] Y
);

localparam S0 = 2'b00;
localparam S1 = 2'b01;
localparam S2 = 2'b10;
localparam S3 = 2'b11;

reg [1:0] next_state;
reg [1:0] state;

always @(posedge clk) begin
  if (rst) begin
    state <= S0;
  end
  else begin
    state <= next_state;
  end
end

always @(X or state) begin
  case (state)
    S0: if (X) next_state <= S1;
	else next_state <= S0;
    S1: if (X) next_state <= S0;
	else next_state <= S2;
    S2: if (X) next_state <= S2;
	else next_state <= S3;
    S3: if (X) next_state <= S3;
	else next_state <= S0;
  endcase
end

always @ (*) begin
  case (state)
    S0: Y <= 2'b00;
    S1: Y <= 2'b10;
    S2: Y <= 2'b11;
    S3: Y <= 2'b01;
  endcase
end

endmodule: design5
