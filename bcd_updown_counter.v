`timescale 1ns / 1ps

module bcd_updown_counter(
    input clk,rst,sel,
    output reg [3:0]q
    );
    
    //reg [3:0]tmp;
    
    always@(posedge clk)
        begin
            if(rst)begin
            //tmp<=4'b0000;
            q<=4'b0000;
            end else if(sel==1)
                begin
                    if(q==15)
                        q<=4'b0000;
                        else 
                            q<=q+1;
                end else 
                begin
                if(q==4'b0000)
                    q<=15;
                    else
                    q<=q-1;
                end
        end
     
endmodule
