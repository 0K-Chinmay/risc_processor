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


module memory(clk,rst, wr_addr,rd_addr,reg_wr,wr_din,rd_dat);

input clk;
input rst;
input [4:0]wr_addr;
input [4:0]rd_addr;
input wire [31:0] wr_din;
input reg_wr;
output wire [31:0] rd_dat;

reg [31:0] ram [15:0];
reg [31:0] tempa,tempb;
  
reg[4:0] i;

initial begin
   for (i=0;i<16;i=i+1) begin
       ram[i]=0;
   end 
   
end
assign rd_dat=tempa;

always@(clk) begin
   if(rst) begin
      tempa<=0;
      tempb<=0;
   end else begin
      if(reg_wr) begin
          ram[wr_addr]<=wr_din;
      end
    
      tempa<=ram[rd_addr];
   end
end

endmodule
