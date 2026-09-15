`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2026 07:41:54 PM
// Design Name: 
// Module Name: alu_adaptado
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

// Pregunta 2: Alu adaptado a 5 bits
module alu_adaptado(
        input wire [4:0] a, b,
        input wire [1:0] ALUControl,
        output reg [4:0] Result,
        output wire [3:0] ALUFlags
    );
    
    wire neg, zero, carry, overflow;
    wire [4:0] condinvb;
    wire [4:0] sum;
    wire sum_cout;
    
    assign condinvb = ALUControl[0] ? ~b : b;
    assign  {sum_cout, sum} = a + condinvb + ALUControl[0];
    
    // AluFlags
    assign neg = Result[4];
    assign zero = (Result == 5'b0);
    assign carry = (ALUControl[1] == 1'b0) & (sum_cout);
    assign overflow = (ALUControl[1] == 1'b0) &
                        ~(a[4] ^ b[4] ^ ALUControl[0]) &
                            (a[4] ^ sum[4]);
    assign ALUFlags = {neg, zero, carry, overflow};
    
    always @(*) begin
            casex (ALUControl[1:0])
                2'b0?: Result = sum;
                2'b10: Result = a & b;
                2'b11: Result = a | b;
                default: Result = 32'bx;
            endcase 
    end
endmodule

