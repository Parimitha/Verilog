module D_FF (input clk,reset,input D, output reg Q);
  always@(posedge clk or negedge reset) begin
    if(!reset) Q <= 0;
    else Q <= D;
  end
endmodule
module tb;
  reg clk,reset;
  reg D;
  wire Q;
  D_FF dff(clk,reset,D,Q);
  always #2 clk = ~clk;
  initial begin
    clk = 0; reset = 0;
    D = 0;
    #3 reset = 1;
    repeat(6) begin
      D = $urandom_range(0, 1);
      #3;
    end
    reset = 0; #3;
    reset = 1;
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
