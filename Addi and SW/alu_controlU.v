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


module alu_controlU(alucode,fn1);
 
output reg [3:0] alucode;
input [2:0]fn1;

wire [6:0]opcode;

always@(*) begin
    case (fn1) 
       5'b110:begin
          alucode=4'b0001;
       end
       5'b111:begin
          alucode=4'b0001;
       end
    endcase
    end

endmodule