module dec_db(input EN,A1,A0,output D0,D1,D2,D3);
  assign D0=(EN&~A1&~A0);
  assign D1=(EN&~A1&A0);
  assign D2=(EN&A1&~A0);
  assign D3=(EN&A1&A0);
endmodule
module tb_dec;
  reg EN,A1,A0;
  wire D0,D1,D2,D3;
  dec_db tb_dec(EN,A1,A0,D0,D1,D2,D3);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    EN=1'b0;A1=1'bx;A0=1'bx;
    #10;
    EN=1'b1;A1=1'b0;A0=1'b0;
    #10;
    EN=1'b1;A1=1'b0;A0=1'b1;
    #10;
    EN=1'b1;A1=1'b1;A0=1'b0;
    #10;
    EN=1'b1;A1=1'b1;A0=1'b1;
  end
  always@(D0,D1,D2,D3)
    $display("At time %0t: EN=%b;A1=%b,A0=%b,D0=%b,D1=%b,D2=%b,D3=%b",$time,EN,A1,A0,D0,D1,D2,D3);
endmodule
