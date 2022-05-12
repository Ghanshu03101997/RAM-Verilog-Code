`timescale 1ns / 1ps


module test_bench(

    );
    reg [7:0]data_in;
    reg [5:0]write_addr;
    reg we,clk;
    wire [7:0]data_out;
     RAM_single_port1 GH1(data_out,data_in,write_addr,we,clk);
     initial begin
     clk=0; we=0;
     #10 clk=1; we=1; data_in=3; write_addr=0; 
     #30 data_in=7; write_addr=1;
     end
     always # 5 clk=~clk;
     endmodule
    
