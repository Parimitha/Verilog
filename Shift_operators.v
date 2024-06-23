module shift_op;
  reg [7:0] a,b;
  initial begin
    a = 8'b1111_0000;
    b = a>> 3;
    $display("Shift right (>>) a = %b by 3: %b", a, b);
    a=b;
    a=b<<3;
    $display("Shift left (<<) i1 = %b by 3: %b", a,b);
  end
endmodule
