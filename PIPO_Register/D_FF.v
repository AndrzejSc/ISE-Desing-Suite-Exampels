`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:23 02/13/2019 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(
    input clk,rst,d,
    output reg q
    );
	 
always @(posedge clk or posedge rst)
begin
	if (rst) begin
		q<=0;
	end
	
	else begin
		q <= d;
	end
	
end



endmodule
