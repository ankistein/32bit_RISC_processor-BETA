 
//////////////////////////////////////////////////////////////////////////////////
 
 
// Module Name:    SHIFT 
 
// Description: it provides logical left shift , logical right shift and arithmatic right shift operations. 
// 
//
// Revision: 
// 
// Additional Comments: These shift operations will be performed on a 32 bit input dpending on another 5 bit input named SFN.
//
//////////////////////////////////////////////////////////////////////////////////

 module SHIFT(A,B,SFN,Y);
 input signed[31:0]A;
 input [4:0]B;
 input[1:0]SFN;
 output reg signed[31:0]Y;
 /* parameter LS  = 2'b00,
           RS  = 2'b01,
           ARS  = 2'b11; */
			 
 always@*
 begin
   case(SFN)
		2'b00: Y=(A<<B);
	 
		2'b01: Y=(A>>B);
		
		2'b11: Y=(A>>>B);
		
		default: Y=0;
   endcase
 end
 
endmodule
