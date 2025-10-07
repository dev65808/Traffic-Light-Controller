`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2025 19:33:48
// Design Name: 
// Module Name: traffic_light_tb
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



module traffic_light_tb;
    reg clk, rst;
    wire [2:0] light_M1;
    wire [2:0] light_M2;
    wire [2:0] light_Mt;
    wire [2:0] light_s;

    // Instantiate DUT (Design Under Test)
    traffic_light dut (
        .clk(clk),
        .rst(rst),
        .light_M1(light_M1),
        .light_M2(light_M2),
        .light_Mt(light_Mt),
        .light_s(light_s)
    );

    // Clock generation: 10ns period (100MHz)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Reset sequence
    initial begin
        rst = 1;       // apply reset
        #20 rst = 0;   // release reset after 20ns
    end

    // Run simulation
    initial begin
        #500;          // run for 500ns
        $finish;
    end
endmodule


