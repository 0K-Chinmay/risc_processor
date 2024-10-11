`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2024 22:25:02
// Design Name: 
// Module Name: instM
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 21:28:58
// Design Name: 
// Module Name: prgC
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


module instrM(clk,rst,regout,memout,showout);
input clk,rst;
output [31:0]regout,memout;
input showout;

reg [31:0]instructionsReg[7:0];
reg [31:0]instruction;
initial begin
    instructionsReg[0]=32'b000000000011_00001_110_00010_0010011;
    instructionsReg[1]=32'b0000000_00001_00010_111_00011_1100111;
    //its in the rs2 and rs1 format where rs1 is the address where rs2 is stored in
end
always@(posedge clk) begin
   instruction=instructionsReg[0];
end
instrD u2(
.clk(clk),
.rst(rst),
.instr(instruction),
.regout(regout),
.memout(memout),
.showout(showout)
);
endmodule

