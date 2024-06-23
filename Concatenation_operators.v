module concat_op;
  reg [1:0] i1, i2;
  reg [3:0] i3;
  reg [7:0] output;
  initial begin
    i1 = 2'h4; i2 = 2'h2;
    i3 = 4'h6;
    $display("output = %b", {i3, i2, i1});
  end
endmodule
