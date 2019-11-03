module Decoder_2X4(D,A,B);
  output [0:3] D;
  input        A,B;
  wire         w1,w2;
  
  not
  G1(w1,B),
  G2(w2,A);
  
  and
  G3(D[0],w2,w1),
  G4(D[1],w1,A),
  G5(D[2],w2,B),
  G6(D[3],B,A);
  
endmodule