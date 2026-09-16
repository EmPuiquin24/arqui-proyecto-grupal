`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 12:27:11 PM
// Design Name: 
// Module Name: top
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

// Pregunta 4: Modulo top y shift
module top(
        input wire [4:0] A, B,
        input wire [1:0] bshift,
        input wire [2:0] ALUControl,
        output wire [4:0] Result,
        output wire [3:0] ALUFlags
    );
    
    wire [4:0] A_desplazado;
    shift caja0(.A(A), .bshift(bshift), .A_desplazado(A_desplazado));
    alu_extendido caja1(.a(A_desplazado), .b(B), .ALUControl(ALUControl), .Result(Result), .ALUFlags(ALUFlags));
endmodule

