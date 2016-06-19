 
////////////////////////////////////////////////////////////////////////////////
 
 // 
// Module Name:   D:/RISC_beta/CMP_test.v
// Description: 
//
// Verilog Test module CMP.
//
// Dependencies:
// 
//
// Additional Comments: Test bench for CMP unit
// 
////////////////////////////////////////////////////////////////////////////////

module CMP_test;

	// Inputs
	reg Z;
	reg V;
	reg N;
	reg [2:1] CFN;

	// Outputs
	wire [31:0] cmp;

	// Instantiate the Unit Under Test (UUT)
	CMP uut (
		.Z(Z), 
		.V(V), 
		.N(N), 
		.CFN(CFN), 
		.cmp(cmp)
	);

	initial begin
		// Initialize Inputs
		Z = 0;
		V = 0;
		N = 0;
		CFN = 0;

		// Wait 100 ns for global reset to finish
		#100;
        	end
			initial 
			begin
	 #10 Z=1'b0 ; V=1'b0  ; N = 1'b0; CFN=2'b00;
    #10 Z=1'b0 ; V=1'b0  ; N = 1'b1; CFN=2'b01;
	 #10 Z=1'b0 ; V=1'b1  ; N = 1'b0; CFN=2'b10;
	 #10 Z=1'b0 ; V=1'b1  ; N = 1'b1; CFN=2'b11;
	 #10 Z=1'b1 ; V=1'b0  ; N = 1'b0; CFN=2'b01;
	 #10 Z=1'b1 ; V=1'b0  ; N = 1'b1; CFN=2'b10;
	 #10 Z=1'b1 ; V=1'b1  ; N = 1'b0; CFN=2'b11;
	 #10 Z=1'b1 ; V=1'b1  ; N = 1'b1; CFN=2'b01;
	 end
endmodule

