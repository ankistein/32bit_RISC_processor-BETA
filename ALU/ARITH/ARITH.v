//////////////////////////////////////////////////////////////////////////////////
//  
//   
// Module Name:    ARITH 
// 
// Description: Arithmatic block for addision and subtraction using four bit carry skip adder instance 
//
// Revision: 
//
// Additional Comments: It takes two 32 bit numbers as input, 1 bit input no. to select operation and provide a 32 bit output , three one bit outputs.
//
//////////////////////////////////////////////////////////////////////////////////
  
  module ARITH(A,B,AFN,S,Z,V,N);
  input[31:0]A,B;
  input AFN;
  output[31:0]S;
  output Z,V,N;
   wire [31:0]XB;
   wire cp1,cp2,cp3,cp4,cp5,cp6,cp7,cp8;
   assign XB= AFN?~B:B;
  fourbit_carry_skip_block B1(A[3:0],XB[3:0],AFN,S[3:0],cp1);
  fourbit_carry_skip_block B2(A[7:4],XB[7:4],cp1,S[7:4],cp2);
  fourbit_carry_skip_block B3(A[11:8],XB[11:8],cp2,S[11:8],cp3);
  fourbit_carry_skip_block B4(A[15:12],XB[15:12],cp3,S[15:12],cp4);
  fourbit_carry_skip_block B5(A[19:16],XB[19:16],cp4,S[19:16],cp5);
  fourbit_carry_skip_block B6(A[23:20],XB[23:20],cp5,S[23:20],cp6);
  fourbit_carry_skip_block B7(A[27:24],XB[27:24],cp6,S[27:24],cp7);
  fourbit_carry_skip_block B8(A[31:28],XB[31:28],cp7,S[31:28],cp8);

   assign N= S[31]?1'b1:1'b0;
   assign Z= (S==32'b0)?1'b1:1'b0;
   assign V= (A[31]&XB[31]&~S[31])|(~A[31]&~XB[31]&S[31]);


   endmodule
