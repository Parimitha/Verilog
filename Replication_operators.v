module rep_op;
  reg [1:0] i1, i2;
  reg [7:0] output;
  initial begin
    i1 = 2'h4; i2 = 2'h3;
    $display("output = %b", {{3{i2}}, {2{i1}}} );
  end
endmodule
