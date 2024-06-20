module bing(B,G);
  input [3:0]B;
  wire [3:0]B;
  input [3:0]G;
  wire [3:0]G;
  assign G[3]=B[3];
  assign G[2:0]=B[3:1]^B[2:0];
endmodule
module bing_tb;
  reg [3:0]B;
  wire [3:0]G;
  bing bing_tb(.B(B),.G(G));
  always #5 B=B+1;
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      $monitor("At time %0t: B=%b, G=%b",$time,B,G);
      B<=4'b0000;
      #80 $finish;
    end
endmodule
