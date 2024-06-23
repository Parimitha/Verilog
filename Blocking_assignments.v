module block;
  reg [3:0] data = 4'h4;
  real r_val;
  integer i_val;
  time T;
  initial begin
    $monitor("At time T = %0t: data = %0d, r_value = %0f, i_value = %0h", T, data, r_val, i_val);
    r_val = 3.14;
    #2 data = 4'h5;
    #3 data = 'd7;
    i_val = 10;
    $finish;
  end
  always #1 T = $time;
endmodule
