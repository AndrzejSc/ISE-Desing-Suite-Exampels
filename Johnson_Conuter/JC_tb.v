`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:55:03 02/13/2019
// Design Name:   JC_top
// Module Name:   E:/Programowanie/Verilog/Johnson_Conuter/JC_tb.v
// Project Name:  Johnson_Conuter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JC_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JC_tb;

	// Inputs
	reg i_clk;
	reg i_rst;

	// Outputs
	wire [2:0] o_Q;

	// Instantiate the Unit Under Test (UUT)
	JC_top uut (
		.i_clk(i_clk), 
		.i_rst(i_rst), 
		.o_Q(o_Q)
	);

always #20 i_clk =~i_clk;
	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_rst = 1;
repeat(2) @(posedge i_clk);
i_rst = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

