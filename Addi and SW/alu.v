`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 09:40:08
// Design Name: 
// Module Name: alu
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

module alu (
    input [31:0] a,          
    input [31:0] b,         
    input [3:0] alu_ctrl,    
    output reg [31:0] result
);

    always @(*) begin
        case (alu_ctrl)
         
            4'b0000: result = a-b;              
            4'b0001: begin
            result = a+b;
            end              
            default: result =32'b0;              
        endcase
    end

endmodule

