module orgate(input a,b,output y);
  assign y=a|b;
endmodule
module tb_org;
  reg a,b;
  wire y;
  orgate tb_org(.a(a),.b(b),.y(y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
    $finish;
  end
  always @(y)
    $display("At time %0d: a=%b,b=%b,y=%b",$time,a,b,y);
endmodule
