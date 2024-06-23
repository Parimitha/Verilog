module tff(clk,data,reset,q);
  input clk,data,reset;
  output q;
  reg q;
  always@(posedge clk)
    if(~reset)begin
      q<=0;
    end else if(data) begin
      q<=!q;
    end
endmodule
module tff_tb;
  reg clk,data,reset;
  wire q;
  tff tffd(.clk(clk),.data(data),.reset(reset),.q(q));
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      clk=0;
      data=0;
      reset=0;
      #5 reset=0;
      #30 reset=1;                           
      $monitor($time,"clk=%b,data=%b,reset=%b,q=%b",clk,data,reset,q);
      #50 $finish;
    end
      always #5 clk=~clk;
        always #30  data=~data;
endmodule
      
