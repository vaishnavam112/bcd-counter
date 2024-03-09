`timescale 1ns / 1ps
module load_counter(
    input clk, arst,
    input load,
    output reg [3:0]count
    );
    
    always@(posedge clk, posedge arst)
    begin
        if(arst)
            count<=4'b0000;
            else if(load)
                count<=count;
                else
                    count<=count+1;
    end
endmodule
