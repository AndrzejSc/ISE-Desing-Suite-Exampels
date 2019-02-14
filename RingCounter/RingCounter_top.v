`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:27:34 02/14/2019 
// Design Name: 
// Module Name:    RingCounter_top 
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
module RingCounter_top(
    input i_clk,
    input i_rst,
    output reg[3:0] o_Q
    );

always @(posedge i_clk or posedge i_rst)
begin
	if(i_rst) 
		o_Q <= 4'b 0001;
	else 
		o_Q <={o_Q[0],o_Q[3:1]};

end //always

endmodule
