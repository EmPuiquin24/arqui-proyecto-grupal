`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2026 12:39:48 PM
// Design Name: 
// Module Name: mux81
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

module mux81(
        input wire [7:0] in,
        input wire [2:0] sel,
        output wire f
    );
    
    assign f = in[sel];
endmodule
