`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/31 23:00:47
// Design Name: 
// Module Name: key
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


module key(
    input clk,
    input right,
    input left,
    output reg ratate_out,
    output reg right_out,
    output reg left_out
);
    reg [4:0] clk0=0;
    reg [4:0] clk1=0;
    reg [4:0] clk2=0;
    always@(posedge clk)
    begin
        if((right==1)&&(left==1))
        begin
            if(clk0==5'd20) clk0<=clk0;
            else clk0<=clk0+1;
            if(clk0==5'd19) ratate_out<=1;
            else ratate_out<=0;
        end
        else 
        begin 
            clk0<=0;
            ratate_out<=0;
        end
    end
    always@(posedge clk)
    begin
        if((right==1)&&(left==0))
        begin
            if(clk1==5'd20) clk1<=clk1;
            else clk1<=clk1+1;
            if(clk1==5'd19) right_out<=1;
            else right_out<=0;
        end
        else
        begin 
            clk1<=0;
            right_out<=0;
        end
    end
    always@(posedge clk)
    begin
        if((right==0)&&(left==1))
        begin
            if(clk2==5'd20) clk2<=clk2;
            else clk2<=clk2+1;
            if(clk2==5'd19) left_out<=1;
            else  left_out<=0;
        end
        else
        begin 
            clk2<=0;
            left_out<=0;
        end
    end
endmodule

