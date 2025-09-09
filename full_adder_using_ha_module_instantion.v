module ha(a,b,s,ca);
input a,b;
output s,ca;

assign s=a^b;
assign ca=a &b;

endmodule


module fa(a,b,c,s,ca);
input a,b,c;
output s,ca;
wire w1,w2,w3;
ha h1(.a(a),.b(b),.s(w1),.ca(w2));
ha h2(.a(w1),.b(c),.s(s),.ca(w3));
or o1(ca,w2,w3);
endmodule
