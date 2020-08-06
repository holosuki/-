`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/08/05 22:36:41
// Design Name: 
// Module Name: game
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


module game(
    input rotate,
    input left,
    input right,
    input clk,//正常时钟信号；
    input clk0,//专门给下落的时钟信号；
    output [239:0] num
);
    reg [9:0]R[23:0];
    reg [4:0] BLOCK=5'd1;
    reg [4:0] m=5'd5;
    reg [5:0] n=6'd5;
    reg [4:0] BLOCK1;
    reg [4:0] m1;
    reg [5:0] n1; 
    reg LMOVE_ABLE=0;
    reg RMOVE_ABLE=0;
    reg DOWN_ABLE=0;
    reg next=0;
    reg [4:0] random=0;
    always@(posedge clk)
    begin
        n1<=n;m1<=m;BLOCK1<=BLOCK;
        random<=random+1;
        if(random==5'd20) random<=0;
        if(next==0)
        begin
            R[23]=0;R[22]=0;R[21]=0;R[20]=0;
            R[19]=0;R[18]=0;R[17]=0;R[16]=0;R[15]=0;R[14]=0;R[13]=0;R[12]=0;R[11]=0;R[10]=0;
            R[9]=0;R[8]=0;R[7]=0;R[6]=0;R[5]=0;R[4]=0;R[3]=0;R[2]=0;R[1]=0;R[0]=0;
        end
            /*case (BLOCK1)
                5'd0: begin R[n1][m1]=0;R[n1][m1+1]=0;R[n1+1][m1]=0;R[n1+1][m1+1]=0;end
                5'd1: begin R[n1-1][m1]=0;R[n1][m1]=0;R[n1+1][m1]=0;R[n1+1][m1+1]=0;end
                5'd2: begin R[n1-1][m1+1]=0;R[n1][m1-1]=0;R[n1][m1]=0;R[n1][m1+1]=0;end
                5'd3: begin R[n1-1][m1-1]=0;R[n1-1][m1]=0;R[n1][m1]=0;R[n1+1][m1]=0;end 
                5'd4: begin R[n1][m1-1]=0;R[n1][m1]=0;R[n1][m1+1]=0;R[n1+1][m1-1]=0;end
                5'd5: begin R[n1-1][m1]=0;R[n1][m1]=0;R[n1+1][m1]=0;R[n1+1][m1-1]=0;end
                5'd6: begin R[n1][m1-1]=0;R[n1][m1]=0;R[n1][m1+1]=0;R[n1+1][m1+1]=0;end
                5'd7: begin R[n1-1][m1]=0;R[n1-1][m1+1]=0;R[n1][m1]=0;R[n1+1][m1]=0;end
                5'd8: begin R[n1-1][m1-1]=0;R[n1][m1-1]=0;R[n1][m1]=0;R[n1][m1+1]=0;end
                5'd9: begin R[n1-1][m1]=0;R[n1][m1]=0;R[n1+1][m1]=0;R[n1+2][m1]=0;end
                5'd10: begin R[n1][m1-1]=0;R[n1][m1]=0;R[n1][m1+1]=0;R[n1][m1+2]=0;end
                5'd11: begin R[n1-1][m1]=0;R[n1][m1-1]=0;R[n1][m1]=0;R[n1][m1+1]=0;end
                5'd12: begin R[n1-1][m1]=0;R[n1][m1-1]=0;R[n1][m1]=0;R[n1+1][m1]=0;end
                5'd13: begin R[n1][m1-1]=0;R[n1][m1]=0;R[n1][m1+1]=0;R[n1+1][m1]=0;end
                5'd14: begin R[n1-1][m1]=0;R[n1][m1]=0;R[n1][m1+1]=0;R[n1+1][m1]=0;end
                5'd15: begin R[n1-1][m1+1]=0;R[n1][m1]=0;R[n1][m1+1]=0;R[n1+1][m1]=0;end
                5'd16: begin R[n1-1][m1-1]=0;R[n1-1][m1]=0;R[n1][m1]=0;R[n1][m1+1]=0;end
                5'd17: begin R[n1-1][m1]=0;R[n1][m1]=0;R[n1][m1+1]=0;R[n1+1][m1+1]=0;end
                5'd18: begin R[n1-1][m1]=0;R[n1-1][m1+1]=0;R[n1][m1-1]=0;R[n1][m1]=0;end
            endcase*/
            if (rotate)
            begin
                case (BLOCK)
                5'd0: BLOCK<=5'd0;
                5'd1: if (m>=1)
                        begin if (!((R[n][m-1])|(R[n][m+1])|(R[n-1][m+1]))) BLOCK<=5'd2;end
                5'd2: if (n<=22)
                        begin if (!((R[n+1][m-1])|(R[n+1][m])|(R[n-1][m]))) BLOCK<=5'd3;end
                5'd3: if (m<=8)
                        begin if (!(R[n][m-1] | R[n][m+1] | R[n+1][m-1])) BLOCK<=5'd4;      end   
                5'd4:    begin if (!((R[n-1][m])|(R[n+1][m])|(R[n+1][m+1]))) BLOCK<=5'd1;end
                5'd5: if (m<=8)
                        begin if (!((R[n][m-1])|(R[n][m+1])|(R[n+1][m+1]))) BLOCK<=5'd6;end
                5'd6:    begin if (!((R[n-1][m])|(R[n-1][m+1])|(R[n-1][m]))) BLOCK<=5'd7;end
                5'd7: if (m>=1)
                        begin if (!((R[n-1][m-1])|(R[n][m-1])|(R[n][m+1]))) BLOCK<=5'd8;end
                5'd8: if (n<=22)
                        begin if (!((R[n-1][m])|(R[n+1][m-1])|(R[n+1][m]))) BLOCK<=5'd5;end
                5'd9: if ((m>=1)&(m<=7))
                        begin if (!((R[n][m-1])|(R[n][m+1])|(R[n][m+2]))) BLOCK<=5'd10;end
                5'd10: if (n<=21)
                        begin if (!((R[n-1][m])|(R[n+1][m])|(R[n+2][m]))) BLOCK<=5'd9;end
                5'd11: if (n<=22)
                        begin if (!(R[n+1][m])) BLOCK<=5'd12;end
                5'd12: if (m<=8)
                        begin if (!(R[n][m+1])) BLOCK<=5'd13;end
                5'd13:    begin if (!(R[n-1][m])) BLOCK<=5'd14;end
                5'd14: if (m>=1)
                        begin if (!(R[n][m-1])) BLOCK<=5'd11;end
                5'd15: if (m>=1)
                        begin if (!((R[n-1][m-1])|(R[n-1][m]))) BLOCK<=5'd16;end
                5'd16: if (n<=22)
                        begin if (!((R[n-1][m+1])|(R[n+1][m]))) BLOCK<=5'd15;end
                5'd17: if (m>=1)
                        begin if (!((R[n-1][m+1])|(R[n][m-1]))) BLOCK<=5'd18;end
                5'd18: if (n<=22)
                        begin if (!((R[n][m+1])|(R[n+1][m+1]))) BLOCK<=5'd17;end
                endcase 
            end
            if (left)
            begin
                case (BLOCK)
                5'd0: if (m>=1) if (!((R[n+1][m-1])|(R[n][m-1]))) LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd1: if (m>=1) if (!((R[n-1][m-1])|(R[n][m-1])|(R[n+1][m-1]))) LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd2: if (m>=2) if (!((R[n][m-1])|(R[n-1][m]))) LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd3: if (m>=2) if (!((R[n-1][m-2])|(R[n][m-1])|(R[n+1][m-1]))) LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd4: if (m>=2) if (!((R[n][m-2])|(R[n+1][m-2]))) LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd5: if (m>=2) if (!((R[n-1][m-1])|(R[n][m-1])|(R[n+1][m-2]))) LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd6: if (m>=2) if (!((R[n][m-2])|(R[n+1][m]))) LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd7: if (m>=1) if (!((R[n-1][m-1])|(R[n][m-1])|(R[n+1][m-1]))) LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd8: if (m>=2) if (!((R[n-1][m-2])|(R[n][m-2]))) LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd9: if (m>=1) if (!((R[n-1][m-1])|(R[n][m-1])|(R[n+1][m-1])|(R[n+2][m-1]))) LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd10: if (m>=2) if (!(R[n][m-2])) LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd11: if (m>=2) if (!((R[n-1][m-1])|(R[n][m-2]))) LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd12: if (m>=2) if (!((R[n-1][m-1])|(R[n][m-2])|(R[n+1][m-1])))    LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd13: if (m>=2) if (!((R[n][m-2])|(R[n+1][m-1]))) LMOVE_ABLE<=1; else   LMOVE_ABLE<=0;
                5'd14: if (m>=1) if (!((R[n-1][m-1])|(R[n][m-1])|(R[n+1][m-1])))    LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd15: if (m>=1) if (!((R[n-1][m])|(R[n][m-1])|(R[n+1][m-1])))  LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd16: if (m>=2) if (!((R[n-1][m-2])|(R[n][m-1]))) LMOVE_ABLE<=1; else   LMOVE_ABLE<=0;
                5'd17: if (m>=1) if (!((R[n-1][m-1])|(R[n][m-1])|(R[n+1][m-1])))    LMOVE_ABLE<=1; else LMOVE_ABLE<=0;
                5'd18: if (m>=2) if (!((R[n-1][m-1])|(R[n][m-2]))) LMOVE_ABLE<=1; else   LMOVE_ABLE<=0;
                default LMOVE_ABLE<=0;
                endcase
            end
            if (right)
            begin
                case (BLOCK)
                5'd0: if (m<=7) if (!((R[n+1][m+2])|(R[n][m+2]))) RMOVE_ABLE<=1; else   RMOVE_ABLE<=0;
                5'd1: if (m<=7) if (!((R[n+1][m+2])|(R[n][m+1])|(R[n-1][m+1])))    RMOVE_ABLE<=1; else RMOVE_ABLE<=0;
                5'd2: if (m<=7) if (!((R[n][m+2])|(R[n+1][m+2]))) RMOVE_ABLE<=1; else   RMOVE_ABLE<=0;
                5'd3: if (m<=8) if (!((R[n-1][m+1])|(R[n][m+1])|(R[n+1][m+1])))    RMOVE_ABLE<=1; else RMOVE_ABLE<=0;
                5'd4: if (m<=7) if (!((R[n][m+2])|(R[n+1][m]))) RMOVE_ABLE<=1; else     RMOVE_ABLE<=0;
                5'd5: if (m<=8) if (!((R[n-1][m+1])|(R[n][m+1])|(R[n+1][m+1])))    RMOVE_ABLE<=1; else RMOVE_ABLE<=0;
                5'd6: if (m<=7) if (!((R[n-1][m+2])|(R[n][m+2]))) RMOVE_ABLE<=1; else   RMOVE_ABLE<=0;
                5'd7: if (m<=7) if (!((R[n-1][m+2])|(R[n][m+1])|(R[n+1][m+1])))    RMOVE_ABLE<=1; else RMOVE_ABLE<=0;
                5'd8: if (m<=7) if (!((R[n-1][m])|(R[n][m+2]))) RMOVE_ABLE<=1; else     RMOVE_ABLE<=0;
                5'd9: if (m<=8) if (!((R[n-1][m+1])|(R[n][m+1])|(R[n+1][m+1])|(R[n+2][m+1]))) RMOVE_ABLE<=1; else RMOVE_ABLE<=0;
                5'd10: if (m<=6) if (!(R[n][m+3])) RMOVE_ABLE<=1; else RMOVE_ABLE<=0;
                5'd11: if (m<=7) if (!((R[n-1][m+1])|(R[n][m+2]))) RMOVE_ABLE<=1; else   RMOVE_ABLE<=0;
                5'd12: if (m<=8) if (!((R[n-1][m+1])|(R[n][m+1])|(R[n+1][m+1])))    RMOVE_ABLE<=1; else RMOVE_ABLE<=0;
                5'd13: if (m<=7) if (!((R[n][m+2])|(R[n+1][m+1]))) RMOVE_ABLE<=1; else   RMOVE_ABLE<=0;
                5'd14: if (m<=7) if (!((R[n-1][m+1])|(R[n][m+2])|(R[n+1][m+1])))    RMOVE_ABLE<=1; else RMOVE_ABLE<=0;
                5'd15: if (m<=7) if (!((R[n-1][m+2])|(R[n][m+2])|(R[n+1][m+1])))    RMOVE_ABLE<=1; else RMOVE_ABLE<=0;
                5'd16: if (m<=7) if (!((R[n-1][m+1])|(R[n][m+2]))) RMOVE_ABLE<=1; else   RMOVE_ABLE<=0;
                5'd17: if (m<=7) if (!((R[n-1][m+1])|(R[n][m+2])|(R[n+1][m+2])))    RMOVE_ABLE<=1; else RMOVE_ABLE<=0;
                5'd18: if (m<=7) if (!((R[n-1][m+2])|(R[n][m+1]))) RMOVE_ABLE<=1; else   RMOVE_ABLE<=0;
                default RMOVE_ABLE<=0;
                endcase
            end
        if(LMOVE_ABLE) begin m<=m-1;LMOVE_ABLE<=0; end
        if(RMOVE_ABLE) begin m<=m+1;RMOVE_ABLE<=0; end
            /*if(clk0)
            begin
                case (BLOCK)
                5'd0: if (n<=21) begin if (!(R[n+2][m] | R[n+2][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd1: if (n<=21) begin if (!(R[n+2][m] | R[n+2][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd2: if (n<=22) begin if (!(R[n+1][m] | R[n+1][m-1] | R[n+1][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd3: if (n<=21) begin if (!(R[n+2][m] | R[n][m-1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd4: if (n<=21) begin if (!(R[n+1][m] | R[n+1][m+1] | R[n+2][m-1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd5: if (n<=21) begin if (!(R[n+2][m] | R[n+2][m-1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd6: if (n<=21) begin if (!(R[n+1][m] | R[n+1][m-1] | R[n+2][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd7: if (n<=21) begin if (!(R[n+2][m] | R[n][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd8: if (n<=22) begin if (!(R[n+1][m] | R[n+1][m-1] | R[n+1][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd9: if (n<=20) begin if (!(R[n+3][m])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd10: if (n<=22) begin if (!(R[n+1][m] | R[n+1][m-1] | R[n+1][m+1] | R[n+1][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd11: if (n<=22) begin if (!(R[n+1][m] | R[n+1][m-1] | R[n+1][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd12: if (n<=21) begin if (!(R[n+2][m] | R[n+1][m-1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd13: if (n<=21) begin if (!(R[n+2][m] | R[n+1][m-1] | R[n+1][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd14: if (n<=21) begin if (!(R[n+2][m] | R[n+1][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd15: if (n<=21) begin if (!(R[n+2][m] | R[n+1][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd16: if (n<=22) begin if (!(R[n+1][m] | R[n][m-1] | R[n+1][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd17: if (n<=21) begin if (!(R[n+1][m] | R[n+2][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                5'd18: if (n<=22) begin if (!(R[n+1][m] | R[n+1][m-1] | R[n][m+1])) DOWN_ABLE<=1; else begin DOWN_ABLE<=0;next<=1;end end
                default DOWN_ABLE<=0;
                endcase
            end
        if(DOWN_ABLE) begin n<=n+1;DOWN_ABLE<=0; end
        if(next) begin BLOCK<=random;n<=6'd5;m<=5'd5;next<=0; end*/
        case (BLOCK)
            5'd0: begin R[n][m]<=1;R[n][m+1]<=1;R[n+1][m]<=1;R[n+1][m+1]<=1;end
            5'd1: begin R[n-1][m]<=1;R[n][m]<=1;R[n+1][m]<=1;R[n+1][m+1]<=1;end
            5'd2: begin R[n-1][m+1]<=1;R[n][m-1]<=1;R[n][m]<=1;R[n][m+1]<=1;end
            5'd3: begin R[n-1][m-1]<=1;R[n-1][m]<=1;R[n][m]<=1;R[n+1][m]<=1;end 
            5'd4: begin R[n][m-1]<=1;R[n][m]<=1;R[n][m+1]<=1;R[n+1][m-1]<=1;end
            5'd5: begin R[n-1][m]<=1;R[n][m]<=1;R[n+1][m]<=1;R[n+1][m-1]<=1;end
            5'd6: begin R[n][m-1]<=1;R[n][m]<=1;R[n][m+1]<=1;R[n+1][m+1]<=1;end
            5'd7: begin R[n-1][m]<=1;R[n-1][m+1]<=1;R[n][m]<=1;R[n+1][m]<=1;end
            5'd8: begin R[n-1][m-1]<=1;R[n][m-1]<=1;R[n][m]<=1;R[n][m+1]<=1;end
            5'd9: begin R[n-1][m]<=1;R[n][m]<=1;R[n+1][m]<=1;R[n+2][m]<=1;end
            5'd10: begin R[n][m-1]<=1;R[n][m]<=1;R[n][m+1]<=1;R[n][m+2]<=1;end
            5'd11: begin R[n-1][m]<=1;R[n][m-1]<=1;R[n][m]<=1;R[n][m+1]<=1;end
            5'd12: begin R[n-1][m]<=1;R[n][m-1]<=1;R[n][m]<=1;R[n+1][m]<=1;end
            5'd13: begin R[n][m-1]<=1;R[n][m]<=1;R[n][m+1]<=1;R[n+1][m]<=1;end
            5'd14: begin R[n-1][m]<=1;R[n][m]<=1;R[n][m+1]<=1;R[n+1][m]<=1;end
            5'd15: begin R[n-1][m+1]<=1;R[n][m]<=1;R[n][m+1]<=1;R[n+1][m]<=1;end
            5'd16: begin R[n-1][m-1]<=1;R[n-1][m]<=1;R[n][m]<=1;R[n][m+1]<=1;end
            5'd17: begin R[n-1][m]<=1;R[n][m]<=1;R[n][m+1]<=1;R[n+1][m+1]<=1;end
            5'd18: begin R[n-1][m]<=1;R[n-1][m+1]<=1;R[n][m-1]<=1;R[n][m]<=1;end
        endcase
    end

    assign num={R[23],R[22],R[21],R[20],R[19],R[18],R[17],R[16],R[15],R[14],R[13],R[12],R[11],R[10],R[9],R[8],R[7],R[6],R[5],R[4],R[3],R[2],R[1],R[0]};
endmodule
