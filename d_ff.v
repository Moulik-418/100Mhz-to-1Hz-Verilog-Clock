`timescale 1ns / 1ps
module d_ff( Q, d, clock, clear
    );
	 output reg Q;
	 input d, clock, clear;
	 always @(posedge clock or posedge clear)
	 begin
	 if(clear)
	 Q <= 1'b0; 
	 else 
	 Q <= d;
	  
 end
endmodule
