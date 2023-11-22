`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2023 20:10:55
// Design Name: 
// Module Name: Control_unit
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


module Control_unit(pc,instruction,op,out);
input logic [2:0]pc;
input logic[3:0]op;
input logic [15:0]instruction[7:0];
logic [3:0]A_add,B_add,writeAddr;
logic [7:0]Rdata1,Rdata2,WData;
logic mem_W,mem_R,alu_op;
output logic [7:0]out;
always@(pc) begin
if(op == 4'b0001)begin
    mem_W=1;mem_R=0;alu_op=1;
    A_add=instruction[pc][11:8];
    WData=instruction[pc][7:0];
    end
else begin
    mem_W=0;mem_R=1;alu_op=0;
    writeAddr=instruction[pc][15:12];
    A_add=instruction[pc][11:8];
    B_add=instruction[pc][7:4];
    end
 end   
Registers u1(.pc(pc),.mem_W(mem_W),.mem_R(mem_R),.alu_op(alu_op),
.writeAddr(A_add), .writeData(WData), .readAddr1(A_add),
  .readAddr2(B_add) , .readData1(Rdata1) ,.readData2(Rdata2));
ALU u0(.pc(pc),.writeAddr(writeAddr),.mem_R(mem_R),.mem_W(mem_W)
,.A(Rdata1),.B(Rdata2),.op(op),.out(out));
endmodule