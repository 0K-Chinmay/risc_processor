`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 15:34:43
// Design Name: 
// Module Name: Prg_C
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


module Prg_C(clk,rst,pc,out);
input logic clk,rst;
output logic [2:0]pc;
output logic [7:0]out;
logic [3:0]op;
logic [7:0]WData;
logic [15:0]instruction[7:0];
integer fd;
assign fd = $fopen("Good.txt", "r");
assign pc=0;
always_ff@(posedge clk)
begin
if(~$feof(fd))
begin
$fscanf(fd,"%b",instruction[pc]);
op<=instruction[pc][15:12];
pc<=pc+1;
end
end
Control_unit u1(pc-1,instruction,op,out);
endmodule