module mux(i0,i1,s,out);
input i0,i1,s;
output reg out;
always@ *begin
case(s)
1'b0:begin out=i0;end
1'b1:begin out=i1;end
endcase
end
endmodule

module mux8x1(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,out);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
output out;
wire w1,w2,w3,w4,w5,w6;
mux mux1(.i0(i0),.i1(i1),.s(s0),.out(w1));
mux mux2(.i0(i2),.i1(i3),.s(s0),.out(w2));
mux mux3(.i0(i4),.i1(i5),.s(s0),.out(w3));
mux mux4(.i0(i6),.i1(i7),.s(s0),.out(w4));
mux mux5(.i0(w1),.i1(w2),.s(s1),.out(w5));
mux mux6(.i0(w3),.i1(w4),.s(s1),.out(w6));
mux mux7(.i0(w5),.i1(w6),.s(s2),.out(out));
endmodule

