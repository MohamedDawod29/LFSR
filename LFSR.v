module LFSR	
 
				#(parameter n = 3)
		
	      	(
					input clk,reset_n,
					output reg [1:n] Q
				);
				
				wire  shift_right_Din;
				
				always @ (posedge clk)
					begin 
						if (~reset_n)
						   Q <= 'b1;     // we don't make it zero to not stuck on zeros.
						else
					      Q <= {shift_right_Din,Q[1:n-1]};
					 end
					 
				 assign shift_right_Din = Q[3] ^ Q[2];	 
			 
endmodule
					