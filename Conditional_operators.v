module tristate_buff(input in,input en,output out);
  assign out = en ? in : 1'bz;
endmodule
