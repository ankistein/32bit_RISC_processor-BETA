 

////////////////////////////////////////////////////////////////////////////////
 
// Module Name: SHIFT_test 
 
//    
// Description: 
//
// Verilog Test  module SHIFT
//
// Dependencies:
// 
// Revision:
//  
// Additional Comments: Testbecnh for SHIFT unit 
// 
////////////////////////////////////////////////////////////////////////////////

module SHIFT_test;

	// Inputs
	reg [31:0] A;
	reg [4:0] B;
	reg [1:0] SFN;

	// Outputs
	wire [31:0] Y;

	// Instantiate the Unit Under Test (UUT)
	SHIFT uut (
		.A(A), 
		.B(B), 
		.SFN(SFN), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		SFN = 0;

		// Wait 100 ns for global reset to finish
		#100;
    
	end
	initial 
	begin
	
	#10 A=32'd44         ;    B=5'd2  ; SFN=2'b00;
	#10 A=32'd44         ;    B=5'd7  ; SFN=2'b00;
	#10 A=32'd44         ;    B=5'd4  ; SFN=2'b01;
	#10 A=32'd144        ;    B=5'd6  ; SFN=2'b01;
	#10 A=32'd2147483648 ;    B=5'd31 ; SFN=2'b11;
	#10 A=32'd2147483648 ;    B=5'd30 ; SFN=2'b11;
	#10 A=32'd2147483648 ;    B=5'd15 ; SFN=2'b11;
	#10 A=32'd2147483648 ;    B=5'd2  ; SFN=2'b11;
	#10 A=32'd1144       ;    B=5'd7  ; SFN=2'b11;
	end
	
      
endmodule

