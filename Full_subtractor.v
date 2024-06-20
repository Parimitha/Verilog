module full_sub(input a,b,c,output D,Bout);
  assign D=a^b^c;
  assign Bout=(~a&b)|(~(a^b)&c);
endmodule
module fullsub_tb;
  reg a,b,c;
  wire D,Bout;
  full_sub fs(a,b,c,D,Bout);
  initial begin
    $monitor("At time %0t: a=%b,b=%b,c=%b,D=%b,Bout=%b",$time,a,b,c,D,Bout);
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
