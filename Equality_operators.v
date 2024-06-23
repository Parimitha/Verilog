module equality_op;
  reg [3:0] A, B;
  initial begin
    A = 4'h7; B = 4'h4;
    $display("(A = %0h) == (B = %0h) --> %h", A, B, A == B);
    $display("(A = %0h) != (B = %0h) --> %h", A, B, A != B);
    $display("(A = %0b) ===  (B = %0b) --> %0b", A, B,A === B);
  end
endmodule
