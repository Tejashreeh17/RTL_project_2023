///--------------------testBench------------------///
module tb;
reg clk,rst;
reg [15:0]x,y;
wire [31:0]acc;
always #1 clk=~clk;
mac m1(clk,rst,x,y,acc);
initial begin
clk=1'b1;
$monitor($time," rst=%d x=%0d  y=%0d  acc=%0d",rst,x,y,acc);
#2 rst=1; x=16'd5 ;y=16'd1;
#2 rst=0; x=16'd5 ;y=16'd2;
#2 rst=0; x=16'd5 ;y=16'd3;
#2 rst=1; x=16'd5 ;y=16'd1;
#2 rst=0; x=16'd5 ;y=16'd1;
#2 rst=0; x=16'd5 ;y=16'd3;
#2 rst=0; x=16'd5 ;y=16'd1;
#2 rst=0; x=16'd5 ;y=16'd2;
 $finish;
end
endmodule
