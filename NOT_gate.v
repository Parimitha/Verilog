module notg(input a,output x);
  assign x=~a;
endmodule
module notg_tb;
  reg a;
  wire x;
  notg notg_tb(.a(a),.x(x));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    a=0;
    #20;
    a=1;
    #20
    $finish;
  end
  always@(x)
    $display("At time t=%0t: a=%b,x=%b",$time,a,x);
endmodule
