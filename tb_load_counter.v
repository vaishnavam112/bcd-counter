`timescale 1ns / 1ps
module tb_load_counter( );
reg clk, arst;
reg load;
wire [3:0]count;

load_counter cntr(.clk(clk), .arst(arst), .load(load),.count(count));

always #5 clk= ~clk;

initial
begin
clk=0;
arst=1;
load=1'b0;
#15
arst=0;
#50
load=1'b1;
#17
load=1'b0;
#25
load=1'b1;
#20
load=1'b0;
#170
$finish;

end
endmodule
