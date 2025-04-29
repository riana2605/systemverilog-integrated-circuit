`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 01:04:41 PM
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


module top(
input logic [3:0] r,
input logic [3:0] p,
input logic [3:0] n,
input logic [3:0] m,
output logic [6:0] afisaj_st,
output logic [6:0] afisaj_dr
    );
    
logic [3:0] c, d;
logic eq0, eq1, eq2;
logic [3:0] rez;  

comp2x4biti comp0(
.in0(r),
.in1(p),
.rez0(d),
.eq(eq0)
);

comp2x4biti comp1(
.in0(n),
.in1(m),
.rez0(c),
.eq(eq1)
);

comp2x4biti comp2(
.in0(d),
.in1(c),
.rez0(rez),
.eq(eq2)
);
 
 logic [6:0] afisaj;
display Displ(
.rez(rez),
.afisaj(afisaj)
);

logic sel;
assign sel = eq1 & eq0 & eq2;

demux Dmupliplexor (
.afisaj(afisaj),
.sel(sel),
.afisaj_st(afisaj_st),
.afisaj_dr(afisaj_dr)
);

endmodule

