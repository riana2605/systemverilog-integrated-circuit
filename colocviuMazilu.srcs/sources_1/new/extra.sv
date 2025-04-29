`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 01:10:24 PM
// Design Name: 
// Module Name: extra
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


module comp2x4biti
(
input logic [3:0] in0,
input logic [3:0] in1,
output logic [3:0] rez0,
output logic eq
    );
    
always_comb 
begin 
    if(in0  > in1)
        begin
    rez0 = in0;
    eq =0;
        end
else 
begin 
    if(in1 > in0)
        begin
     rez0 = in1;
    eq = 0;
        end
else 
        begin
    rez0 =in0;
    eq=1; 
    end
        end
    end
endmodule

module display(
  input logic [3:0] rez,
  output logic [6:0] afisaj
  );

  always_comb begin
    case(rez)
      4'd0: afisaj = 7'b1000000;
      4'd1: afisaj = 7'b1111001;
      4'd2: afisaj = 7'b0100100;
      4'd3: afisaj= 7'b0110000;
      4'd4: afisaj= 7'b0011001;
      4'd5: afisaj= 7'b0010010;
      4'd6: afisaj= 7'b0000010;
      4'd7: afisaj= 7'b1111000;
      4'd8: afisaj= 7'b0000000;
      4'd9: afisaj= 7'b0011000;
      4'd10: afisaj= 7'b0001000;
      4'd11: afisaj= 7'b0000011;
      4'd12: afisaj= 7'b1000110;
      4'd13: afisaj= 7'b0100001;
      4'd14: afisaj= 7'b0000110;
      4'd15: afisaj= 7'b0001110;
      default: afisaj= 7'b0000110;
    endcase 
  end
endmodule

module demux(
input logic [7:0] afisaj,
input logic sel,
output logic [7:0] afisaj_st,
output logic [7:0] afisaj_dr
);
always_comb 
begin
case(sel)
1: begin 
 afisaj_dr = afisaj;
afisaj_st = 0;
end
0: begin 
afisaj_dr = 0;
 afisaj_st = afisaj;
end
default :begin 
 afisaj_dr = 0;
afisaj_st = 0;
afisaj_st = 0;
end
endcase
end
endmodule
 
