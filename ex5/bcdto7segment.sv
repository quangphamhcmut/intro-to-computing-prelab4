module bcdto7segment (
  input logic [3:0] data_in,
  output logic [6:0] data_out
);

always_comb begin
  case (data_in)
    4'b0000: data_out = 7'b1000000;
    4'b0001: data_out = 7'b1111001;
    4'b0010: data_out = 7'b0100100;
    4'b0011: data_out = 7'b0110000;
    4'b0100: data_out = 7'b0011001;
    4'b0101: data_out = 7'b0010010;
    4'b0110: data_out = 7'b0000010;
    4'b0111: data_out = 7'b1111000;
    4'b1000: data_out = 7'b0000000;
    4'b1001: data_out = 7'b0011000;
    4'b1010: data_out = 7'b0100111;
    4'b1011: data_out = 7'b0110011;
    4'b1100: data_out = 7'b0011101;
    4'b1101: data_out = 7'b0010110;
    4'b1110: data_out = 7'b0000111;
    4'b1111: data_out = 7'b1111111;
  endcase
end
endmodule: bcdto7segment
