
module counter11bit( input clk,rst,output reg[3:0]count);
initial
count<=4'b0000;

always@(posedge clk)begin
if (rst)
  count<= 4'b0000;
  
else 
 if (count==4'b1011)
    count<=4'b0000;
    
    else 
    count<=count+1;
    
end
endmodule
