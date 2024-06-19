module half_adder(input a,b,output S,Cout);
  assign S=a^b;
  assign Cout=a&b;
endmodule
module halfadder_tb;
  reg a,b;
  wire S,Cout;
  half_adder ha(a,b,S,Cout);
  initial begin
    $monitor("At time %0t: a=%b,b=%b,S=%b,Cout=%b",$time,a,b,S,Cout);
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
  end
endmodule
