//-----------------PIPO--------------------//

module pipo(input[31:0]rin,input clk,rst,output reg [31:0]rout);
always@(posedge clk )
 begin
  if(rst) rout<=31'd0;
  else rout<=rin;
 end
endmodule
