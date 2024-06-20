module grayb(G,B);
  input [3:0]G;
  output [3:0]B;
  assign B[3]=G[3];
  assign B[2]=G[3]^G[2];
  assign B[1]=G[3]^G[2]^G[1];
  assign B[0]=G[3]^G[2]^G[1]^G[0];
endmodule
module grayb_tb;
  reg [3:0]G;
  wire [3:0]B;
  grayb grayb_tb(.G(G),.B(B));
  always #5 G=G+1;
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      $monitor("At time %0t: G=%b,B=%b",$time, G,B);
      G<=4'b0000;
      #80 $finish;
    end
endmodule
