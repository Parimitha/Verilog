module muxe(input [1:0] S,input i0,i1,i2,i3,output reg Y);
  always @(*) 
    begin
      case(S)
      2'h0: Y = i0;
      2'h1: Y = i1;
      2'h2: Y = i2;
      2'h3: Y = i3;
        default: $display("Invalid selection input");
    endcase
  end
endmodule
module mux_tb;
  reg [1:0] S;
  reg i0,i1,i2,i3;
  wire Y;
  muxe mux(S,i0,i1,i2,i3,Y);
  initial begin
    $monitor("S = %b ---- i3 = %b, i2 = %b ,i1 = %b, i0 = %b -> Y = %0b", S,i3,i2,i1,i0, Y);
    {i3,i2,i1,i0} = 4'h5;
    repeat(6) begin
      S = $random;
      #5;
    end
  end
endmodule
