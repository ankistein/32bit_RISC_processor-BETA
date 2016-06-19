 
//////////////////////////////////////////////////////////////////////////////////
 
// Module Name:    fourbit_carry_skip_Block 
//   
//  Description :  carry will be propagated to carry output  depending on propagate condition. 
//
// Revision: 
//  
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

   module fourbit_carry_skip_block(a,b,c0,s,cp);
   input[3:0]a,b;
   input c0;
   output[3:0]s; // sum 
   output cp;    // carry output
 
   wire c1,c2,c3,c4,p0,p1,p2,p3,p;
 
  full_adder fa1(a[0],b[0],c0,s[0],c1);
  full_adder fa2(a[1],b[1],c1,s[1],c2);
  full_adder fa3(a[2],b[2],c2,s[2],c3);
  full_adder fa4(a[3],b[3],c3,s[3],c4);
  
  assign p0=a[0]^b[0]; // propagate condetions
  assign p1=a[1]^b[1];
  assign p2=a[2]^b[2];
  assign p3=a[3]^b[3];
  
  assign p= p0&p1&p2&p3; // propagate condition check 
  
  assign cp= p?c0:c4;  // carry propagation depending on propagate condition 
  
  endmodule
