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
        // -----------------------
        // Operaciones Aritméticas
        // -----------------------
        
        // Suma 15 + 10 
        a = 32'hF; b = 32'hA; ALUControl = 2'b00; #20
        
        // Suma máximo número de 32 bits consigo mismo, genera overflow
        a = 32'h7FFFFFFF; b = 32'h7FFFFFFF; ALUControl = 2'b00; #20
        
        // Resta 15 - 10 (activa carry al invertir 10)
        a = 32'hF; b = 32'hA; ALUControl = 2'b01; #20
        
        // Resta 10 - 15 sin carry pero activa flag  neg
        a = 32'hA; b = 32'hF; ALUControl = 2'b01; #20
        
        // Resta 15 - 15 activa flag Zero
        a = 32'hF; b = 32'hF; ALUControl = 2'b01; #20
        
        
        // -----------------------
        // Operaciones Lógicas
        // -----------------------
  
        // And: 
        a = 32'hFFFF0000; b = 32'h00FFFF00; ALUControl = 2'b10; #20 
        // Or: 
        a = 32'hFFFF0000; b = 32'h00FFFF00; ALUControl = 2'b11; #20 
        a = 32'hFFFF0000; b = 32'h00FFFF00; ALUControl = 2'b11;
        $finish();
    end 
endmodule

