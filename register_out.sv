`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 09:50:43
// Design Name: 
// Module Name: register_out
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


module register_out #(
  parameter NumRegs    = 16,
  parameter IndexWidth = $clog2(NumRegs)
) (
  input  logic [IndexWidth-1:0] writeAddr,
  input  logic [7:0] writeData
);
 logic [7:0] regs[NumRegs];
 always@(writeData) 
 begin 
     $display("%b",writeData);
      regs[writeAddr] <= writeData;
  end
endmodule