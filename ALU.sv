`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 19:03:53
// Design Name: 
// Module Name: ALU
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



  /*Add,0010
  Sub,0011
  LeftShift,0100
  RightShiftArith,0101
  RightShiftLogic,0110
  And,0111
  Or,1000
  Xor,1001
  Equal 1010*/


module ALU (
  input logic pc,
  input logic [3:0]writeAddr,
  input logic mem_R,
  input logic mem_W,
  input logic [7:0]A,
  input logic [7:0]B,
  input logic [3:0]op,
  output logic [7:0] out
);
always@(A,B,op)
    case (op)
      4'b0010: out = A + B;
      4'b0011: out = A - B;
      4'b0100: out = A << B;
      4'b0101: out = A >> B;
      4'b0110: out = A & B;
      4'b0111: out = A | B;
      4'b1000: out = A ^ B;
      4'b1001: out = (A == B) ? 1'b1 : 1'b0;
      default: out = 1'b0;
     endcase
    register_out u0(writeAddr,out);
endmodule