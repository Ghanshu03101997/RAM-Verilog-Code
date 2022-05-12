`timescale 1ns / 1ps


module RAM_single_port1(data_out,data_in,write_addr,we,clk);
input [7:0]data_in;
input we,clk;
output reg[7:0]data_out;
input [5:0]write_addr;
reg [7:0]ram[63:0];
always@(posedge clk)begin
if(we)
 ram[write_addr]<=data_in;
 data_out<=ram[write_addr];
 
 end

endmodule
