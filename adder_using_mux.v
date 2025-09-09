module mux4x1(i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3,s0,s1;
output reg y;
always@ * begin
case({s0,s1})
2'b00:begin y=i0;end
2'b01:begin y=i1;end
2'b10:begin y=i2;end
2'b11:begin y=i3;end
endcase
end
endmodule




module full_adder(a,b,c,s,ca);
input a,b,c;
output s,ca;
mux4x1 m1(c,~c,~c,c,b,a,s);
mux4x1 m2(0,c,~c,1,b,a,ca);
endmodule