 
//////////////////////////////////////////////////////////////////////////////////
 
 
// Module Name:    BOOL 
// 
// Description: It provides Boolean operations (AND, OR, XOR, Buff)
//
// Revision: 
//
// Additional Comments: It takes two 32 bit numbers as inputs and provide a 32 bit output.
//
//////////////////////////////////////////////////////////////////////////////////
module BOOL(A,B,BFN,BOOLO);
input[31:0]A,B;
input[3:0]BFN;
output reg[31:0]BOOLO;
parameter AND  = 4'b1000,
          OR   = 4'b1110,
          XOR  = 4'b0110,
			 BUFF = 4'b1010;
always@*
begin 
   case(BFN)
	
   AND:  BOOLO = (A>>>BFN);
   
   OR:   BOOLO = A|B;
   
   XOR:  BOOLO = A^B;
   
	BUFF: BOOLO = A;
	default: BOOLO = 0;
  endcase
       end  
         endmodule 