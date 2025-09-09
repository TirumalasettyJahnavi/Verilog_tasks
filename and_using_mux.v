module mux(a,b,y);
input a,b;
output reg y;
always@*begin
case(a)
1'b0:begin y=0;end
1'b1:begin y=b;end
endcase
end
endmodule