`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2024 22:53:13
// Design Name: 
// Module Name: regFile
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


module regFile(clk,rst, wr_addr1,rd_addr1,rd_addr2,reg_wr,wr_din,rd_dat1,rd_dat2);

input clk;
input rst;
input [4:0]wr_addr1;
input [4:0]rd_addr1;
input [4:0]rd_addr2;
input wire [31:0] wr_din;
input reg_wr;
output wire [31:0] rd_dat1;
output wire [31:0] rd_dat2;

reg [31:0] ram [15:0];
reg [31:0] tempa,tempb;
  
reg[4:0] i;

initial begin
   for (i=0;i<16;i=i+1) begin
       ram[i]=0;
   end
   ram[2]=2;
   ram[1]=1; 
end
assign rd_dat1=tempa;
assign rd_dat2=tempb;

always@(*) begin
   if(rst) begin
      tempa<=0;
      tempb<=0;
   end else begin
      if(reg_wr) begin
          ram[wr_addr1]<=wr_din;
      end
      $display("%d",rd_addr2);
      tempa<=ram[rd_addr1];
      tempb<=ram[rd_addr2];
   end
end

endmodule
