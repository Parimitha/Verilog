module demux_1(input S,input i,output reg Y0,Y1,Y2,Y3);
  always@(*) begin
      case(S)
        2'h0:{Y0,Y1,Y2,Y3}={i,3'b0};
        2'h1:{Y0,Y1,Y2,Y3}={1'b0,i,2'b0};
        2'h2:{Y0,Y1,Y2,Y3}={2'b0,i,1'b0};
        2'h3:{Y0,Y1,Y2,Y3}={3'b0,i};
        default:$display("Invalid selection input line");
      endcase
  end
endmodule
module tb;
  reg [1:0]S;
  reg i;
  wire Y0,Y1,Y2,Y3;
  demux_1 demux(S,i,Y0,Y1,Y2,Y3);
  initial begin $monitor("S=%b,i=%b,Y0=%0b,Y1=%0b,Y2=%0b,Y3=%0b",S,i,Y0,Y1,Y2,Y3);
    S=2'b00;i=0;#1;
    S=2'b00;i=1;#1;
    S=2'b01;i=0;#1;
    S=2'b01;i=1;#1;
    S=2'b10;i=0;#1;
    S=2'b10;i=1;#1;
    S=2'b11;i=0;#1;
    S=2'b11;i=1;#1;
  end
endmodule
