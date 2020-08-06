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


module demo2( 
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
    wire [239:0] data;
    //第一部分：分频，clk表示100mhz，clkout表示2hz
    wire clkout;
    clockdown clockdown1(
        .clk(clk),
        .n(26'd50000000),
        .clkout(clkout)
    );
    //第二部分：读取按键，ratate_out,right_out,left_out分别表示旋转左移右移信号
    wire rotate_out;
    wire right_out;
    wire left_out;
    key key1(
        .clk(clk),
        .right(right),
        .left(left),
        .ratate_out(rotate_out),
        .right_out(right_out),
        .left_out(left_out)
    );
   game game1(
   .rotate(rotate_out),
   .left(left_out),
   .right(right_out),
   .clk(clk),
   .clk0(clkout),
   .num(data)
   );
    turn_to_rgb rgb0(
        .clk(clk),
        .CounterX(Set_X),
        .CounterY(Set_Y),
        .num(data),
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
 