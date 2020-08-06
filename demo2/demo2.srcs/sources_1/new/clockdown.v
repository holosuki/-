`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/31 22:57:37
// Design Name: 
// Module Name: clockdown
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clockdown(
    input clk,
    input [25:0] n,
    output reg clkout
);
    reg [25:0] clkout_able=0;
    always@(clk)
    begin
        clkout_able<=clkout_able+1;
        if(clkout_able==n-1)
        begin
            clkout<=1;
            clkout_able<=0;
        end
        else clkout<=0;
    end
endmodule
