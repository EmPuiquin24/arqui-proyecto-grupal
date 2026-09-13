`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2026 09:29:03 AM
// Design Name: 
// Module Name: mux21
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

module mux21(
        input wire [1:0] in,
        input wire sel,
        output wire f
    );
    
    assign f = in[sel];
endmodule
