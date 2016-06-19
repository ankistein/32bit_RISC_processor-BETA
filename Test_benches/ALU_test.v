`timescale 1ns/100ps
////////////////////////////////////////////////////////////////////////////////
 
// Module Name:  ALU_test 
//
// Description: This is the testbench for ALU module
// 
// Revision:
 
// Additional Comments: Functional verification is done by calling each functions one by one.
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [5:0] ALUFN;

	// Outputs
	wire [31:0] Y;
	wire Z;
	wire V;
	wire N;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.ALUFN(ALUFN), 
		.Y(Y), 
		.Z(Z), 
		.V(V), 
		.N(N)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		ALUFN = 0;

		// Wait 100 ns for global reset to finish
		#100;
    	end
    initial
        begin
        
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b000011 ; // COMPEQ
		  #10 A=32'd 67 ; B=32'd67 ; ALUFN=6'b000011 ; // CMPEQ
		  #10 A=32'd 37 ; B=32'd36 ; ALUFN=6'b000101 ; // CMPLT
		  #10 A=32'd 35 ; B=32'd36 ; ALUFN=6'b000101 ; // CMPLT
		  #10 A=32'd 35 ; B=32'd35 ; ALUFN=6'b000101 ; // CMPLT
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b000111 ; // CMPLE
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b010000 ; // ADD
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b010001 ; // SUB
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b101000 ; // AND
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b101110 ; // OR
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b100110 ; //XOR
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b101001 ; //XNOR
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b101010 ; // A(BUFF)
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b000011 ; // COMPEQ
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b110000 ; // SHL
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b110001 ; // SHR
		  #10 A=32'd 67 ; B=32'd36 ; ALUFN=6'b110011 ;  // SRA
		  #10 A=32'd2147483648 ; B=32'd36 ; ALUFN=6'b110011 ; //SRA
             end		  
                endmodule

