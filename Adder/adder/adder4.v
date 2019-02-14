`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:56:21 03/26/2018 
// Design Name: 
// Module Name:    adder4 
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
module adder4(
    input [3:0] i_a,
    input [3:0] i_b,
    input i_c,
    output [3:0] o_sum,
    output o_carry,
	 output o_over
    );
	 
	 reg [4:0] temp;
	 
always@(*) begin
	temp = {1'b0, i_a} + {1'b0,i_b};
	o_sum = temp [3:0];
	o_carry = temp[4];
	o_over = o_sum[3] ^ i_a[3] ^ i_b[3] ^ o_carry;


end // always (*)


endmodule
