`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2024 22:25:59
// Design Name: 
// Module Name: instrD
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


module instrD(clk,rst,instr,regout,memout,showout);
 
input clk,rst;
input wire [31:0]instr;
output wire [31:0] regout,memout;
input showout;

reg [4:0]writeAddr;
reg [4:0]readAddr1,readAddr2;
wire [31:0]rd_dat1,rd_dat2;
wire [31:0]out;
wire [6:0]opcode;
reg reg_wr;
reg mem_wr;
reg [2:0]fn1;
reg [31:0]immval;

wire [31:0]wr_data;
wire [3:0]aluC;

reg [4:0] memrdAdr;
wire [31:0] memrdDat;

assign opcode=showout?0:instr[6:0];
assign wr_data=out;
//assign memwrAdr=out[4:0];

always@(posedge clk)
    case (opcode) 
       7'b0010011:begin
          mem_wr=0;
          fn1=instr[14:12];
          readAddr1=instr[19:15];
          immval={20'b0,instr[31:20]};
          reg_wr=1;
          writeAddr=instr[11:7];  
       end
       7'b1100111: begin
          reg_wr=0;
          mem_wr=1;
          immval={20'b0,instr[31:23],instr[11:7]};
          readAddr1=instr[19:15];
          readAddr2=instr[24:20];
          fn1=instr[14:12];
       end
       default:begin 
       $display("goo goo");
       end
    endcase

    reg [3:0]k=0;
   
   
    
   always@(clk) begin
      if(showout) begin
         reg_wr=0;
         mem_wr=0;
         memrdAdr =k; 
         readAddr2=k; 
         k=k+1;
      end
   
   end
assign regout=showout?rd_dat2:0;
assign memout=showout?memrdDat:0;

regFile RF1(.clk(clk),.rst(rst), .wr_addr1(writeAddr),.rd_addr1(readAddr1),
.rd_addr2(readAddr2),.reg_wr(reg_wr),.wr_din(out),.rd_dat1(rd_dat1)
,.rd_dat2(rd_dat2));

alu_controlU u2(.alucode(aluC),.fn1(fn1));

alu a2(.a(immval),.b(rd_dat1),.alu_ctrl(aluC),.result(out));

memory m1(.clk(clk),.rst(rst),.wr_addr(out[4:0]),.reg_wr(mem_wr),
.wr_din(rd_dat2),.rd_addr(memrdAdr),.rd_dat(memrdDat));



endmodule