///----------MAC---------------///


module mac(input clk,rst,input [15:0] x,y,output [31:0]acc);
wire[31:0] w1,x1;
reg [15:0] in1,in2;
always@(posedge clk)
begin
in1<=x;in2<=y;
 if(rst)begin in1<=16'd0;in2<=16'd0;end
end
vm16bit v01(in1,in2,w1);
assign acc=w1+x1;
pipo p1(acc,clk,rst,x1);
endmodule
