module mux_8(input D0,D1,D2,D3,D4,D5,D6,D7,input [2:0]S, output reg Y);
  always@(*)
    begin
      if(S==3'b000) Y=D0;
      else if(S==3'b001) Y=D1;
      else if(S==3'b010) Y=D2;
      else if(S==3'b011) Y=D3;
      else if(S==3'b100) Y=D4;
      else if(S==3'b101) Y=D5;
      else if(S==3'b110) Y=D6;
      else if(S==3'b111) Y=D7;
      else Y=0;
    end
endmodule
module mux8_tb;
  reg D0,D1,D2,D3,D4,D5,D6,D7;
  reg [2:0]S;
  wire Y;
  mux_8 mux8_tb(.D0(D0),.D1(D1),.D2(D2),.D3(D3),.D4(D4),.D5(D5),.D6(D6),.D7(D7),.S(S),.Y(Y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    {D0,D1,D2,D3,D4,D5,D6,D7}=$random %8;
    #10  S=000;
    {D0,D1,D2,D3,D4,D5,D6,D7}=$random %8;
    #10  S=001;
    {D0,D1,D2,D3,D4,D5,D6,D7}=$random %8;
    #10  S=010;
    {D0,D1,D2,D3,D4,D5,D6,D7}=$random %8;
    #10  S=011;
    {D0,D1,D2,D3,D4,D5,D6,D7}=$random %8;
    #10  S=100;
    {D0,D1,D2,D3,D4,D5,D6,D7}=$random %8;
    #10  S=101;
    {D0,D1,D2,D3,D4,D5,D6,D7}=$random %8;
    #10  S=110;
    {D0,D1,D2,D3,D4,D5,D6,D7}=$random %8;
    #10 S=111;
  end
  always@(Y)
    $display("At time %0t: D0=%b,D1=%b,D2=%b,D3=%b,D4=%b,D5=%b,D6=%b,D7=%b,S=%b,Y=%b",$time,D0,D1,D2,D3,D4,D5,D6,D7,S,Y);
endmodule
