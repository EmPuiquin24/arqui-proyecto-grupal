`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 11:25:35 AM
// Design Name: 
// Module Name: alu_extendido
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

// Pregunta 3: ALU extendido con XOR
module alu_extendido(
        input wire [4:0] a, b,
        input wire [2:0] ALUControl,
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
    assign carry = (ALUControl[2:1] == 2'b00) & (sum_cout);
    assign overflow = (ALUControl[2:1] == 2'b00) &
                        ~(a[4] ^ b[4] ^ ALUControl[0]) &
                            (a[4] ^ sum[4]);
    assign ALUFlags = {neg, zero, carry, overflow};
    
    always @(*) begin
            casex (ALUControl[2:0])
                3'b00?: Result = sum;
                3'b010: Result = a & b;
                3'b011: Result = a | b;
                3'b100: Result = a ^ b;
                default: Result = 5'bx;
            endcase 
    end
endmodule

