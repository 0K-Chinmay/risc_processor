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
Prg_C u0(clk,rst,pc,out);
initial begin
   rst=0;
clk=1;#5;
clk=0;#5;
clk=1;#5;
clk=0;#5;
clk=1;#5;
clk=0;#5;
clk=1;#5;
$finish;
end
endmodule