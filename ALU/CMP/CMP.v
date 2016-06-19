 
//////////////////////////////////////////////////////////////////////////////////
 
// 
// Module Name:    CMP 
 
// Description: It provides copmarision operations, it includes equal to(==) ,less than(<) and less than equal(<=) to,
 
//
// Revision: 
//  
// Additional Comments: It takes three singal bit inputs Z,V,N(calculated using ARITH unit) and provide 32 bit output.
//
//////////////////////////////////////////////////////////////////////////////////
module CMP(Z,V,N,CFN,cmp);
input Z,N,V;
input[2:1]CFN;
output reg[31:0]cmp;
parameter EQ =2'b01,
          LT =2'b10,
			 LTE =2'b11;
always@*
  begin
     case(CFN)

    EQ : cmp=Z;
    LT : cmp=N^V;
    LTE: cmp=Z|(N^V);
  
  default: cmp=0;
     endcase
          end
endmodule
