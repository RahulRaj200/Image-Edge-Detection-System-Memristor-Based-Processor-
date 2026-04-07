`timescale 1ns/1ps

module tb_processor;

reg clk, rst, write_enable;

reg signed [7:0] in0,in1,in2;
reg signed [7:0] in3,in4,in5;
reg signed [7:0] in6,in7,in8;

wire signed [15:0] edge_out;

processor_16x16 uut (
    clk, rst, write_enable,
    in0,in1,in2,
    in3,in4,in5,
    in6,in7,in8,
    edge_out
);

// Clock
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;

    #10 rst = 0;

    write_enable = 0;

    // Input pixels
    in0=10; in1=20; in2=30;
    in3=40; in4=50; in5=60;
    in6=70; in7=80; in8=90;

    #100;

    $display("Edge Output = %d", edge_out);

    $stop;
end

endmodule