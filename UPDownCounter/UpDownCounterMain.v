`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2020 18:06:24
// Design Name: 
// Module Name: UpDownCounterMain
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UpDownCounterMain(
    input clk,reset,flag,
    output [3:0]UpDownCounter
    );
    
    reg [3:0]counter_value;
    always@(posedge clk or posedge reset)
        begin
        if(flag==1'b0) // UpCounter
            begin
                if(reset)
                    begin
                        counter_value=4'd0;
                    end
                else
                    begin
                        counter_value=counter_value+4'd1;
                    end
            end 
        else          // DownCounter
            begin
                if(reset)
                    begin
                        counter_value=4'hf;
                    end   
                else
                    begin
                        counter_value=counter_value-4'd1;
                    end
            end 
        end 
    assign UpDownCounter = counter_value;
endmodule










