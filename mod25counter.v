module mod25counter(input clk,rst,output reg [4:0]count);



initial
count<=5'b00000;

always@(posedge clk)begin
if (rst)
  count<= 5'b00000;
  
else 
 if (count==5'b11001)
    count<=5'b00000;
    
    else 
    count<=count+1;
    
end
endmodule
