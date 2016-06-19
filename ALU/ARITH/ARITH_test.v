 

////////////////////////////////////////////////////////////////////////////////
//  
//  
// Design Name:   ARITH
//  
//  
// Description: 
//
// Verilog Test module For ARITH  
//
//  
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ARITH_test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg AFN;

	// Outputs
	wire [31:0] S;
	wire Z;
	wire V;
	wire N;

	// Instantiate the Unit Under Test (UUT)
	ARITH uut (
		.A(A), 
		.B(B), 
		.AFN(AFN), 
		.S(S), 
		.Z(Z), 
		.V(V), 
		.N(N)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		AFN = 0;

		// Wait 100 ns for global reset to finish
		#100;
        	end
      initial 
		begin
		
		#10 A=32'd10000      ; B=32'd221         ; AFN=1'd1;
		#10 A=32'd100000     ; B=32'd32457       ; AFN=1'd0;
		#10 A=32'd1002340    ; B=32'd1234221     ; AFN=1'd1;
		#10 A=32'd112000     ; B=32'd54321       ; AFN=1'd0;
		#10 A=32'd10000      ; B=32'd10000       ; AFN=1'd1;
		#10 A=32'd1000000000 ; B=32'd2000000000  ; AFN=1'd1;
		#10 A=32'd1000000000 ; B=32'd2000000000  ; AFN=1'd0;
		end
       endmodule

