`timescale 1ns/10ps
module tb_Decoder_2X4;
  reg B,A;
  wire [0:3]D;
  
  Decoder_2X4 u0(D,A,B);
  
  initial
  begin
    B = 1'b0;
    A = 1'b0;
    
    #10 A = 1'b1;
    
    #10 B = 1'b1;
        A = 1'b0;
    
    #10 A = 1'b1;
    
    #10 $stop;
  end
endmodule