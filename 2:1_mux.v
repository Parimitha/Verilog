module mux2(input S,input i0,i1,output Y);
  assign Y=S?i1:10;
endmodule
module mux2_tb;
  reg S,i0,i1;
  wire Y;
  mux2 mu(S,i0,i1,Y);
  initial begin
    $monitor("S=%h,i0=%h,i1=%h--->y=%h",S,i0,i1,Y);
    i0=0;i1=1;
    S=0;
    #10;
    S=1;
  end
endmodule
