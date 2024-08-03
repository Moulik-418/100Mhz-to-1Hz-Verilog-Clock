`timescale 1ns / 1ps
module by_ten(q, clk, clear);
	 input clk, clear;
	 output reg q;
	 wire [4:0]W;
	 
	 d_ff d0(W[0], (~(W[4])), clk, clear);
	 d_ff d1(W[1], W[0], clk, clear);
	 d_ff d2(W[2], W[1], clk, clear);
	 d_ff d3(W[3], W[2], clk, clear);
	 d_ff d4(W[4], W[3], clk, clear);
	 
	assign	q = W[4];

endmodule
