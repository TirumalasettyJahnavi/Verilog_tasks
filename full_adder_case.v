`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2024 19:51:15
// Design Name: 
// Module Name: full_adder_case
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


module full_adder_case(a,b,cin,sum,ca);
input a,b,cin;
output reg sum,ca;
always@* begin
case({a,b,cin})
3'b000:begin sum=0;ca=0;end
3'b001:begin sum=1;ca=0;end
3'b010:begin sum=1;ca=0;end
3'b011:begin sum=0;ca=1;end 
3'b100:begin sum=1;ca=0;end
3'b101:begin sum=0;ca=1;end
3'b110:begin sum=0;ca=1;end
default:begin sum=1;ca=1;end
endcase
end



endmodule
