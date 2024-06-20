module full_adder(input a,b,c,output S,Cout);
  assign S=a^b^c;
  assign Cout=(a&b)|(b&c)|(a&c);
endmodule
module fulladder_tb;
  reg a,b,c;
  wire S,Cout;
  full_adder fa(a,b,c,S,Cout);
  initial begin
    $monitor("At time %0t: a=%b,b=%b,c=%b,S=%b,Cout=%b",$time,a,b,c,S,Cout);
    a=0;b=0;c=0;
    #10;
    a=0;b=0;c=1;
    #10;
    a=0;b=1;c=0;
    #10;
    a=0;b=1;c=1;
    #10;
    a=1;b=0;c=0;
    #10;
    a=1;b=0;c=1;
    #10;
    a=1;b=1;c=0;
    #10;
    a=1;b=1;c=1;
  end
endmodule
