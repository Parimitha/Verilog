module relational_op;
  reg [3:0] i1, i2;
  initial begin
    i1 = 4'h8; i2 = 4'h5;
    $display("For operator (>) : i1 = %0h >  i2 = %0h: %h", i1, i2, i1>i2);
    $display("For operator (>=): i1 = %0h >= i2 = %0h: %h", i1, i2, i1>=i2);
    $display("For operator (<) : i1 = %0h <  i2 = %0h: %h", i1, i2, i1<i2);
  end
endmodule
