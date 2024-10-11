`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2023 19:37:29
// Design Name: 
// Module Name: tb
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


module tb;
logic clk,rst;
logic [2:0]pc;
logic [7:0] out;
logic [3:0]oper;
Prg_C u0(clk,rst,pc,out,oper);
initial begin
//A_add=4'b0000;B_add=4'b0001;op=4'b0010;writeE;
clk=1;#10;
clk=0;#10;
clk=1;#10;
clk=0;#10;
clk=1;#10;
clk=0;#10;
clk=1;#10;
clk=0;#10;
clk=1;#10;
clk=0;#10;
clk=1;#10;
clk=0;#10;
clk=1;#10;
clk=0;#10;
clk=1;#10;
clk=0;#10;
clk=1;#10;
clk=0;#10;
clk=1;#10;
$finish;
end
initial begin
#40;
oper=4'b0010;#20;
oper=4'b0011;#20;
oper=4'b0100;#20;
oper=4'b0101;#20;
$finish;
end
endmodule