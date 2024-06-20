module demux1(input S,input i,output Y0,Y1,Y2,Y3);
  always@(*)
    begin
      case(S)
        2'h0:{Y0,Y1,Y2,Y3}={i,3'b0};
        2'h1:{Y,Y1,Y2,Y3}={1'b0,i,2'b0};
        2'h2:{Y0,Y1,Y2,Y3}={2'b0,i,1'b0};
        2'h3:{Y0,Y1,Y2,Y3}={3'b0,i};
        default:$display("Invalid selection input line")
       endcase
     end
endmodule
module demux1_tb;
  reg S,i;
  wire Y0,Y1,Y2,Y3;
  demux1 dem(S,i,Y0,Y1,Y2,Y3);
  initial begin
    $monitor("S=%h,i=%h,Y0=%h,Y1=%h,Y2=%h,Y3=%h");
    S=00;i=0;#10;
    S=00;i=1;#10;
    S=01;i=0;#10;
    S=01;i=1;#10;
    S=10;i=0;#10;
    S=10;i=1;#10;
    S=11;i=0;#10;
    S=11;i=1;
  end
endmodule
