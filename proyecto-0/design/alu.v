`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2026 11:31:30 PM
// Design Name: 
// Module Name: alu
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

// Pregunta 1: Alu
module alu(
        input wire [31:0] a, b,
        input wire [1:0] ALUControl,
        output reg [31:0] Result,
        output wire [3:0] ALUFlags
    );
    
    wire neg, zero, carry, overflow;
    wire [31:0] condinvb;
    wire [31:0] sum;
    wire sum_cout;
    
    assign condinvb = ALUControl[0] ? ~b : b;
    assign  {sum_cout, sum} = a + condinvb + ALUControl[0];
    
    // AluFlags
    assign neg = Result[31];
    assign zero = (Result == 32'b0);
    assign carry = (ALUControl[1] == 1'b0) & (sum_cout);
    assign overflow = (ALUControl[1] == 1'b0) &
                        ~(a[31] ^ b[31] ^ ALUControl[0]) &
                            (a[31] ^ sum[31]);
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

