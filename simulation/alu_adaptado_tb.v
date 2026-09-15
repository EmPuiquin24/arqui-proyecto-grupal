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
        // -----------------------
        // Operaciones Aritméticas
        // -----------------------
        
        // Suma 15 + 10
        a = 5'b01111; b = 5'b01010; ALUControl = 2'b00; #20;
        
        // Suma máximo número de 5 bits consigo mismo, genera overflow
        a = 5'b01111; b = 5'b01111; ALUControl = 2'b00; #20;
        
        // Resta 15 - 10 (activa carry al invertir 10)
        a = 5'b01111; b = 5'b01010; ALUControl = 2'b01; #20;
        
        // Resta 10 - 15 sin carry pero activa flag neg
        a = 5'b01010; b = 5'b01111; ALUControl = 2'b01; #20;
        
        // Resta 15 - 15 activa flag Zero
        a = 5'b01111; b = 5'b01111; ALUControl = 2'b01; #20;
        
        
        // -----------------------
        // Operaciones Lógicas
        // -----------------------
        
        // And:
        a = 5'b11000; b = 5'b01100; ALUControl = 2'b10; #20; 
        
        // Or: 
        a = 5'b11000; b = 5'b01100; ALUControl = 2'b11; #20; 
        a = 5'b11000; b = 5'b01100; ALUControl = 2'b11;
        
        $finish();
    end
endmodule

