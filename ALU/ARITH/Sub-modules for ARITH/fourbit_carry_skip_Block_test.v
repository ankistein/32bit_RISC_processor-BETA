 

////////////////////////////////////////////////////////////////////////////////
 
//
//  
// Module Name:    fourbit_carry_skip_Block_test 
//  
// Description: 
//
// Verilog Test Fixture module fourbit_carry_skip_Block
//
// Revision :
// 
//  
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fourbit_carry_skip_block_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c0;

	// Outputs
	wire [3:0] s;
	wire cp;

	// Instantiate the Unit Under Test (UUT)
	fourbit_carry_skip_block uut (
		.a(a), 
		.b(b), 
		.c0(c0), 
		.s(s), 
		.cp(cp)
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
		  
		  #10 a=4'd5 ; b=4'd2;  c0=1'd1;
		  #10 a=4'd6 ; b=4'd2;  c0=1'd1;
		  #10 a=4'd4 ; b=4'd3;  c0=1'd0;
		  #10 a=4'd10 ; b=4'd5; c0=1'd1;
		  #10 a=4'd11 ; b=4'd2; c0=1'd0;
		  end
      
endmodule

