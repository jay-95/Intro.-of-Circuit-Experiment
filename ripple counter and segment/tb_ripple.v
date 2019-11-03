`timescale 1ns/10ps
module tb_ripple; 
  reg   count, reset; 
  wire  [3:0] A_s, A_b, sdout; 

  ripple_counter_str DUT_S (.A(A_s), .reset(reset), .count(count)); 
  ripple_counter_behav DUT_B (.A(A_b), .reset(reset), .count(count)); 
  BCD_to_7_Segment_Decoder u1 (sdout);

  initial begin 
    count = 0; reset = 0; 
    #10 reset = 1; 
    #10 count = 1; 
    #10 count = 0; 
    #10 count = 1; 
    #10 count = 0; 
    #10 count = 1; 
    #10 count = 0; 
    #10 count = 1; 
  end
endmodule