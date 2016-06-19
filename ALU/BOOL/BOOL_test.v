 

////////////////////////////////////////////////////////////////////////////////

// Module Name:  BOOL_Test 
// 
// Description: 
//
// Verilog Test  module BOOL
// 
//  
//  
// Additional Comments: Testbench for BOOL Unit
// 
////////////////////////////////////////////////////////////////////////////////

module BOOL_Test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] BFN;

	// Outputs
	wire [31:0] BOOLO;

	// Instantiate the Unit Under Test (UUT)
	BOOL uut (
		.A(A), 
		.B(B), 
		.BFN(BFN), 
		.BOOLO(BOOLO)
	);

	initial
	begin
		// Initialize Inputs
		A = 0;
		B = 0;
		BFN = 0;

		// Wait 100 ns for global reset to finish
		#100;
		end
		
		
		initial
		 begin
		 		
		  #20;
		  A=32'b11110000000000001000000000000001;
		      B=32'b00100000000000001000000000000010;
            BFN =4'b1000;

		 
		  #20;
		  A=32'b11110000000000001000000000000001;
		       B=32'b00100000000000001000000000000010;
		       BFN=4'b0110;
				 
				 
		  #20 A=32'b11110000000000001000000000000001;
		      B=32'b00100000000000001000000000000010;
		     BFN=4'b1110;
				
				
		 #20 A=32'b11110000000000001000000000000001;
		     B=32'b00100000000000001000000000000010;
		     BFN=4'b1010;
				
		// Add stimulus here
   #200
	$stop; 
	end
      
endmodule

