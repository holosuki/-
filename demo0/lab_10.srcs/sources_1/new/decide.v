`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/31 22:53:42
// Design Name: 
// Module Name: decide
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


module decide(
    input  clk,
    input [1:0] handle,//判定是旋转(0)，左移(1)，右移(2),下降（3）四种操作中哪一个；
    input [4:0] blocks,//判定是19种方块中哪一种；
    input [3:0] i,//中心方块i坐标；
    input [4:0] j,//中心方块j坐标；
    output reg handle_able,
    input [9:0] game0,game1,game2,game3,game4,game5,game6,game7,game8,game9,
    input [9:0] game10,game11,game12,game13,game14,game15,game16,game17,game18,game19,
    input [9:0] game20,game21,game22,game23
);  
    reg [9:0] j_2;
    reg [9:0] j_1;
    reg [9:0] j0;
    reg [9:0] j1;
    reg [9:0] j2;
    reg [9:0] j3;
    always@(clk)
    begin
        case(j-2)
        5'd0:j_2<=game0;
        5'd1:j_2<=game1;
        5'd2:j_2<=game2;
        5'd3:j_2<=game3;
        5'd4:j_2<=game4;
        5'd5:j_2<=game5;
        5'd6:j_2<=game6;
        5'd7:j_2<=game7;
        5'd8:j_2<=game8;
        5'd9:j_2<=game9;
        5'd10:j_2<=game10;
        5'd11:j_2<=game11;
        5'd12:j_2<=game12;
        5'd13:j_2<=game13;
        5'd14:j_2<=game14;
        5'd15:j_2<=game15;
        5'd16:j_2<=game16;
        5'd17:j_2<=game17;
        5'd18:j_2<=game18;
        5'd19:j_2<=game19;
        5'd20:j_2<=game20;
        5'd21:j_2<=game21;
        5'd22:j_2<=game22;
        5'd23:j_2<=game23;
        endcase
        case(j-1)
        5'd0:j_1<=game0;
        5'd1:j_1<=game1;
        5'd2:j_1<=game2;
        5'd3:j_1<=game3;
        5'd4:j_1<=game4;
        5'd5:j_1<=game5;
        5'd6:j_1<=game6;
        5'd7:j_1<=game7;
        5'd8:j_1<=game8;
        5'd9:j_1<=game9;
        5'd10:j_1<=game10;
        5'd11:j_1<=game11;
        5'd12:j_1<=game12;
        5'd13:j_1<=game13;
        5'd14:j_1<=game14;
        5'd15:j_1<=game15;
        5'd16:j_1<=game16;
        5'd17:j_1<=game17;
        5'd18:j_1<=game18;
        5'd19:j_1<=game19;
        5'd20:j_1<=game20;
        5'd21:j_1<=game21;
        5'd22:j_1<=game22;
        5'd23:j_1<=game23;
        endcase
        case(j)
        5'd0:j0<=game0;
        5'd1:j0<=game1;
        5'd2:j0<=game2;
        5'd3:j0<=game3;
        5'd4:j0<=game4;
        5'd5:j0<=game5;
        5'd6:j0<=game6;
        5'd7:j0<=game7;
        5'd8:j0<=game8;
        5'd9:j0<=game9;
        5'd10:j0<=game10;
        5'd11:j0<=game11;
        5'd12:j0<=game12;
        5'd13:j0<=game13;
        5'd14:j0<=game14;
        5'd15:j0<=game15;
        5'd16:j0<=game16;
        5'd17:j0<=game17;
        5'd18:j0<=game18;
        5'd19:j0<=game19;
        5'd20:j0<=game20;
        5'd21:j0<=game21;
        5'd22:j0<=game22;
        5'd23:j0<=game23;
        endcase
        case(j+1)
        5'd0:j1<=game0;
        5'd1:j1<=game1;
        5'd2:j1<=game2;
        5'd3:j1<=game3;
        5'd4:j1<=game4;
        5'd5:j1<=game5;
        5'd6:j1<=game6;
        5'd7:j1<=game7;
        5'd8:j1<=game8;
        5'd9:j1<=game9;
        5'd10:j1<=game10;
        5'd11:j1<=game11;
        5'd12:j1<=game12;
        5'd13:j1<=game13;
        5'd14:j1<=game14;
        5'd15:j1<=game15;
        5'd16:j1<=game16;
        5'd17:j1<=game17;
        5'd18:j1<=game18;
        5'd19:j1<=game19;
        5'd20:j1<=game20;
        5'd21:j1<=game21;
        5'd22:j1<=game22;
        5'd23:j1<=game23;
        endcase
        case(j+2)
        5'd0:j2<=game0;
        5'd1:j2<=game1;
        5'd2:j2<=game2;
        5'd3:j2<=game3;
        5'd4:j2<=game4;
        5'd5:j2<=game5;
        5'd6:j2<=game6;
        5'd7:j2<=game7;
        5'd8:j2<=game8;
        5'd9:j2<=game9;
        5'd10:j2<=game10;
        5'd11:j2<=game11;
        5'd12:j2<=game12;
        5'd13:j2<=game13;
        5'd14:j2<=game14;
        5'd15:j2<=game15;
        5'd16:j2<=game16;
        5'd17:j2<=game17;
        5'd18:j2<=game18;
        5'd19:j2<=game19;
        5'd20:j2<=game20;
        5'd21:j2<=game21;
        5'd22:j2<=game22;
        5'd23:j2<=game23;
        endcase
        case(j+3)
        5'd0:j3<=game0;
        5'd1:j3<=game1;
        5'd2:j3<=game2;
        5'd3:j3<=game3;
        5'd4:j3<=game4;
        5'd5:j3<=game5;
        5'd6:j3<=game6;
        5'd7:j3<=game7;
        5'd8:j3<=game8;
        5'd9:j3<=game9;
        5'd10:j3<=game10;
        5'd11:j3<=game11;
        5'd12:j3<=game12;
        5'd13:j3<=game13;
        5'd14:j3<=game14;
        5'd15:j3<=game15;
        5'd16:j3<=game16;
        5'd17:j3<=game17;
        5'd18:j3<=game18;
        5'd19:j3<=game19;
        5'd20:j3<=game20;
        5'd21:j3<=game21;
        5'd22:j3<=game22;
        5'd23:j3<=game23;
        endcase
        //旋转
        if(handle==0)
        begin
            case(blocks)
                5'd0:handle_able<=0;
                5'd1:
                begin
                    if((j_1[i+1]==1)||(j[i+1]==1)||(j[i-1]==1)||(i==0)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd2:
                begin
                    if((j1[i]==1)||(j_1[i-1]==1)||(j_1[i]==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd3:
                begin
                    if((j0[i+1]==1)||(j0[i-1]==1)||(j1[i-1]==1)||(i==9)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd4:
                begin
                    if((j1[i+1]==1)||(j1[i]==1)||(j_1[i]==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd5:
                begin
                    if((j1[i+1]==1)||(j0[i+1]==1)||(j0[i-1]==1)||(i==9)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd6:
                begin
                    if((j1[i]==1)||(j_1[i+1]==1)||(j_1[i]==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd7:
                begin
                    if((j0[i+1]==1)||(j0[i-1]==1)||(j_1[i-1]==1)||(i==0)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd8:
                begin
                    if((j_1[i]==1)||(j1[i]==1)||(j1[i-1]==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd9:
                begin
                    if((j0[i+2]==1)||(j0[i-1]==1)||(j0[i+1]==1)||(i==0)||(i==9)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd10:
                begin
                    if((j1[i]==1)||(j_1[i]==1)||(j_2[i]==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd11:
                begin
                    if(j1[i]==1) handle_able<=0;
                    else handle_able<=1;
                end
                5'd12:
                begin
                    if((j[i+1]==1)||(i==9)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd13:
                begin
                    if(j_1[i]==1) handle_able<=0;
                    else handle_able<=1;
                end
                5'd14:
                begin
                    if((j[i-1]==1)||(i==0)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd15:
                begin
                    if((j1[i]==1)||(j1[i+1]==1)||(i==9)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd16:
                begin
                    if((j_1[i]==1)||(j1[i-1]==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd17:
                begin
                    if((j_1[i]==1)||(j1[i-1]==1)||(i==0)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd18:
                begin
                    if((j0[i+1]==1)||(j1[i+1]==1)) handle_able<=0;
                    else handle_able<=1;
                end
                default handle_able<=0;
            endcase
        end 
        //左移
        else if(handle==1)
        begin
            case(blocks)
                5'd0:
                begin
                    if((j1[i-1]==1)||(j0[i-1]==1)||(i==0)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd1:
                begin
                    if((j_1[i-1]==1)||(j1[i-1]==1)||(j0[i-1]==1)||(i==0)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd2:
                begin
                    if((j0[i-2]==1)||(j_1[i]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd3:
                begin
                    if((j_1[i-2]==1)||(j1[i-1]==1)||(j0[i-1]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd4:
                begin
                    if((j0[i-2]==1)||(j1[i-2]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd5:
                begin
                    if((j1[i-2]==1)||(j0[i-1]==1)||(j_1[i-1]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd6:
                begin
                    if((j1[i]==1)||(j0[i-2]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd7:
                begin
                    if((j_1[i-1]==1)||(j1[i-1]==1)||(j0[i-1]==1)||(i==0)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd8:
                begin
                    if((j_1[i-2]==1)||(j0[i-2]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd9:
                begin
                    if((j_1[i-1]==1)||(j1[i-1]==1)||(j0[i-1]==1)||(j2[i-1]==1)||(i==0)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd10:
                begin
                    if((j0[i-2]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd11:
                begin
                    if((j0[i-2]==1)||(j_1[i-1]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd12:
                begin
                    if((j_1[i-1]==1)||(j1[i-1]==1)||(j0[i-2]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd13:
                begin
                    if((j0[i-2]==1)||(j1[i-1]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd14:
                begin
                    if((j_1[i-1]==1)||(j1[i-1]==1)||(j0[i-1]==1)||(i==0)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd15:
                begin
                    if((j_1[i-1]==1)||(j1[i-2]==1)||(j0[i-2]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd16:
                begin
                    if((j0[i-2]==1)||(j1[i-1]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd17:
                begin
                    if((j_1[i-1]==1)||(j1[i]==1)||(j0[i-1]==1)||(i==0)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd18:
                begin
                    if((j0[i-2]==1)||(j_1[i-1]==1)||(i==1)) handle_able<=0;
                    else handle_able<=1;
                end
                default handle_able<=0;
            endcase
        end 
        //右移
        else if(handle==2)
        begin
            case(blocks)
                5'd0:
                begin
                    if((j0[i+2]==1)||(j1[i+2]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd1:
                begin
                    if((j0[i+1]==1)||(j_1[i+1]==1)||(j1[i+2]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd2:
                begin
                    if((j0[i+2]==1)||(j_1[i+2]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd3:
                begin
                    if((j0[i+1]==1)||(j_1[i+1]==1)||(j1[i+1]==1)||(i==9)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd4:
                begin
                    if((j1[i]==1)||(j0[i+2]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd5:
                begin
                    if((j0[i+1]==1)||(j_1[i+1]==1)||(j1[i+1]==1)||(i==9)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd6:
                begin
                    if((j0[i+2]==1)||(j1[i+2]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd7:
                begin
                    if((j1[i+1]==1)||(j0[i+1]==1)||(j_1[i+2]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd8:
                begin
                    if((j0[i+2]==1)||(j_1[i]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd9:
                begin
                    if((j1[i+1]==1)||(j_1[i+1]==1)||(j0[i+1]==1)||(j2[i+1]==1)||(i==9)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd10:
                begin
                    if((j0[i+3]==1)||(i==7)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd11:
                begin
                    if((j0[i+2]==1)||(j_1[i+1]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd12:
                begin
                    if((j0[i+1]==1)||(j_1[i+1]==1)||(j1[i+1]==1)||(i==9)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd13:
                begin
                    if((j0[i+2]==1)||(j1[i+1]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd14:
                begin
                    if((j_1[i+1]==1)||(j0[i+2]==1)||(j1[i+1]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd15:
                begin
                    if((j0[i+1]==1)||(j_1[i+1]==1)||(j1[i]==1)||(i==9)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd16:
                begin
                    if((j0[i+1]==1)||(j1[i+2]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd17:
                begin
                    if((j_1[i+1]==1)||(j0[i+2]==1)||(j1[i+2]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                5'd18:
                begin
                    if((j0[i+1]==1)||(j_1[i+2]==1)||(i==8)) handle_able<=0;
                    else handle_able<=1;
                end
                default handle_able<=0;
            endcase   
        end
        else handle_able<=1;
    end
endmodule
