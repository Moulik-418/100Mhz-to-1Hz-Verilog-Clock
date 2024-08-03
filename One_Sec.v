`timescale 1ns / 1ps

module One_Sec( Output, clock, clear 
    );
	 output Output;
	 input clock, clear;
	 wire [6:0]W;
	 
	 by_ten b1 (W[0], clock, clear);
	 by_ten b2 (W[1], W[0], clear);
	 by_ten b3 (W[2], W[1], clear);
	 by_ten b4 (W[3], W[2], clear);
	 by_ten b5 (W[4], W[3], clear);
	 by_ten b6 (W[5], W[4], clear);
	 by_ten b7 (W[6], W[5], clear);
	 by_ten b8 (Output, W[6], clear);
endmodule
