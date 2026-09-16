`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 12:12:50 PM
// Design Name: 
// Module Name: shift
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
module shift(
        input wire [4:0] A, 
        input wire [1:0] bshift,
        output wire [4:0] A_desplazado
    );
    
    assign A_desplazado = A << bshift; 
endmodule

