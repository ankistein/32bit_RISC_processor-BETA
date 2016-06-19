//////////////////////////////////////////////////////////////////////////////////
 
  
// Module Name:    full_adder 
// 
// Description: one bit full adder
//
 
//  Revision : 
// 
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
   

  module full_adder(a,b,c0,s,c);
  input a,b,c0;
  output s,c;

  assign s=a^b^c0;
  assign c=(a&b)|(b&c0)|(c0&a);

  endmodule
