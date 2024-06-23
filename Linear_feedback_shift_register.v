module lin(input clk,reset,output reg [3:0]o);
  always@(posedge clk)
    begin
      if(reset) o<=4'hf;
      else o={o[2:0],(o[3]^o[2])};
    end
endmodule
module lin_tb;
  reg clk,reset;
  wire [3:0]o;
  lin lfsr(clk,reset,o);
  initial begin
    $monitpr("At time %0d: o=%b",o);
    clk=0;
    reset=1;
    #50; $finish;
  end
  always #2 clk=~clk;
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
