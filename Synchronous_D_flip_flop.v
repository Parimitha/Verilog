module D_FF (input clk, rst,input D,output reg Q);
  always@(posedge clk) 
    begin
      if(!rst) Q <= 0;
    else       Q <= D;
  end
endmodule
module tb;
  reg clk, rst;
  reg D;
  wire Q;
  D_FF dff(clk, rst, D, Q);
  always #2 clk = ~clk;
  initial begin
    clk = 0; rst = 0;
    D = 0;
    #3 rst = 1;
    repeat(6) begin
      D = $urandom_range(0, 1);
      #3;
    end
    rst = 0; #3;
    rst = 1;
    repeat(6) begin
      D = $urandom_range(0, 1);
      #3;
    end
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
