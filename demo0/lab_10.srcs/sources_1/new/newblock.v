`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/31 22:54:47
// Design Name: 
// Module Name: newblock
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

module newblock(
    input start,//开始信号；
    output reg [4:0] block//生成初始7种方块之一；
);
    reg [4:0] random =0; 
    always@(posedge start)
    begin
            block<=random;
            random<=random+1;
            if(random==5'd20) random<=0;
    end
endmodule
