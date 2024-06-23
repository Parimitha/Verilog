module jkff(input J,K,clk,reset,output reg q);
  always@(posedge clk or posedge reset)
    begin
      if(reset==1)
        begin
          q<=0;
        end
      else begin
        case({J,K})
          2'b00: q<=q;
          2'b01: q<=0;
          2'b10: q<=1;
          2'b11: q<=~q;
        endcase
      end 
    end
endmodule
module jkff_tb;
  reg J,K,clk,reset;
  wire q;
  jkff jkffd(.J(J),.K(K),.clk(clk),.reset(reset),.q(q));
  initial
    begin
      clk=0;J=0;K=0;
      #5 reset=1;
      #30 reset=0;
      $monitor($time,"J=%b,K=%b,clk=%b,reset=%b,q=%b",J,K,clk,reset,q);
      #100 $finish;
    end
  always #5 clk=~clk;
  always #30 J=~J;
  always #40 K=~K;
endmodule
