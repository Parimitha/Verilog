module comp(A,B,X,Y,Z);
  input A,B;
  output X,Y,Z;
  reg X,Y,Z;
  always @(A or B)
    begin
      X=0;
      Y=0;
      Z=0;
      if(A==B)
        X=1;
      else if(A>B)
        Y=1;
      else
        Z=1;
    end
endmodule
module comp_tb;
  reg [3:0]A,B;
  wire X,Y,Z;
  comp comp_tb(.A(A),.B(B),.X(X),.Y(Y),.Z(Z));
  always #5 B=$random%16;
  always #5 A=$random%16;
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      $monitor("At time %0d: A=%b,B=%b,X=%b,Y=%b,Z=%b",$time,A,B,X,Y,Z);
      A=4'B0000;
      B=4'B0000;
      #80 $finish;
    end
endmodule
