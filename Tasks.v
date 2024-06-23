module taske;
  task compare(input int a, b, output done);
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else 
      $display("a is equal to b");
    #10;
    d=1;
  endtask
  initial begin
    bit d;
    compare(10,10,d);
    if(d) $display("comparison completed at time = %0t", $time);
    compare(5,9,d);
    if(d) $display("comparison completed at time = %0t", $time);
    compare(9,5,d);
    if(d) $display("comparison completed at time = %0t", $time);
  end
endmodule
