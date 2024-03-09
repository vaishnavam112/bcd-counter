`timescale 1ns / 1ps
module tb_bcd_counter();
   
    reg clk;
    reg rst;
    wire [3:0] q;
    integer fd;

bcd_counter DUT(.clk(clk), .rst(rst), .q(q));
initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

initial begin
    fd=$fopen("my_files","w");
  rst = 1;
  #10 rst = 0;
   $monitor ("T=%0t out=%b", $time, q);
  #150 rst = 1;
 #10 rst = 0;
 #200
 
    $fwrite("fd");
    $fdisplay("Values of the $fmonitor can b e seen here.....");
    $fclose("fd");
 $finish;
 end
 
 initial
    $fmonitor(fd,"time=%0t clk=%0b rst=%0b q=%0b",$time,clk,rst,q);
 
endmodule
