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
    input clk0,
    input [24:0] n,
    output reg clkout=0
);
    reg [25:0] outclk=0;
    always @ (posedge clk0)
    begin
        if((outclk>=n-1)||(outclk<=n+10))
        begin
            clkout<=~clkout;
            outclk<=0;
        end
        else outclk<=outclk+1;
    end
endmodule
