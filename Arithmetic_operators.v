module lo_op;
  reg [3:0]i1,i2;
  initial begin
    i1=4'h6;
    i2=4'h3;
    $display("i1=%h && i2=%h: %h",i1,i2,i1&&i2);
    $display("i1=%h || i2=%h: %h",i1,i2,i1||i2);
    $display("i1=%h !  i2=%h: %h",i1,i2,!i2);
    
    i1=4'b11x0;i2=4'b01z1;
    $display("i1=%h && i2=%h: %h",i1,i2,i1&&i2);
    $display("i1=%h ! i2=%h: %h",i1,i2,!i1);
  end
endmodule
