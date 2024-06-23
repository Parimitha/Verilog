module reduction_op;
  reg [3:0] a;
  initial begin
    a = 4'h8;
    $display("a = %b -> %b", a, &a);
    $display("a = %b -> %b", a, |a);
    $display("a= %b -> %b", a, ~|a);
    $display("a = %b -> %b", a, ~^a);
  end
endmodule
