`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:45 02/13/2019 
// Design Name: 
// Module Name:    JC_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module JC_top(
    input i_clk,
    input i_rst,
    output reg [2:0] o_Q
    );
always @(posedge i_clk)
begin
	if (i_rst) begin
		o_Q <= 3'b000;
	end
	else begin
		o_Q <= {(~o_Q[0]),o_Q[2:1]};
	end
	
end //always
	 


endmodule
