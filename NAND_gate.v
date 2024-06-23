module nandg(input a,b,output y);
  assign y=~(a&b);
endmodule
module tb_nandg;
  reg a,b;
  wire y;
  nandg tb_nandg(.a(a),.b(b),.y(y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    a=1'b0;b=1'b0;
    #10;
    a=1'b0;b=1'b1;
    #10;
    a=1'b1;b=1'b0;
    #10;
    a=1'b1'b=1'b1;
    $finish;
  end
  always@(y)
    $display("At time %0t: a=%b,b=%b,y=%b",$time,a,b,y);
endmodule
