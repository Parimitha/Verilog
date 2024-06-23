module norg(input x,y,output z);
  assign z=~(x|y);
endmodule
module tb_norg;
  reg x,y;
  wire z;
  norg tb_norg(.x(x),.y(y),.z(z));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    x=0;y=0;
    #10;
    x=0;y=1;
    #10;
    x=1;y=0;
    #10;
    x=1;y=1;
    $finish;
  end
  always@(z)
    $display("At time %0t: x=%b,y=%b,z=%b",$time,x,y,z);
endmodule
