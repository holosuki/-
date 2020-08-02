   `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/26 17:12:34
// Design Name: 
// Module Name: lab_10
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


module lab_10( 
    input clk, 
    input right,
    input left,
    output TMDS_Tx_Clk_N, 
    output TMDS_Tx_Clk_P, 
    output [2:0]TMDS_Tx_Data_N, 
    output [2:0]TMDS_Tx_Data_P
    //output [9:0] game0_4,game1_4,game2_4,game3_4,game4_4,game5_4,game6_4,game7_4,game8_4,game9_4,
    //output [9:0] game10_4,game11_4,game12_4,game13_4,game14_4,game15_4,game16_4,game17_4,game18_4,game19_4,
    //output [9:0] game20_4,game21_4,game22_4,game23_4
    ); 
    wire [23:0]RGB_Data; 
    wire [23:0]RGB_In; 
    wire RGB_HSync; 
    wire RGB_VSync; 
    wire RGB_VDE; 
    wire [11:0]Set_X; 
    wire [11:0]Set_Y; 
    //第一部分：分频，clk表示100mhz，clkout表示2hz
    wire clkout;
    clockdown clockdown1(
        .clk0(clk),
        .n(26'd50000000),
        .clkout(clkout)
    );
    //第二部分：读取按键，ratate_out,right_out,left_out分别表示旋转左移右移信号
    wire ratate_out;
    wire right_out;
    wire left_out;
    key key1(
        .clk(clk),
        .right(right),
        .left(left),
        .ratate_out(ratate_out),
        .right_out(right_out),
        .left_out(left_out)
    );
    //三：生成方块,block表示19种方块的一种,start是生成方块的信号(摁下down，游戏开始);
    //i和j是中心方块坐标，game0表示方块矩阵，game0_1表示变化后的方块矩阵；
    reg [9:0] game0=10'd1,game1=10'd0,game2=10'd0,game3=10'd0,game4=10'd0,game5=10'd0,game6=10'd0,game7=10'd0,game8=10'd0,game9=10'd0;
    reg [9:0] game10=10'd0,game11=10'd0,game12=10'd0,game13=10'd0,game14=10'd0,game15=10'd0,game16=10'd0,game17=10'd0,game18=10'd0,game19=10'd0;
    reg [9:0] game20=10'd0,game21=10'd0,game22=10'd0,game23=10'd0;
    wire [9:0] game0_1,game1_1,game2_1,game3_1,game4_1,game5_1,game6_1,game7_1,game8_1,game9_1;
    wire [9:0] game10_1,game11_1,game12_1,game13_1,game14_1,game15_1,game16_1,game17_1,game18_1,game19_1;
    wire [9:0] game20_1,game21_1,game22_1,game23_1;
    wire [9:0] game0_2,game1_2,game2_2,game3_2,game4_2,game5_2,game6_2,game7_2,game8_2,game9_2;
    wire [9:0] game10_2,game11_2,game12_2,game13_2,game14_2,game15_2,game16_2,game17_2,game18_2,game19_2;
    wire [9:0] game20_2,game21_2,game22_2,game23_2;
    wire remove_finish=0;
    wire [9:0] game0_3,game1_3,game2_3,game3_3,game4_3,game5_3,game6_3,game7_3,game8_3,game9_3;
    wire [9:0] game10_3,game11_3,game12_3,game13_3,game14_3,game15_3,game16_3,game17_3,game18_3,game19_3;
    wire [9:0] game20_3,game21_3,game22_3,game23_3;
    
    reg [4:0] block;
    wire [4:0] block_1,block_2,block_3;
    reg [3:0] ifstart=0;
    reg start=0;

    reg [3:0] i=0;
    wire [3:0] new_i_1,new_i_2;
    reg [4:0] j=0;
    wire [4:0] new_j_1,new_j_2;
    reg over=0;

    reg handle_finish=0;
    wire handle_finish_1,handle_finish_2;
    always@(posedge clk)
    begin
        if(start==0) 
        begin
            if(ifstart==4'd9)
            begin
                ifstart<=0;
                start<=1;
            end
            else ifstart<=ifstart+1;
        end
    end

    reg gamestart;
    always@(posedge clk) gamestart<=1;
    newblock newblock1(
        .start(start),
        .block(block_3)
    );
    next next1(
        .handle(2'd1),
        .blocks(block_3),
        .i(4'd5),
        .j(5'd5),
        .start(start),
        .clk(clk),
        .clk0(0),
        .handle_finish(handle_finish_1),
        .new_block(block_1),
        .new_i(new_i_1),
        .new_j(new_j_1),
        .game0(game0),.game1(game1),.game2(game2),.game3(game3),.game4(game4),
        .game5(game5),.game6(game6),.game7(game7),.game8(game8),.game9(game9),
        .game10(game10),.game11(game11),.game12(game12),.game13(game13),.game14(game14),
        .game15(game15),.game16(game16),.game17(game17),.game18(game18),.game19(game19),
        .game20(game20),.game21(game21),.game22(game22),.game23(game23),
        .game0_1(game0_1),.game1_1(game1_1),.game2_1(game2_1),.game3_1(game3_1),.game4_1(game4_1),
        .game5_1(game5_1),.game6_1(game6_1),.game7_1(game7_1),.game8_1(game8_1),.game9_1(game9_1),
        .game10_1(game10_1),.game11_1(game11_1),.game12_1(game12_1),.game13_1(game13_1),.game14_1(game14_1),
        .game15_1(game15_1),.game16_1(game16_1),.game17_1(game17_1),.game18_1(game18_1),.game19_1(game19_1),
        .game20_1(game20_1),.game21_1(game21_1),.game22_1(game22_1),.game23_1(game23_1)
    );
    //第四部分：判定能否完成旋转左移右移操作；
    //然后若判定可以，完成变化；
    reg [1:0] handle=2'd3;
    wire handle_able;
    always@(posedge clk)
    begin
        if(ratate_out) handle<=0;
        else if(right_out) handle<=2'd2;
        else if(left_out) handle<=2'd1;
        else handle<=2'd3;
    end

    decide decide1(
        .clk(handle),
        .handle(handle),
        .blocks(block_1),
        .i(new_i_1),
        .j(new_j_1),
        .handle_able(handle_able),
        .game0(game0_1),.game1(game1_1),.game2(game2_1),.game3(game3_1),.game4(game4_1),
        .game5(game5_1),.game6(game6_1),.game7(game7_1),.game8(game8_1),.game9(game9_1),
        .game10(game10_1),.game11(game11_1),.game12(game12_1),.game13(game13_1),.game14(game14_1),
        .game15(game15_1),.game16(game16_1),.game17(game17_1),.game18(game18_1),.game19(game19_1),
        .game20(game20_1),.game21(game21_1),.game22(game22_1),.game23(game23_1)
    );
    next next2(
        .handle(handle),
        .blocks(block_1),
        .i(new_i_1),
        .j(new_j_1),
        .start(handle_able),
        .clk(clk),
        .clk0(clkout),
        .handle_finish(handle_finish_2),
        .new_block(block_2),
        .new_i(new_i_2),
        .new_j(new_j_2),
        .game0(game0_1),.game1(game1_1),.game2(game2_1),.game3(game3_1),.game4(game4_1),
        .game5(game5_1),.game6(game6_1),.game7(game7_1),.game8(game8_1),.game9(game9_1),
        .game10(game10_1),.game11(game11_1),.game12(game12_1),.game13(game13_1),.game14(game14_1),
        .game15(game15_1),.game16(game16_1),.game17(game17_1),.game18(game18_1),.game19(game19_1),
        .game20(game20_1),.game21(game21_1),.game22(game22_1),.game23(game23_1),
        .game0_1(game0_2),.game1_1(game1_2),.game2_1(game2_2),.game3_1(game3_2),.game4_1(game4_2),
        .game5_1(game5_2),.game6_1(game6_2),.game7_1(game7_2),.game8_1(game8_2),.game9_1(game9_2),
        .game10_1(game10_2),.game11_1(game11_2),.game12_1(game12_2),.game13_1(game13_2),.game14_1(game14_2),
        .game15_1(game15_2),.game16_1(game16_2),.game17_1(game17_2),.game18_1(game18_2),.game19_1(game19_2),
        .game20_1(game20_2),.game21_1(game21_2),.game22_1(game22_2),.game23_1(game23_2)
    );
    //第五部分：一个方块到底后，判定是否消行；
    //若是直接消行；
    remove remove1(
        .clk(clk),
        .handle_able(handle_finish_2),
        .i(new_i_2),
        .j(new_j_2),
        .handle_finish(remove_finish),
        .game0(game0_2),.game1(game1_2),.game2(game2_2),.game3(game3_2),.game4(game4_2),
        .game5(game5_2),.game6(game6_2),.game7(game7_2),.game8(game8_2),.game9(game9_2),
        .game10(game10_2),.game11(game11_2),.game12(game12_2),.game13(game13_2),.game14(game14_2),
        .game15(game15_2),.game16(game16_2),.game17(game17_2),.game18(game18_2),.game19(game19_2),
        .game20(game20_2),.game21(game21_2),.game22(game22_2),.game23(game23_2),
        .game0_1(game0_3),.game1_1(game1_3),.game2_1(game2_3),.game3_1(game3_3),.game4_1(game4_3),
        .game5_1(game5_3),.game6_1(game6_3),.game7_1(game7_3),.game8_1(game8_3),.game9_1(game9_3),
        .game10_1(game10_3),.game11_1(game11_3),.game12_1(game12_3),.game13_1(game13_3),.game14_1(game14_3),
        .game15_1(game15_3),.game16_1(game16_3),.game17_1(game17_3),.game18_1(game18_3),.game19_1(game19_3),
        .game20_1(game20_3),.game21_1(game21_3),.game22_1(game22_3),.game23_1(game23_3)
    );

    //第六部分：判定游戏是否结束
    always@(posedge clk)
    begin
        if(game3_1!=0) over<=1;
        else over<=0;
    end
    always@(posedge over)
    begin
        game0<=10'd0;
        game1<=10'd0;
        game2<=10'd0;
        game3<=10'd0;
        game4<=10'd0;
        game5<=10'd0;
        game6<=10'd0;
        game7<=10'd0;
        game8<=10'd0;
        game9<=10'd0;
        game10<=10'd0;
        game11<=10'd0;
        game12<=10'd0;
        game13<=10'd0;
        game14<=10'd0;
        game15<=10'd0;
        game16<=10'd0;
        game17<=10'd0;
        game18<=10'd0;
        game19<=10'd0;
        game20<=10'd0;
        game21<=10'd0;
        game22<=10'd0;
        game23<=10'd1;
    end

    //第七部分：重新生成方块
    always@(posedge clk)
    begin
        if(remove_finish==1&&over==0) start<=0;
    end
    //第八部分：生成rgb矩阵并输出
    turn_to_rgb rgb0(
        .clk(clk),
        .RGB_VDE(RGB_VDE),
        .CounterX(Set_X),
        .CounterY(Set_Y),
        .game0(game0_3),.game1(game1_3),.game2(game2_3),.game3(game3_3),.game4(game4_3),
        .game5(game5_3),.game6(game6_3),.game7(game7_3),.game8(game8_3),.game9(game9_3),
        .game10(game10_3),.game11(game11_3),.game12(game12_3),.game13(game13_3),.game14(game14_3),
        .game15(game15_3),.game16(game16_3),.game17(game17_3),.game18(game18_3),.game19(game19_3),
        .game20(game20_3),.game21(game21_3),.game22(game22_3),.game23(game23_3),
        .rgb(RGB_In)
    );
    //RGBToDvi instantiation 
    rgb2dvi_0 rgb2dvi( 
        .TMDS_Clk_p(TMDS_Tx_Clk_P), 
        .TMDS_Clk_n(TMDS_Tx_Clk_N), 
        .TMDS_Data_p(TMDS_Tx_Data_P), 
        .TMDS_Data_n(TMDS_Tx_Data_N), 
        .aRst_n(1), 
        .vid_pData(RGB_Data), 
        .vid_pVDE(RGB_VDE), 
        .vid_pHSync(RGB_HSync), 
        .vid_pVSync(RGB_VSync), 
        .PixelClk(clk)); 
    //HDMI driver 
    Driver_HDMI Driver_HDMI0( 
        .clk(clk),        //Clock 
        .Rst(1),                 //Reset signal, low reset 
        .Video_Mode(0),          //Video format, 0 is 1920*1080@60Hz, 1 is 1280*720@60Hz 
        .RGB_In(RGB_In),         //Input data 
        .RGB_Data(RGB_Data),     //Output Data 
        .RGB_HSync(RGB_HSync),   //Line signal 
        .RGB_VSync(RGB_VSync),   //Field signal 
        .RGB_VDE(RGB_VDE),       //Data valid signal 
        .Set_X(Set_X),           //Image coordinate X 
        .Set_Y(Set_Y)            //Image coordinate Y 
        ); 
endmodule
 