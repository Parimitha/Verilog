module Carry(input [3:0]X,Y,input C,output [3:0] S,output Cout);
  wire [3:0] z; 
  assign z[0] = C;
  assign z[1] = (X[0] & Y[0]) | ((X[0]^Y[0]) & z[0]);
  assign z[2] = (X[1] & Y[1]) | ((X[1]^Y[1]) & ((X[0] & Y[0]) |((X[0]^Y[0]) & z[0])));
  assign z[3] = (X[2] & Y[2]) | ((X[2]^Y[2]) & ((X[1] & Y[1]) | ((X[1]^Y[1]) & ((X[0] & Y[0]) | ((X[0]^Y[0]) & z[0])))));
  assign Cout  = (X[3] & Y[3]) | ((X[3]^Y[3]) & ((X[2] & Y[2]) | ((X[2]^Y[2]) & ((X[1] & Y[1]) | ((X[1]^Y[1]) & ((X[0] & Y[0]) | ((X[0]^Y[0]) & z[0])))))));
  assign S = A^B^z;
endmodule
module carry_tb;
  reg [3:0]X,Y; 
  reg C;
  wire [3:0] S;
  wire Cout;
  wire[4:0] add;
  Carry cla(X,Y,C,S,Cout);
  assign add = {Cout,S};
  initial begin
    $monitor("X= %b,Y= %b,C = %b --> S = %b, Cout = %b, Addition = %0d", X,Y,C,S,Cout, add);
    X = 1;Y = 0; C = 0; #3;
    X = 2;Y = 4; C = 1; #3;
    X = 4'hb;Y = 4'h6; C = 0; #3;
    X = 5;Y = 3; C = 1;
  end
endmodule

