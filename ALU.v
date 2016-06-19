 
//////////////////////////////////////////////////////////////////////////////////
 
 
// Module Name:    ALU 
  
// Description: It provide arithmatic(addition and subtraction) and logical(Boolean,comparision and shift)operations
//   This is the TOP and main module of ALU unit.  It will work as the main ALU block in data path.
//   It will instanciate all internal required sub-modules like SHIFT, ARITH units etc.

// Additional Comments: It taks two 32 bits input and provide a 32 bit output.
//
//////////////////////////////////////////////////////////////////////////////////
   
  module ALU(A,B,ALUFN,Y,Z,V,N);
  input[31:0]A,B;
  input[5:0]ALUFN;
  output reg[31:0]Y;
  output Z,V,N;
  wire[31:0]w1,w2,w3,w4;
  wire x1,x2,x3;

  ARITH m1(.A(A),.B(B),.AFN(ALUFN[0]),.S(w1),.Z(x1),.V(x2),.N(x3));
  BOOL  m2(.A(A),.B(B),.BFN(ALUFN[3:0]),.BOOLO(w2));
  CMP   m3(.Z(x1),.V(x2),.N(x3),.CFN(ALUFN[2:1]),.cmp(w3));
  SHIFT m4(.A(A),.B(B[4:0]),.SFN(ALUFN[1:0]),.Y(w4));
 
  assign Z=x1;
  assign V=x2;
  assign N=x3;
 
  always@*
     begin
      case(ALUFN[5:4])
 
     2'b00 : Y=w3;
     2'b01 : Y=w1;
     2'b10 : Y=w2;
     2'b11 : Y=w4;
     default: Y=0;
        endcase
            end
             endmodule
