module half_subtractor(input a,b,output D,B);
  assign D=a^b;
  assign B=~a&b;
endmodule
module halfsub_tb;
  reg a,b;
  wire D,B;
  half_subtractor hs(a,b,D,B);
  initial begin
    $monitor("At time %0t: a=%b,b=%b,D=%b,B=%b",$time,a,b,D,B);
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
  end
endmodule
