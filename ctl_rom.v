module ctl_rom(
			input [5:0] op,  // address
			input reset,we,oe,
			input irq,z,  // for later logic in ctl unit
			output [17:0] p);   // p is data_out
	
	reg [17:0] temp_data;
	reg [17:0] rom[63:0];
	
	initial begin
	$readmemb("ctl_rom_data.txt", rom);
	end
	
	always@(*)
	  begin
	    if(reset==1)
		 temp_data=18'd0;
		 
		else if(we==0)
		temp_data=rom[op];
		
		else
		 temp_data=18'd0;
		
		end
		
assign p= oe ? temp_data : 18'hzzzzz;

endmodule
