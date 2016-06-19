

////////////////////////////////////////////////////////////////////////////////
 
//  
// Module Name:   fulladder_test 
 
// Description: 
//
// Verilog Test Fixture  module full_adder

// Revision :
//  
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladder_test;

	// Inputs
	reg a;
	reg b;
	reg c0;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.a(a), 
		.b(b), 
		.c0(c0), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		end
        initial 
		  begin
		  
		  #10 a=1'b1;  b=1'b1; c0=1'b1;
		  #10 a=1'b1;  b=1'b1; c0=1'b0;
		  #10 a=1'b1;  b=1'b0; c0=1'b1;
		  #10 a=1'b1;  b=1'b0; c0=1'b0;
		  #10 a=1'b0;  b=1'b1; c0=1'b1;
		  #10 a=1'b0;  b=1'b1; c0=1'b0;
		  #10 a=1'b0;  b=1'b0; c0=1'b1;
		  #10 a=1'b0;  b=1'b0; c0=1'b0;
	end
      
endmodule

