module Encoder_4X2(A,B,D);
  input [0:3] D;
  output        A,B;
  
  
  or
  G1(A,D[1],D[3]),
  G2(B,D[2],D[3]);
  
endmodule