module assynchronous_ram(clk_rd,clk_wr,data_in,data_out,rd_en,wr_en,ram_add,rst
    );
input clk_rd,clk_wr,wr_en,rd_en,rst;
input [7:0]data_in;
input [7:0]ram_add;
output reg [7:0]data_out;
reg [7:0]ram[0:127];
reg [7:0]i;

always@(posedge clk_wr)
begin
	i=0;
	   if(rst)
		begin
		for(i=0;i<128;i=i+1)
		begin
		ram[i]=0;
		end
		end
	else if(wr_en==1)
		ram[ram_add]=data_in;
end

always@(posedge clk_rd)
begin
	if(rd_en==1)
	data_out=ram[ram_add];
end
endmodule
