module digital_clock_12(input clk,output reg [3:0] s0,s1,m0,m1,h0,h1);

initial begin
s0<=0;s1<=0;m0<=0;m1<=0;h0<=0;h1<=0;
end
always @(posedge clk) begin
if(s0==9 && s1==5 && m0==9 && m1==5 && h0==1 && h1==1)begin
  s0<=0;s1<=0;m0<=0;m1<=0;h0<=0;h1<=0;
end else begin
s0<=s0+1;
if(s0==9) begin
   s1<=s1+1;
   s0<=0;
   if(s1==5) begin
      m0<=m0+1;
      s0<=0;s1<=0;
      if(m0==9)begin
         m1<=m1+1;
         m0<=0;s0<=0;s1<=0;
         if(m1==5)begin
           h0<=h0+1;
           m1<=0;m0<=0;s0<=0;s1<=0;
           if(h0==9) begin
              h1<=h1+1;
              s0<=0;s1<=0;m0<=0;m1<=0;h0<=0;
              if(h0==1 && h1==1) begin
                s0<=0;s1<=0;m0<=0;m1<=0;h0<=0;
end
end
end
end
end
end
end  
end            
endmodule
