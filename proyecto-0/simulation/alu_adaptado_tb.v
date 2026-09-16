`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2026 08:04:04 PM
// Design Name: 
// Module Name: alu_adaptado_tb
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

// Pregunta 2: Testbench
module alu_adaptado_tb;
    reg [4:0] a, b;
    reg [1:0] ALUControl;
    wire [4:0] Result;
    wire [3:0] ALUFlags; 
    
    alu_adaptado test(.a(a), .b(b), .ALUControl(ALUControl), .Result(Result), .ALUFlags(ALUFlags));
    
    initial begin 
        // Suma 3 + 5 
        a = 5'b00011; b = 5'b00101; ALUControl = 2'b00; #20
        
        // Resta 5 - 5
        a = 5'b00101; b = 5'b00101; ALUControl = 2'b01; #20
        
        // And 8 y 1
        a = 5'b01000; b = 5'h00001; ALUControl = 2'b10; #20
        
        // Or 5 o 7
        a = 5'b00101; b = 5'b00111; ALUControl = 2'b11; #20
        a = 5'b00101; b = 5'b00111; ALUControl = 2'b11; #20
        $finish();
    end
endmodule

