`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2026 06:35:59 PM
// Design Name: 
// Module Name: alu_tb
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

// Pregunta 1: Testbench
module alu_tb;
    reg [31:0] a, b;
    reg [1:0] ALUControl;
    wire [31:0] Result;
    wire [3:0] ALUFlags; 
    
    alu test(.a(a), .b(b), .ALUControl(ALUControl), .Result(Result), .ALUFlags(ALUFlags));
    
    initial begin 
        // Suma 3 + 5 
        a = 32'h3; b = 32'h5; ALUControl = 2'b00; #20
        
        // Resta 5 - 5
        a = 32'h5; b = 32'h5; ALUControl = 2'b01; #20
        
        // And 8 y 1
        a = 32'h8; b = 32'h1; ALUControl = 2'b10; #20
        
        // Or 5 o 7
        a = 32'h5; b = 32'h7; ALUControl = 2'b11; #20
        a = 32'h5; b = 32'h7; ALUControl = 2'b11;
        $finish();
    end 
endmodule

