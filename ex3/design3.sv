module design3 (
  input logic i3, i2, i1, i0,
  output logic a, b, c, d, e, f, g
);

logic [3:0] input_tmp;
logic [6:0] output_tmp;
assign input_tmp = {i3, i2, i1, i0};
assign a = output_tmp[0];
assign b = output_tmp[1];
assign c = output_tmp[2];
assign d = output_tmp[3];
assign e = output_tmp[4];
assign f = output_tmp[5];
assign g = output_tmp[6];

always @(*) begin
  case (input_tmp)
    4'b0000: output_tmp = 7'b1000000;
    4'b0001: output_tmp = 7'b1111001;
    4'b0010: output_tmp = 7'b0100100;
    4'b0011: output_tmp = 7'b0110000;
    4'b0100: output_tmp = 7'b0011001;
    4'b0101: output_tmp = 7'b0010010;
    4'b0110: output_tmp = 7'b0000010;
    4'b0111: output_tmp = 7'b1111000;
    4'b1000: output_tmp = 7'b0000000;
    4'b1001: output_tmp = 7'b0011000;
    4'b1010: output_tmp = 7'b0100111;
    4'b1011: output_tmp = 7'b0110011;
    4'b1100: output_tmp = 7'b0011101;
    4'b1101: output_tmp = 7'b0010110;
    4'b1110: output_tmp = 7'b0000111;
    4'b1111: output_tmp = 7'b1111111;
  endcase
end
endmodule: design3
