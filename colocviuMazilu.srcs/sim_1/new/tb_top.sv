`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 01:49:58 PM
// Design Name: 
// Module Name: tb_top
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


module tb_top(

    );
    logic [3:0] r;
    logic [3:0] p;
    logic [3:0] n;
    logic [3:0] m;
    logic [6:0] afisaj_st;
    logic [6:0] afisaj_dr;
    top dut(
    .r(r),
    .p(p),
    .n(n),
    .m(m),
    .afisaj_st(afisaj_st),
    .afisaj_dr(afisaj_dr)
    );
       
    initial begin
    m = 4'b0000;
    n = 4'b0000;
    p = 4'b0000;
    r = 4'b0000;
 #1 m = 4'b0100;
 p = 4'b1000;
 #1 n = 4'b1010;
 r = 4'b1001;
 #2 m = 4'b1010;
 p = 4'b1010;
 #1 n = 4'b1101;
 #2 m = 4'b1101;
 p = 4'b1101;
 r = 4'b1101;
 #1
 n=4'b1111;
 #1
 r =4'b0100;
 m = 4'b1011; 
 end
 
 initial 
 #10 $stop();
endmodule
