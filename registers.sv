`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 19:00:11
// Design Name: 
// Module Name: registers
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


module Registers #(
  parameter NumRegs    = 16,
  parameter IndexWidth = $clog2(NumRegs)
) (
  input logic [2:0]pc,
  input logic mem_W,input logic mem_R,
  input logic alu_op,
  input  logic [IndexWidth-1:0] writeAddr,
  input  logic [7:0] writeData,
  input  logic [IndexWidth-1:0] readAddr1,
  input  logic [IndexWidth-1:0] readAddr2,
  output logic [7:0] readData1,
  output logic [7:0] readData2
);
 logic [7:0] regs[NumRegs];
 always@(pc) begin
    if (mem_W && alu_op) 
    begin
      regs[writeAddr] <= writeData;
    end
    if(mem_R && ~alu_op) 
    begin
    readData1 = regs[readAddr1];
    readData2 = regs[readAddr2];
    end
  end 
endmodule