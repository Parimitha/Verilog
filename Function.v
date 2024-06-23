module func;
  function compare(input int a, b);
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else 
      $display("a is equal to b");
  endfunction
  initial begin
    compare(10,10);
    compare(5, 9);
    compare(9, 5);
  end
endmodule
