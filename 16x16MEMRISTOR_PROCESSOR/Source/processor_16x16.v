module processor_16x16 (
    input clk,
    input rst,
    input write_enable,

    input signed [7:0] in0,in1,in2,
    input signed [7:0] in3,in4,in5,
    input signed [7:0] in6,in7,in8,

    output signed [15:0] edge_out
);

// Sobel Gx weights
wire signed [7:0]
w0=-1, w1=0, w2=1,
w3=-2, w4=0, w5=2,
w6=-1, w7=0, w8=1;

// Remaining weights = 0
wire signed [7:0]
w9=0,w10=0,w11=0,w12=0,w13=0,w14=0,w15=0;

// (Continue zero till w255 if needed OR leave unconnected carefully)

wire signed [15:0] out0;

// Instantiate crossbar
crossbar_16x16 cb (
    clk,rst,write_enable,

    in0,in1,in2,in3,in4,in5,in6,in7,
    in8,0,0,0,0,0,0,0,

    w0,w1,w2,w3,w4,w5,w6,w7,w8,
    0,0,0,0,0,0,0,
    // (rest weights 0…)

    out0, // use first output
    /* ignore others */
);

// Final edge output
assign edge_out = out0;

endmodule