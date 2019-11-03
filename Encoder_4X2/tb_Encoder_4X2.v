`timescale 1ns/10ps
module tb_Encoder_4X2;
  reg [0:3]D;
  wire A,B;
  
  Encoder_4X2 u0(A,B,D);
  
  initial
  begin
    D = 4'b0000;
    
    #10 D = 4'b1000;
    
    #10 D = 4'b0100;
    
    #10 D = 4'b0010;
    
    #10 D = 4'b0001;
    
    #10 $stop;
  end
endmodule