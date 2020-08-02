`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/08/01 20:12:45
// Design Name: 
// Module Name: testbench
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


module testbench;
    reg clk;
    reg right;
    reg left;
    wire TMDS_Tx_Clk_N;
    wire TMDS_Tx_Clk_P;
    wire [2:0]TMDS_Tx_Data_N;
    wire [2:0]TMDS_Tx_Data_P;
    initial
    begin
        clk=0;
        right=0;
        left=0;
    end
    always #10 clk=~clk;
    
    lab_10 abc(
    .clk(clk),
    .right(right),
    .left(left),
    .TMDS_Tx_Clk_N(TMDS_Tx_Clk_N),
    .TMDS_Tx_Clk_P(TMDS_Tx_Clk_P),
    .TMDS_Tx_Data_N(TMDS_Tx_Data_N),
    .TMDS_Tx_Data_P(TMDS_Tx_Data_P)
    );
endmodule
