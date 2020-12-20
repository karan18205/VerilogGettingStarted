`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2020 17:44:04
// Design Name: 
// Module Name: UpDownCounterTB
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


module UpDownCounterTB();

    reg clk, reset, flag;
    wire [3:0] UpDownCounter;

    UpDownCounterMain DUT(clk, reset, flag, UpDownCounter);

    initial begin 
        clk=0;
        flag=0;
        repeat(96) 
            #5 clk=~clk;
    end
    initial begin
        reset = 1;
        #10
        reset = 0;
        flag = 0;
        #150;
        reset = 1;
        #10;
        flag = 1;
        reset = 0;
    end

endmodule
