module srff(s,r,clk,reset,q,qd);
  input s,r,clk,reset;
  output q,qd;
  wire s,r,clk,reset,qd;
  reg q;
  always@(posedge clk)
    if(reset)
      q<=0;
  else if(s==0 && r==0) q<=q;
  else if(s==0 && r==1) q<=0;
  else if(s==1 && r==0) q<=1;
  else if(s==1 && r==1) q<=x;
  end
  assign qd=~q;
endmodule
module srff_tb;
  reg s,r,clk,reset;
  wire q,qd;
  srff srffd(.s(s),.r(r),.clk(clk),.reset(reset),.q(q),.qd(qd));
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      clk=0;
      s=0 r=0;
      #5 reset=1;
      #30 reset=0;
      #100 $finish;
    end
  always #5 clk=~clk;
  always #30 s=~s;
  always #40 r=~r;
endmodule
