module nonbl;
  reg [3:0] data = 4'h4;
  real r_val;
  integer i_val;
  time T;
  initial begin
    $monitor("At time T = %0t: data = %0d, r_val = %0f, i_val = %0h", T, data, r_val, i_val);
    r_val <= 3.14;
    data <= #3 'd7;
    i_val <= 10;
    #4 $finish;
  end
  always #1 T = $time;
endmodule
