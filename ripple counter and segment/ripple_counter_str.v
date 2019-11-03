module df_reset (q, q_bar, data, reset, clk); 
  output q, q_bar; 
  input data, reset; 
  input clk; 

  reg q; 

  assign q_bar = ~q; 

  always @(negedge clk or negedge reset) begin 
    if (reset == 0) q <= 0; 
    else q <= data; 
  end 
endmodule 

module ripple_counter_str (A, reset, count); 
  output    [3:0] A; 
  input     reset, count; 

  wire      d3, d2, d1, d0; 
  wire      [0:3] A; 

  df_reset FF0 (.q(A[0]), .q_bar(d0), .data(d0), .reset(reset), .clk(count)); 
  df_reset FF1 (.q(A[1]), .q_bar(d1), .data(d1), .reset(reset), .clk(A[0])); 
  df_reset FF2 (.q(A[2]), .q_bar(d2), .data(d2), .reset(reset), .clk(A[1])); 
  df_reset FF3 (.q(A[3]), .q_bar(d3), .data(d3), .reset(reset), .clk(A[2])); 
endmodule