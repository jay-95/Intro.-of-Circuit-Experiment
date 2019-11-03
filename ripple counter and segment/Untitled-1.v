module df_reset (q, q_bar, data, reset, clk); 
  output q, q_bar; 
  input data, reset; 
  input clk; 
!
  reg q; 
!
  assign q_bar = ~q; 
!
  always @(posedge clk or negedge reset) begin 
    if (reset == 0) q <= 0; 
    else q <= data; 
  end 
endmodule