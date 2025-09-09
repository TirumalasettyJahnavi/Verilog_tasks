

module decoder(input a,b,output reg o1,o2,o3,o4);
always@* begin
case({a,b})
2'b00: begin o1=1;o2=0;o3=0;o4=0;end
2'b00: begin o1=0;o2=1;o3=0;o4=0;end
2'b00: begin o1=0;o2=0;o3=1;o4=0;end
2'b00: begin o1=0;o2=0;o3=0;o4=1;end
endcase
end
endmodule
