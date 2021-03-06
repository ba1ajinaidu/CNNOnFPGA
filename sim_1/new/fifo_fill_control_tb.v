`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2020 10:53:16
// Design Name: 
// Module Name: fifo_fill_control_tb
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


module fifo_fill_control_tb;
    parameter data_size=8;
    parameter array_size=9;
    parameter dim_data_size=8;
    reg clk;
    reg [19:0] initial_address;
    reg enable;
    reg reset;
    reg [dim_data_size-1:0] weight_size;
    reg [dim_data_size-1:0] image_height;
    reg [dim_data_size-1:0] image_width;
    wire [data_size-1:0] bus;
    wire [array_size-1:0] write_enable;
    wire done;
    wire [2:0] s;
fifo_fill_control uut(
    .clk(clk),
    .initial_address(initial_address),
    .enable(enable),
    .reset(reset),
    .state(s),
    .weight_size(weight_size),
    .image_height(image_height),
    .image_width(image_width),
    .bus(bus),
    .write_enable_out(write_enable),
    .done(done)
);


initial
begin
        weight_size<=3;
        image_height<=5;
        image_width<=5;
        initial_address<=0;
        reset <= 0;
        enable<=1;
        clk <= 1'b0;
        #10;
        reset<=1;
end
 
 initial begin
  forever #5 clk <= ~clk;
 end
endmodule
