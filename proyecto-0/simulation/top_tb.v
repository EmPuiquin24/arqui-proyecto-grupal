`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 12:45:20 PM
// Design Name: 
// Module Name: top_tb
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

// Pregunta 4: Testbench
module top_tb;
    reg [4:0] A, B;
    reg [1:0] bshift;
    reg [2:0] ALUControl;
    wire [4:0] Result;
    wire [3:0] ALUFlags;
    
    top test(.A(A), .B(B), .bshift(bshift), .ALUControl(ALUControl),
                .Result(Result), .ALUFlags(ALUFlags));
    
    initial begin 
        // Suma 7 + 0 sin shift
        A = 5'b00111; B = 5'b00000; bshift = 2'b00; ALUControl = 2'b00; #20
        // Suma 7 + 0 con shift
        A = 5'b00111; B = 5'b00000; bshift = 2'b10; ALUControl = 2'b00; #20
        A = 5'b00111; B = 5'b00000; bshift = 2'b10; ALUControl = 2'b00;
        $finish();
    end

endmodule

