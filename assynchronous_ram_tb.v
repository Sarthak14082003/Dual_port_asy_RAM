`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:35:51 07/16/2023
// Design Name:   assynchronous_ram
// Module Name:   C:/.Xilinx/My projects/dual_port_assynchronous_ram/assynchronous_ram_tb.v
// Project Name:  dual_port_assynchronous_ram
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: assynchronous_ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module assynchronous_ram_tb;

	// Inputs
	reg clk_rd;
	reg clk_wr;
	reg [7:0] data_in;
	reg rd_en;
	reg wr_en;
	reg [7:0] ram_add;
	reg rst;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	assynchronous_ram uut (
		.clk_rd(clk_rd), 
		.clk_wr(clk_wr), 
		.data_in(data_in), 
		.data_out(data_out), 
		.rd_en(rd_en), 
		.wr_en(wr_en), 
		.ram_add(ram_add), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk_rd = 0;clk_wr = 0;data_in = 0;rd_en = 0;wr_en = 0;ram_add = 0;rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clk_rd = 0;clk_wr = 1;data_in = 8'b11111111;rd_en = 0;wr_en = 0;ram_add = 1;rst = 0;
		#100 clk_rd = 1;clk_wr = 0;data_in = 8'b11111111;rd_en = 1;wr_en = 0;ram_add = 1;rst = 0;
		#100 clk_rd = 0;clk_wr = 1;data_in = 8'b11111111;rd_en = 0;wr_en = 1;ram_add = 1;rst = 0;
		#100 clk_rd = 1;clk_wr = 0;data_in = 8'b11111111;rd_en = 1;wr_en = 0;ram_add = 1;rst = 0;

	end
      
endmodule

