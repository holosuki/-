module turn_to_rgb(
    input clk,
    input [11:0] CounterX,
    input [11:0] CounterY,
    input [239:0] num,
    output reg [23:0] rgb
);
    reg [9:0] game0,game1,game2,game3,game4,game5,game6,game7,game8,game9;
    reg [9:0] game10,game11,game12,game13,game14,game15,game16,game17,game18,game19;
    reg [9:0] game20,game21,game22,game23;
    reg [23:0] rgb1={8'd0,8'd191,8'd255};
    reg [23:0] rgb2={8'd144,8'd238,8'd144};
    reg [23:0] rgb3={8'd255,8'd255,8'd255};
    reg [1:0] n;
    always@(posedge clk)
    begin
        game0<= num[9:0];
        game1<= num[19:10];
        game2<= num[29:20];
        game3<= num[39:30];
        game4<= num[49:40];
        game5<= num[59:50];
        game6<= num[69:60];
        game7<= num[79:70];
        game8<= num[89:80];
        game9<= num[99:90];
        game10<= num[109:100];
        game11<= num[119:110];
        game12<= num[129:120];
        game13<= num[139:130];
        game14<= num[149:140];
        game15<= num[159:150];
        game16<= num[169:160];
        game17<= num[179:170];
        game18<= num[189:180];
        game19<= num[199:190];
        game20<=num[209:200];
        game21<=num[219:210];
        game22<=num[229:220];
        game23<=num[239:230];
        n<=0;
        if((CounterX>=720)&&(CounterX<765)) n<=1;
        else if((CounterX>=1260)&&(CounterX<=1305)) n<=1;
        else if((CounterX>=(765))&&(CounterX<(810)))
        begin
            if((CounterY>=0)&&(CounterY<45))
            begin
                if(game0[9]==1) n<=2;
            end
            else if((CounterY>=45)&&(CounterY<90))
            begin
                if(game1[9]==1) n<=2;
            end
            else if((CounterY>=90)&&(CounterY<135))
            begin
                if(game2[9]==1) n<=2;
            end
            else if((CounterY>=135)&&(CounterY<180))
            begin
                if(game3[9]==1) n<=2;
            end
            else if((CounterY>=180)&&(CounterY<225))
            begin
                if(game4[9]==1) n<=2;
            end
            else if((CounterY>=225)&&(CounterY<270))
            begin
                if(game5[9]==1) n<=2;
            end
            else if((CounterY>=270)&&(CounterY<315))
            begin
                if(game6[9]==1) n<=2;
            end
            else if((CounterY>=315)&&(CounterY<360))
            begin
                if(game7[9]==1) n<=2;
            end
            else if((CounterY>=360)&&(CounterY<405))
            begin
                if(game8[9]==1) n<=2;
            end
            else if((CounterY>=405)&&(CounterY<450))
            begin
                if(game9[9]==1) n<=2;
            end
            else if((CounterY>=450)&&(CounterY<495))
            begin
                if(game10[9]==1) n<=2;
            end
            else if((CounterY>=495)&&(CounterY<540))
            begin
                if(game11[9]==1) n<=2;
            end
            else if((CounterY>=540)&&(CounterY<585))
            begin
                if(game12[9]==1) n<=2;
            end
            else if((CounterY>=585)&&(CounterY<630))
            begin
                if(game13[9]==1) n<=2;
            end
            else if((CounterY>=630)&&(CounterY<675))
            begin
                if(game14[9]==1) n<=2;
            end
            else if((CounterY>=675)&&(CounterY<720))
            begin
                if(game15[9]==1) n<=2;
            end
            else if((CounterY>=720)&&(CounterY<765))
            begin
                if(game16[9]==1) n<=2;
            end
            else if((CounterY>=765)&&(CounterY<810))
            begin
                if(game17[9]==1) n<=2;
            end
            else if((CounterY>=810)&&(CounterY<855))
            begin
                if(game18[9]==1) n<=2;
            end
            else if((CounterY>=855)&&(CounterY<900))
            begin
                if(game19[9]==1) n<=2;
            end
            else if((CounterY>=900)&&(CounterY<945))
            begin
                if(game20[9]==1) n<=2;
            end
            else if((CounterY>=945)&&(CounterY<990))
            begin
                if(game21[9]==1) n<=2;
            end
            else if((CounterY>=990)&&(CounterY<1035))
            begin
                if(game22[9]==1) n<=2;
            end
            else if((CounterY>=1035)&&(CounterY<1080))
            begin
                if(game23[9]==1) n<=2;
            end
        end
        else if((CounterX>=(810))&&(CounterX<(855)))
        begin
            if((CounterY>=0)&&(CounterY<45))
            begin
                if(game0[8]==1) n<=2;
            end
            else if((CounterY>=45)&&(CounterY<90))
            begin
                if(game1[8]==1) n<=2;
            end
            else if((CounterY>=90)&&(CounterY<135))
            begin
                if(game2[8]==1) n<=2;
            end
            else if((CounterY>=135)&&(CounterY<180))
            begin
                if(game3[8]==1) n<=2;
            end
            else if((CounterY>=180)&&(CounterY<225))
            begin
                if(game4[8]==1) n<=2;
            end
            else if((CounterY>=225)&&(CounterY<270))
            begin
                if(game5[8]==1) n<=2;
            end
            else if((CounterY>=270)&&(CounterY<315))
            begin
                if(game6[8]==1) n<=2;
            end
            else if((CounterY>=315)&&(CounterY<360))
            begin
                if(game7[8]==1) n<=2;
            end
            else if((CounterY>=360)&&(CounterY<405))
            begin
                if(game8[8]==1) n<=2;
            end
            else if((CounterY>=405)&&(CounterY<450))
            begin
                if(game9[8]==1) n<=2;
            end
            else if((CounterY>=450)&&(CounterY<495))
            begin
                if(game10[8]==1) n<=2;
            end
            else if((CounterY>=495)&&(CounterY<540))
            begin
                if(game11[8]==1) n<=2;
            end
            else if((CounterY>=540)&&(CounterY<585))
            begin
                if(game12[8]==1) n<=2;
            end
            else if((CounterY>=585)&&(CounterY<630))
            begin
                if(game13[8]==1) n<=2;
            end
            else if((CounterY>=630)&&(CounterY<675))
            begin
                if(game14[8]==1) n<=2;
            end
            else if((CounterY>=675)&&(CounterY<720))
            begin
                if(game15[8]==1) n<=2;
            end
            else if((CounterY>=720)&&(CounterY<765))
            begin
                if(game16[8]==1) n<=2;
            end
            else if((CounterY>=765)&&(CounterY<810))
            begin
                if(game17[8]==1) n<=2;
            end
            else if((CounterY>=810)&&(CounterY<855))
            begin
                if(game18[8]==1) n<=2;
            end
            else if((CounterY>=855)&&(CounterY<900))
            begin
                if(game19[8]==1) n<=2;
            end
            else if((CounterY>=900)&&(CounterY<945))
            begin
                if(game20[8]==1) n<=2;
            end
            else if((CounterY>=945)&&(CounterY<990))
            begin
                if(game21[8]==1) n<=2;
            end
            else if((CounterY>=990)&&(CounterY<1035))
            begin
                if(game22[8]==1) n<=2;
            end
            else if((CounterY>=1035)&&(CounterY<1080))
            begin
                if(game23[8]==1) n<=2;
            end
        end
        else if((CounterX>=(855))&&(CounterX<(900)))
        begin
            if((CounterY>=0)&&(CounterY<45))
            begin
                if(game0[7]==1) n<=2;
            end
            else if((CounterY>=45)&&(CounterY<90))
            begin
                if(game1[7]==1) n<=2;
            end
            else if((CounterY>=90)&&(CounterY<135))
            begin
                if(game2[7]==1) n<=2;
            end
            else if((CounterY>=135)&&(CounterY<180))
            begin
                if(game3[7]==1) n<=2;
            end
            else if((CounterY>=180)&&(CounterY<225))
            begin
                if(game4[7]==1) n<=2;
            end
            else if((CounterY>=225)&&(CounterY<270))
            begin
                if(game5[7]==1) n<=2;
            end
            else if((CounterY>=270)&&(CounterY<315))
            begin
                if(game6[7]==1) n<=2;
            end
            else if((CounterY>=315)&&(CounterY<360))
            begin
                if(game7[7]==1) n<=2;
            end
            else if((CounterY>=360)&&(CounterY<405))
            begin
                if(game8[7]==1) n<=2;
            end
            else if((CounterY>=405)&&(CounterY<450))
            begin
                if(game9[7]==1) n<=2;
            end
            else if((CounterY>=450)&&(CounterY<495))
            begin
                if(game10[7]==1) n<=2;
            end
            else if((CounterY>=495)&&(CounterY<540))
            begin
                if(game11[7]==1) n<=2;
            end
            else if((CounterY>=540)&&(CounterY<585))
            begin
                if(game12[7]==1) n<=2;
            end
            else if((CounterY>=585)&&(CounterY<630))
            begin
                if(game13[7]==1) n<=2;
            end
            else if((CounterY>=630)&&(CounterY<675))
            begin
                if(game14[7]==1) n<=2;
            end
            else if((CounterY>=675)&&(CounterY<720))
            begin
                if(game15[7]==1) n<=2;
            end
            else if((CounterY>=720)&&(CounterY<765))
            begin
                if(game16[7]==1) n<=2;
            end
            else if((CounterY>=765)&&(CounterY<810))
            begin
                if(game17[7]==1) n<=2;
            end
            else if((CounterY>=810)&&(CounterY<855))
            begin
                if(game18[7]==1) n<=2;
            end
            else if((CounterY>=855)&&(CounterY<900))
            begin
                if(game19[7]==1) n<=2;
            end
            else if((CounterY>=900)&&(CounterY<945))
            begin
                if(game20[7]==1) n<=2;
            end
            else if((CounterY>=945)&&(CounterY<990))
            begin
                if(game21[7]==1) n<=2;
            end
            else if((CounterY>=990)&&(CounterY<1035))
            begin
                if(game22[7]==1) n<=2;
            end
            else if((CounterY>=1035)&&(CounterY<1080))
            begin
                if(game23[7]==1) n<=2;
            end
        end
        else if((CounterX>=(900))&&(CounterX<(945)))
        begin
            if((CounterY>=0)&&(CounterY<45))
            begin
                if(game0[6]==1) n<=2;
            end
            else if((CounterY>=45)&&(CounterY<90))
            begin
                if(game1[6]==1) n<=2;
            end
            else if((CounterY>=90)&&(CounterY<135))
            begin
                if(game2[6]==1) n<=2;
            end
            else if((CounterY>=135)&&(CounterY<180))
            begin
                if(game3[6]==1) n<=2;
            end
            else if((CounterY>=180)&&(CounterY<225))
            begin
                if(game4[6]==1) n<=2;
            end
            else if((CounterY>=225)&&(CounterY<270))
            begin
                if(game5[6]==1) n<=2;
            end
            else if((CounterY>=270)&&(CounterY<315))
            begin
                if(game6[6]==1) n<=2;
            end
            else if((CounterY>=315)&&(CounterY<360))
            begin
                if(game7[6]==1) n<=2;
            end
            else if((CounterY>=360)&&(CounterY<405))
            begin
                if(game8[6]==1) n<=2;
            end
            else if((CounterY>=405)&&(CounterY<450))
            begin
                if(game9[6]==1) n<=2;
            end
            else if((CounterY>=450)&&(CounterY<495))
            begin
                if(game10[6]==1) n<=2;
            end
            else if((CounterY>=495)&&(CounterY<540))
            begin
                if(game11[6]==1) n<=2;
            end
            else if((CounterY>=540)&&(CounterY<585))
            begin
                if(game12[6]==1) n<=2;
            end
            else if((CounterY>=585)&&(CounterY<630))
            begin
                if(game13[6]==1) n<=2;
            end
            else if((CounterY>=630)&&(CounterY<675))
            begin
                if(game14[6]==1) n<=2;
            end
            else if((CounterY>=675)&&(CounterY<720))
            begin
                if(game15[6]==1) n<=2;
            end
            else if((CounterY>=720)&&(CounterY<765))
            begin
                if(game16[6]==1) n<=2;
            end
            else if((CounterY>=765)&&(CounterY<810))
            begin
                if(game17[6]==1) n<=2;
            end
            else if((CounterY>=810)&&(CounterY<855))
            begin
                if(game18[6]==1) n<=2;
            end
            else if((CounterY>=855)&&(CounterY<900))
            begin
                if(game19[6]==1) n<=2;
            end
            else if((CounterY>=900)&&(CounterY<945))
            begin
                if(game20[6]==1) n<=2;
            end
            else if((CounterY>=945)&&(CounterY<990))
            begin
                if(game21[6]==1) n<=2;
            end
            else if((CounterY>=990)&&(CounterY<1035))
            begin
                if(game22[6]==1) n<=2;
            end
            else if((CounterY>=1035)&&(CounterY<1080))
            begin
                if(game23[6]==1) n<=2;
            end
        end
        else if((CounterX>=(990))&&(CounterX<(1035)))
        begin
            if((CounterY>=0)&&(CounterY<45))
            begin
                if(game0[5]==1) n<=2;
            end
            else if((CounterY>=45)&&(CounterY<90))
            begin
                if(game1[5]==1) n<=2;
            end
            else if((CounterY>=90)&&(CounterY<135))
            begin
                if(game2[5]==1) n<=2;
            end
            else if((CounterY>=135)&&(CounterY<180))
            begin
                if(game3[5]==1) n<=2;
            end
            else if((CounterY>=180)&&(CounterY<225))
            begin
                if(game4[5]==1) n<=2;
            end
            else if((CounterY>=225)&&(CounterY<270))
            begin
                if(game5[5]==1) n<=2;
            end
            else if((CounterY>=270)&&(CounterY<315))
            begin
                if(game6[5]==1) n<=2;
            end
            else if((CounterY>=315)&&(CounterY<360))
            begin
                if(game7[5]==1) n<=2;
            end
            else if((CounterY>=360)&&(CounterY<405))
            begin
                if(game8[5]==1) n<=2;
            end
            else if((CounterY>=405)&&(CounterY<450))
            begin
                if(game9[5]==1) n<=2;
            end
            else if((CounterY>=450)&&(CounterY<495))
            begin
                if(game10[5]==1) n<=2;
            end
            else if((CounterY>=495)&&(CounterY<540))
            begin
                if(game11[5]==1) n<=2;
            end
            else if((CounterY>=540)&&(CounterY<585))
            begin
                if(game12[5]==1) n<=2;
            end
            else if((CounterY>=585)&&(CounterY<630))
            begin
                if(game13[5]==1) n<=2;
            end
            else if((CounterY>=630)&&(CounterY<675))
            begin
                if(game14[5]==1) n<=2;
            end
            else if((CounterY>=675)&&(CounterY<720))
            begin
                if(game15[5]==1) n<=2;
            end
            else if((CounterY>=720)&&(CounterY<765))
            begin
                if(game16[5]==1) n<=2;
            end
            else if((CounterY>=765)&&(CounterY<810))
            begin
                if(game17[5]==1) n<=2;
            end
            else if((CounterY>=810)&&(CounterY<855))
            begin
                if(game18[5]==1) n<=2;
            end
            else if((CounterY>=855)&&(CounterY<900))
            begin
                if(game19[5]==1) n<=2;
            end
            else if((CounterY>=900)&&(CounterY<945))
            begin
                if(game20[5]==1) n<=2;
            end
            else if((CounterY>=945)&&(CounterY<990))
            begin
                if(game21[5]==1) n<=2;
            end
            else if((CounterY>=990)&&(CounterY<1035))
            begin
                if(game22[5]==1) n<=2;
            end
            else if((CounterY>=1035)&&(CounterY<1080))
            begin
                if(game23[5]==1) n<=2;
            end
        end
        else if((CounterX>=(1035))&&(CounterX<(1080)))
        begin
            if((CounterY>=0)&&(CounterY<45))
            begin
                if(game0[4]==1) n<=2;
            end
            else if((CounterY>=45)&&(CounterY<90))
            begin
                if(game1[4]==1) n<=2;
            end
            else if((CounterY>=90)&&(CounterY<135))
            begin
                if(game2[4]==1) n<=2;
            end
            else if((CounterY>=135)&&(CounterY<180))
            begin
                if(game3[4]==1) n<=2;
            end
            else if((CounterY>=180)&&(CounterY<225))
            begin
                if(game4[4]==1) n<=2;
            end
            else if((CounterY>=225)&&(CounterY<270))
            begin
                if(game5[4]==1) n<=2;
            end
            else if((CounterY>=270)&&(CounterY<315))
            begin
                if(game6[4]==1) n<=2;
            end
            else if((CounterY>=315)&&(CounterY<360))
            begin
                if(game7[4]==1) n<=2;
            end
            else if((CounterY>=360)&&(CounterY<405))
            begin
                if(game8[4]==1) n<=2;
            end
            else if((CounterY>=405)&&(CounterY<450))
            begin
                if(game9[4]==1) n<=2;
            end
            else if((CounterY>=450)&&(CounterY<495))
            begin
                if(game10[4]==1) n<=2;
            end
            else if((CounterY>=495)&&(CounterY<540))
            begin
                if(game11[4]==1) n<=2;
            end
            else if((CounterY>=540)&&(CounterY<585))
            begin
                if(game12[4]==1) n<=2;
            end
            else if((CounterY>=585)&&(CounterY<630))
            begin
                if(game13[4]==1) n<=2;
            end
            else if((CounterY>=630)&&(CounterY<675))
            begin
                if(game14[4]==1) n<=2;
            end
            else if((CounterY>=675)&&(CounterY<720))
            begin
                if(game15[4]==1) n<=2;
            end
            else if((CounterY>=720)&&(CounterY<765))
            begin
                if(game16[4]==1) n<=2;
            end
            else if((CounterY>=765)&&(CounterY<810))
            begin
                if(game17[4]==1) n<=2;
            end
            else if((CounterY>=810)&&(CounterY<855))
            begin
                if(game18[4]==1) n<=2;
            end
            else if((CounterY>=855)&&(CounterY<900))
            begin
                if(game19[4]==1) n<=2;
            end
            else if((CounterY>=900)&&(CounterY<945))
            begin
                if(game20[4]==1) n<=2;
            end
            else if((CounterY>=945)&&(CounterY<990))
            begin
                if(game21[4]==1) n<=2;
            end
            else if((CounterY>=990)&&(CounterY<1035))
            begin
                if(game22[4]==1) n<=2;
            end
            else if((CounterY>=1035)&&(CounterY<1080))
            begin
                if(game23[4]==1) n<=2;
            end
        end
        else if((CounterX>=(1080))&&(CounterX<(1125)))
        begin
            if((CounterY>=0)&&(CounterY<45))
            begin
                if(game0[3]==1) n<=2;
            end
            else if((CounterY>=45)&&(CounterY<90))
            begin
                if(game1[3]==1) n<=2;
            end
            else if((CounterY>=90)&&(CounterY<135))
            begin
                if(game2[3]==1) n<=2;
            end
            else if((CounterY>=135)&&(CounterY<180))
            begin
                if(game3[3]==1) n<=2;
            end
            else if((CounterY>=180)&&(CounterY<225))
            begin
                if(game4[3]==1) n<=2;
            end
            else if((CounterY>=225)&&(CounterY<270))
            begin
                if(game5[3]==1) n<=2;
            end
            else if((CounterY>=270)&&(CounterY<315))
            begin
                if(game6[3]==1) n<=2;
            end
            else if((CounterY>=315)&&(CounterY<360))
            begin
                if(game7[3]==1) n<=2;
            end
            else if((CounterY>=360)&&(CounterY<405))
            begin
                if(game8[3]==1) n<=2;
            end
            else if((CounterY>=405)&&(CounterY<450))
            begin
                if(game9[3]==1) n<=2;
            end
            else if((CounterY>=450)&&(CounterY<495))
            begin
                if(game10[3]==1) n<=2;
            end
            else if((CounterY>=495)&&(CounterY<540))
            begin
                if(game11[3]==1) n<=2;
            end
            else if((CounterY>=540)&&(CounterY<585))
            begin
                if(game12[3]==1) n<=2;
            end
            else if((CounterY>=585)&&(CounterY<630))
            begin
                if(game13[3]==1) n<=2;
            end
            else if((CounterY>=630)&&(CounterY<675))
            begin
                if(game14[3]==1) n<=2;
            end
            else if((CounterY>=675)&&(CounterY<720))
            begin
                if(game15[3]==1) n<=2;
            end
            else if((CounterY>=720)&&(CounterY<765))
            begin
                if(game16[3]==1) n<=2;
            end
            else if((CounterY>=765)&&(CounterY<810))
            begin
                if(game17[3]==1) n<=2;
            end
            else if((CounterY>=810)&&(CounterY<855))
            begin
                if(game18[3]==1) n<=2;
            end
            else if((CounterY>=855)&&(CounterY<900))
            begin
                if(game19[3]==1) n<=2;
            end
            else if((CounterY>=900)&&(CounterY<945))
            begin
                if(game20[3]==1) n<=2;
            end
            else if((CounterY>=945)&&(CounterY<990))
            begin
                if(game21[3]==1) n<=2;
            end
            else if((CounterY>=990)&&(CounterY<1035))
            begin
                if(game22[3]==1) n<=2;
            end
            else if((CounterY>=1035)&&(CounterY<1080))
            begin
                if(game23[3]==1) n<=2;
            end
        end
        else if((CounterX>=(1125))&&(CounterX<(1170)))
        begin
            if((CounterY>=0)&&(CounterY<45))
            begin
                if(game0[2]==1) n<=2;
            end
            else if((CounterY>=45)&&(CounterY<90))
            begin
                if(game1[2]==1) n<=2;
            end
            else if((CounterY>=90)&&(CounterY<135))
            begin
                if(game2[2]==1) n<=2;
            end
            else if((CounterY>=135)&&(CounterY<180))
            begin
                if(game3[2]==1) n<=2;
            end
            else if((CounterY>=180)&&(CounterY<225))
            begin
                if(game4[2]==1) n<=2;
            end
            else if((CounterY>=225)&&(CounterY<270))
            begin
                if(game5[2]==1) n<=2;
            end
            else if((CounterY>=270)&&(CounterY<315))
            begin
                if(game6[2]==1) n<=2;
            end
            else if((CounterY>=315)&&(CounterY<360))
            begin
                if(game7[2]==1) n<=2;
            end
            else if((CounterY>=360)&&(CounterY<405))
            begin
                if(game8[2]==1) n<=2;
            end
            else if((CounterY>=405)&&(CounterY<450))
            begin
                if(game9[2]==1) n<=2;
            end
            else if((CounterY>=450)&&(CounterY<495))
            begin
                if(game10[2]==1) n<=2;
            end
            else if((CounterY>=495)&&(CounterY<540))
            begin
                if(game11[2]==1) n<=2;
            end
            else if((CounterY>=540)&&(CounterY<585))
            begin
                if(game12[2]==1) n<=2;
            end
            else if((CounterY>=585)&&(CounterY<630))
            begin
                if(game13[2]==1) n<=2;
            end
            else if((CounterY>=630)&&(CounterY<675))
            begin
                if(game14[2]==1) n<=2;
            end
            else if((CounterY>=675)&&(CounterY<720))
            begin
                if(game15[2]==1) n<=2;
            end
            else if((CounterY>=720)&&(CounterY<765))
            begin
                if(game16[2]==1) n<=2;
            end
            else if((CounterY>=765)&&(CounterY<810))
            begin
                if(game17[2]==1) n<=2;
            end
            else if((CounterY>=810)&&(CounterY<855))
            begin
                if(game18[2]==1) n<=2;
            end
            else if((CounterY>=855)&&(CounterY<900))
            begin
                if(game19[2]==1) n<=2;
            end
            else if((CounterY>=900)&&(CounterY<945))
            begin
                if(game20[2]==1) n<=2;
            end
            else if((CounterY>=945)&&(CounterY<990))
            begin
                if(game21[2]==1) n<=2;
            end
            else if((CounterY>=990)&&(CounterY<1035))
            begin
                if(game22[2]==1) n<=2;
            end
            else if((CounterY>=1035)&&(CounterY<1080))
            begin
                if(game23[2]==1) n<=2;
            end
        end
        else if((CounterX>=(1170))&&(CounterX<(1215)))
        begin
            if((CounterY>=0)&&(CounterY<45))
            begin
                if(game0[1]==1) n<=2;
            end
            else if((CounterY>=45)&&(CounterY<90))
            begin
                if(game1[1]==1) n<=2;
            end
            else if((CounterY>=90)&&(CounterY<135))
            begin
                if(game2[1]==1) n<=2;
            end
            else if((CounterY>=135)&&(CounterY<180))
            begin
                if(game3[1]==1) n<=2;
            end
            else if((CounterY>=180)&&(CounterY<225))
            begin
                if(game4[1]==1) n<=2;
            end
            else if((CounterY>=225)&&(CounterY<270))
            begin
                if(game5[1]==1) n<=2;
            end
            else if((CounterY>=270)&&(CounterY<315))
            begin
                if(game6[1]==1) n<=2;
            end
            else if((CounterY>=315)&&(CounterY<360))
            begin
                if(game7[1]==1) n<=2;
            end
            else if((CounterY>=360)&&(CounterY<405))
            begin
                if(game8[1]==1) n<=2;
            end
            else if((CounterY>=405)&&(CounterY<450))
            begin
                if(game9[1]==1) n<=2;
            end
            else if((CounterY>=450)&&(CounterY<495))
            begin
                if(game10[1]==1) n<=2;
            end
            else if((CounterY>=495)&&(CounterY<540))
            begin
                if(game11[1]==1) n<=2;
            end
            else if((CounterY>=540)&&(CounterY<585))
            begin
                if(game12[1]==1) n<=2;
            end
            else if((CounterY>=585)&&(CounterY<630))
            begin
                if(game13[1]==1) n<=2;
            end
            else if((CounterY>=630)&&(CounterY<675))
            begin
                if(game14[1]==1) n<=2;
            end
            else if((CounterY>=675)&&(CounterY<720))
            begin
                if(game15[1]==1) n<=2;
            end
            else if((CounterY>=720)&&(CounterY<765))
            begin
                if(game16[1]==1) n<=2;
            end
            else if((CounterY>=765)&&(CounterY<810))
            begin
                if(game17[1]==1) n<=2;
            end
            else if((CounterY>=810)&&(CounterY<855))
            begin
                if(game18[1]==1) n<=2;
            end
            else if((CounterY>=855)&&(CounterY<900))
            begin
                if(game19[1]==1) n<=2;
            end
            else if((CounterY>=900)&&(CounterY<945))
            begin
                if(game20[1]==1) n<=2;
            end
            else if((CounterY>=945)&&(CounterY<990))
            begin
                if(game21[1]==1) n<=2;
            end
            else if((CounterY>=990)&&(CounterY<1035))
            begin
                if(game22[1]==1) n<=2;
            end
            else if((CounterY>=1035)&&(CounterY<1080))
            begin
                if(game23[1]==1) n<=2;
            end
        end
        else if((CounterX>=(1215))&&(CounterX<(1260)))
        begin
            if((CounterY>=0)&&(CounterY<45))
            begin
                if(game0[0]==1) n<=2;
            end
            else if((CounterY>=45)&&(CounterY<90))
            begin
                if(game1[0]==1) n<=2;
            end
            else if((CounterY>=90)&&(CounterY<135))
            begin
                if(game2[0]==1) n<=2;
            end
            else if((CounterY>=135)&&(CounterY<180))
            begin
                if(game3[0]==1) n<=2;
            end
            else if((CounterY>=180)&&(CounterY<225))
            begin
                if(game4[0]==1) n<=2;
            end
            else if((CounterY>=225)&&(CounterY<270))
            begin
                if(game5[0]==1) n<=2;
            end
            else if((CounterY>=270)&&(CounterY<315))
            begin
                if(game6[0]==1) n<=2;
            end
            else if((CounterY>=315)&&(CounterY<360))
            begin
                if(game7[0]==1) n<=2;
            end
            else if((CounterY>=360)&&(CounterY<405))
            begin
                if(game8[0]==1) n<=2;
            end
            else if((CounterY>=405)&&(CounterY<450))
            begin
                if(game9[0]==1) n<=2;
            end
            else if((CounterY>=450)&&(CounterY<495))
            begin
                if(game10[0]==1) n<=2;
            end
            else if((CounterY>=495)&&(CounterY<540))
            begin
                if(game11[0]==1) n<=2;
            end
            else if((CounterY>=540)&&(CounterY<585))
            begin
                if(game12[0]==1) n<=2;
            end
            else if((CounterY>=585)&&(CounterY<630))
            begin
                if(game13[0]==1) n<=2;
            end
            else if((CounterY>=630)&&(CounterY<675))
            begin
                if(game14[0]==1) n<=2;
            end
            else if((CounterY>=675)&&(CounterY<720))
            begin
                if(game15[0]==1) n<=2;
            end
            else if((CounterY>=720)&&(CounterY<765))
            begin
                if(game16[0]==1) n<=2;
            end
            else if((CounterY>=765)&&(CounterY<810))
            begin
                if(game17[0]==1) n<=2;
            end
            else if((CounterY>=810)&&(CounterY<855))
            begin
                if(game18[0]==1) n<=2;
            end
            else if((CounterY>=855)&&(CounterY<900))
            begin
                if(game19[0]==1) n<=2;
            end
            else if((CounterY>=900)&&(CounterY<945))
            begin
                if(game20[0]==1) n<=2;
            end
            else if((CounterY>=945)&&(CounterY<990))
            begin
                if(game21[0]==1) n<=2;
            end
            else if((CounterY>=990)&&(CounterY<1035))
            begin
                if(game22[0]==1) n<=2;
            end
            else if((CounterY>=1035)&&(CounterY<1080))
            begin
                if(game23[0]==1) n<=2;
            end
        end
        case(n)
        0:rgb<=rgb3;
        1:rgb<=rgb1;
        2:rgb<=rgb2;
        endcase
    end
endmodule