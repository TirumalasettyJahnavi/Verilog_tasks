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

module mux4x1(i0,i1,i2,i3,s0,s1,out);
input i0,i1,i2,i3,s0,s1;
output out;
wire w1,w2,w3;
mux mux1(.i0(i0),.i1(i1),.s(s0),.out(w1));
mux mux2(.i0(i2),.i1(i3),.s(s0),.out(w2));
mux mux3(.i0(w1),.i1(w2),.s(s1),.out(out));

endmodule






