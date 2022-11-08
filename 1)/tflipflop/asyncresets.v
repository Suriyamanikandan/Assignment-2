module t_flip_flop_exam (q,clk,clear,t);
  input t ;
  input clk;
  input clear;
  output reg q ;
  reg internal_t;
  always @ (clear)begin
    if (clear==1)
      q=0;
    else 
      q=q;
  end
  always @ (posedge clk)begin
        if (t==1)
          q=~q;
        else 
          q=q;
     
  end
  
endmodule

////////////////////////////////////////////////////////////
