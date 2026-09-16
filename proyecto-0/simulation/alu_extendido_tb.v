`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2026 07:46:31 PM
// Design Name: 
// Module Name: alu_extendido_tb
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

// Pregunta 3: Testbench
module alu_extendido_tb;
    reg [4:0] a, b;
    reg [2:0] ALUControl;
    wire [4:0] Result;
    wire [3:0] ALUFlags; 
    
    alu_extendido test(.a(a), .b(b), .ALUControl(ALUControl), .Result(Result), .ALUFlags(ALUFlags));
    
    initial begin 
        // Suma 3 + 5 
        a = 5'b00011; b = 5'b00101; ALUControl = 3'b000; #20
        
        // Resta 5 - 5
        a = 5'b00101; b = 5'b00101; ALUControl = 3'b001; #20
        
        // And 8 y 1
        a = 5'b01000; b = 5'h00001; ALUControl = 3'b010; #20
        
        // Or 5 o 7
        a = 5'b00101; b = 5'b00111; ALUControl = 3'b011; #20
        
        // Xor 9 xor 6
        a = 5'b01001; b = 5'b00110; ALUControl = 3'b100; #20
        
        // Prueba de error (operación no válida)
        a = 5'b01001; b = 5'b00110; ALUControl = 3'b110; #20
        a = 5'b01001; b = 5'b00110; ALUControl = 3'b110;
        $finish();
    end
endmodule

