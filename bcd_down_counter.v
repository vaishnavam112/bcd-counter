`timescale 1ns / 1ps

module bcd_down_counter(
    input clk, rst, 
    output reg [3:0] q
    );
reg [3:0] tmp;
always @ (posedge clk) begin
  if (rst) 
  begin
    tmp <= 4'b1111;
    q <= 4'b1111;
  end
  else 
  begin
    tmp <= tmp - 1;
    if (tmp == 4'b0000) 
    begin
      tmp <= 4'b1111;
    end
    q <= tmp;
  end
end
endmodule



   
