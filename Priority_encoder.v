module prior(input [7:0] A,output reg [2:0] Y);
  always@(A) begin
    casex(A)
      8'b1xxx_xxxx: Y = 3'b111;
      8'b01xx_xxxx: Y = 3'b110;
      8'b001x_xxxx: Y = 3'b101;
      8'b0001_xxxx: Y = 3'b100;
      8'b0000_1xxx: Y = 3'b011;
      8'b0000_01xx: Y = 3'b010;
      8'b0000_001x: Y = 3'b001;
      8'b0000_0001: Y = 3'b000;
      default: $display("Invalid data received");
    endcase
  end
endmodule
module prior_tb;
  reg [7:0] A;
  wire [2:0] Y;
  prior pri_enc(A,Y);
  initial begin
    $monitor("A=%b -> Y=%0b",A,Y);
    repeat(5) begin
      A=$random; #1;
    end
  end
endmodule
