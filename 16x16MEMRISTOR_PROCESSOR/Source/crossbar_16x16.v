module crossbar_16x16 (
    input clk,
    input rst,
    input write_enable,

    // Inputs (16)
    input signed [7:0] in0,in1,in2,in3,
    input signed [7:0] in4,in5,in6,in7,
    input signed [7:0] in8,in9,in10,in11,
    input signed [7:0] in12,in13,in14,in15,

    // Weights (256)
    input signed [7:0]
    w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,
    w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,
    w32,w33,w34,w35,w36,w37,w38,w39,w40,w41,w42,w43,w44,w45,w46,w47,
    w48,w49,w50,w51,w52,w53,w54,w55,w56,w57,w58,w59,w60,w61,w62,w63,
    w64,w65,w66,w67,w68,w69,w70,w71,w72,w73,w74,w75,w76,w77,w78,w79,
    w80,w81,w82,w83,w84,w85,w86,w87,w88,w89,w90,w91,w92,w93,w94,w95,
    w96,w97,w98,w99,w100,w101,w102,w103,w104,w105,w106,w107,w108,w109,w110,w111,
    w112,w113,w114,w115,w116,w117,w118,w119,w120,w121,w122,w123,w124,w125,w126,w127,
    w128,w129,w130,w131,w132,w133,w134,w135,w136,w137,w138,w139,w140,w141,w142,w143,
    w144,w145,w146,w147,w148,w149,w150,w151,w152,w153,w154,w155,w156,w157,w158,w159,
    w160,w161,w162,w163,w164,w165,w166,w167,w168,w169,w170,w171,w172,w173,w174,w175,
    w176,w177,w178,w179,w180,w181,w182,w183,w184,w185,w186,w187,w188,w189,w190,w191,
    w192,w193,w194,w195,w196,w197,w198,w199,w200,w201,w202,w203,w204,w205,w206,w207,
    w208,w209,w210,w211,w212,w213,w214,w215,w216,w217,w218,w219,w220,w221,w222,w223,
    w224,w225,w226,w227,w228,w229,w230,w231,w232,w233,w234,w235,w236,w237,w238,w239,
    w240,w241,w242,w243,w244,w245,w246,w247,w248,w249,w250,w251,w252,w253,w254,w255,

    // Outputs (16 rows)
    output signed [15:0] out0,out1,out2,out3,
    output signed [15:0] out4,out5,out6,out7,
    output signed [15:0] out8,out9,out10,out11,
    output signed [15:0] out12,out13,out14,out15
);

// -------- ROW 0 --------
wire signed [15:0]
m0_0,m0_1,m0_2,m0_3,m0_4,m0_5,m0_6,m0_7,
m0_8,m0_9,m0_10,m0_11,m0_12,m0_13,m0_14,m0_15;

memristor M0_0(clk,rst,write_enable,in0,w0,m0_0);
memristor M0_1(clk,rst,write_enable,in1,w1,m0_1);
memristor M0_2(clk,rst,write_enable,in2,w2,m0_2);
memristor M0_3(clk,rst,write_enable,in3,w3,m0_3);
memristor M0_4(clk,rst,write_enable,in4,w4,m0_4);
memristor M0_5(clk,rst,write_enable,in5,w5,m0_5);
memristor M0_6(clk,rst,write_enable,in6,w6,m0_6);
memristor M0_7(clk,rst,write_enable,in7,w7,m0_7);
memristor M0_8(clk,rst,write_enable,in8,w8,m0_8);
memristor M0_9(clk,rst,write_enable,in9,w9,m0_9);
memristor M0_10(clk,rst,write_enable,in10,w10,m0_10);
memristor M0_11(clk,rst,write_enable,in11,w11,m0_11);
memristor M0_12(clk,rst,write_enable,in12,w12,m0_12);
memristor M0_13(clk,rst,write_enable,in13,w13,m0_13);
memristor M0_14(clk,rst,write_enable,in14,w14,m0_14);
memristor M0_15(clk,rst,write_enable,in15,w15,m0_15);

assign out0 = m0_0+m0_1+m0_2+m0_3+m0_4+m0_5+m0_6+m0_7+
              m0_8+m0_9+m0_10+m0_11+m0_12+m0_13+m0_14+m0_15;


// -------- ROW 1 --------
wire signed [15:0]
m1_0,m1_1,m1_2,m1_3,m1_4,m1_5,m1_6,m1_7,
m1_8,m1_9,m1_10,m1_11,m1_12,m1_13,m1_14,m1_15;

memristor M1_0(clk,rst,write_enable,in0,w16,m1_0);
memristor M1_1(clk,rst,write_enable,in1,w17,m1_1);
memristor M1_2(clk,rst,write_enable,in2,w18,m1_2);
memristor M1_3(clk,rst,write_enable,in3,w19,m1_3);
memristor M1_4(clk,rst,write_enable,in4,w20,m1_4);
memristor M1_5(clk,rst,write_enable,in5,w21,m1_5);
memristor M1_6(clk,rst,write_enable,in6,w22,m1_6);
memristor M1_7(clk,rst,write_enable,in7,w23,m1_7);
memristor M1_8(clk,rst,write_enable,in8,w24,m1_8);
memristor M1_9(clk,rst,write_enable,in9,w25,m1_9);
memristor M1_10(clk,rst,write_enable,in10,w26,m1_10);
memristor M1_11(clk,rst,write_enable,in11,w27,m1_11);
memristor M1_12(clk,rst,write_enable,in12,w28,m1_12);
memristor M1_13(clk,rst,write_enable,in13,w29,m1_13);
memristor M1_14(clk,rst,write_enable,in14,w30,m1_14);
memristor M1_15(clk,rst,write_enable,in15,w31,m1_15);

assign out1 = m1_0+m1_1+m1_2+m1_3+m1_4+m1_5+m1_6+m1_7+
              m1_8+m1_9+m1_10+m1_11+m1_12+m1_13+m1_14+m1_15;
             
// -------- ROW 2 --------
wire signed [15:0]
m2_0,m2_1,m2_2,m2_3,m2_4,m2_5,m2_6,m2_7,
m2_8,m2_9,m2_10,m2_11,m2_12,m2_13,m2_14,m2_15;

memristor M2_0(clk,rst,write_enable,in0,w32,m2_0);
memristor M2_1(clk,rst,write_enable,in1,w33,m2_1);
memristor M2_2(clk,rst,write_enable,in2,w34,m2_2);
memristor M2_3(clk,rst,write_enable,in3,w35,m2_3);
memristor M2_4(clk,rst,write_enable,in4,w36,m2_4);
memristor M2_5(clk,rst,write_enable,in5,w37,m2_5);
memristor M2_6(clk,rst,write_enable,in6,w38,m2_6);
memristor M2_7(clk,rst,write_enable,in7,w39,m2_7);
memristor M2_8(clk,rst,write_enable,in8,w40,m2_8);
memristor M2_9(clk,rst,write_enable,in9,w41,m2_9);
memristor M2_10(clk,rst,write_enable,in10,w42,m2_10);
memristor M2_11(clk,rst,write_enable,in11,w43,m2_11);
memristor M2_12(clk,rst,write_enable,in12,w44,m2_12);
memristor M2_13(clk,rst,write_enable,in13,w45,m2_13);
memristor M2_14(clk,rst,write_enable,in14,w46,m2_14);
memristor M2_15(clk,rst,write_enable,in15,w47,m2_15);

assign out2 = m2_0+m2_1+m2_2+m2_3+m2_4+m2_5+m2_6+m2_7+
              m2_8+m2_9+m2_10+m2_11+m2_12+m2_13+m2_14+m2_15;
              
//--------- ROW 3 -------
wire signed [15:0]
m3_0,m3_1,m3_2,m3_3,m3_4,m3_5,m3_6,m3_7,
m3_8,m3_9,m3_10,m3_11,m3_12,m3_13,m3_14,m3_15;

memristor M3_0(clk,rst,write_enable,in0,w48,m3_0);
memristor M3_1(clk,rst,write_enable,in1,w49,m3_1);
memristor M3_2(clk,rst,write_enable,in2,w50,m3_2);
memristor M3_3(clk,rst,write_enable,in3,w51,m3_3);
memristor M3_4(clk,rst,write_enable,in4,w52,m3_4);
memristor M3_5(clk,rst,write_enable,in5,w53,m3_5);
memristor M3_6(clk,rst,write_enable,in6,w54,m3_6);
memristor M3_7(clk,rst,write_enable,in7,w55,m3_7);
memristor M3_8(clk,rst,write_enable,in8,w56,m3_8);
memristor M3_9(clk,rst,write_enable,in9,w57,m3_9);
memristor M3_10(clk,rst,write_enable,in10,w58,m3_10);
memristor M3_11(clk,rst,write_enable,in11,w59,m3_11);
memristor M3_12(clk,rst,write_enable,in12,w60,m3_12);
memristor M3_13(clk,rst,write_enable,in13,w61,m3_13);
memristor M3_14(clk,rst,write_enable,in14,w62,m3_14);
memristor M3_15(clk,rst,write_enable,in15,w63,m3_15);

assign out3 = m3_0+m3_1+m3_2+m3_3+m3_4+m3_5+m3_6+m3_7+
              m3_8+m3_9+m3_10+m3_11+m3_12+m3_13+m3_14+m3_15;

//--------- ROW 4 -------
wire signed [15:0]
m4_0,m4_1,m4_2,m4_3,m4_4,m4_5,m4_6,m4_7,
m4_8,m4_9,m4_10,m4_11,m4_12,m4_13,m4_14,m4_15;

memristor M4_0(clk,rst,write_enable,in0,w64,m4_0);
memristor M4_1(clk,rst,write_enable,in1,w65,m4_1);
memristor M4_2(clk,rst,write_enable,in2,w66,m4_2);
memristor M4_3(clk,rst,write_enable,in3,w67,m4_3);
memristor M4_4(clk,rst,write_enable,in4,w68,m4_4);
memristor M4_5(clk,rst,write_enable,in5,w69,m4_5);
memristor M4_6(clk,rst,write_enable,in6,w70,m4_6);
memristor M4_7(clk,rst,write_enable,in7,w71,m4_7);
memristor M4_8(clk,rst,write_enable,in8,w72,m4_8);
memristor M4_9(clk,rst,write_enable,in9,w73,m4_9);
memristor M4_10(clk,rst,write_enable,in10,w74,m4_10);
memristor M4_11(clk,rst,write_enable,in11,w75,m4_11);
memristor M4_12(clk,rst,write_enable,in12,w76,m4_12);
memristor M4_13(clk,rst,write_enable,in13,w77,m4_13);
memristor M4_14(clk,rst,write_enable,in14,w78,m4_14);
memristor M4_15(clk,rst,write_enable,in15,w79,m4_15);

assign out4 = m4_0+m4_1+m4_2+m4_3+m4_4+m4_5+m4_6+m4_7+
              m4_8+m4_9+m4_10+m4_11+m4_12+m4_13+m4_14+m4_15;
              
//--------- ROW 5 -------
wire signed [15:0]
m5_0,m5_1,m5_2,m5_3,m5_4,m5_5,m5_6,m5_7,
m5_8,m5_9,m5_10,m5_11,m5_12,m5_13,m5_14,m5_15;

memristor M5_0(clk,rst,write_enable,in0,w80,m5_0);
memristor M5_1(clk,rst,write_enable,in1,w81,m5_1);
memristor M5_2(clk,rst,write_enable,in2,w82,m5_2);
memristor M5_3(clk,rst,write_enable,in3,w83,m5_3);
memristor M5_4(clk,rst,write_enable,in4,w84,m5_4);
memristor M5_5(clk,rst,write_enable,in5,w85,m5_5);
memristor M5_6(clk,rst,write_enable,in6,w86,m5_6);
memristor M5_7(clk,rst,write_enable,in7,w87,m5_7);
memristor M5_8(clk,rst,write_enable,in8,w88,m5_8);
memristor M5_9(clk,rst,write_enable,in9,w89,m5_9);
memristor M5_10(clk,rst,write_enable,in10,w90,m5_10);
memristor M5_11(clk,rst,write_enable,in11,w91,m5_11);
memristor M5_12(clk,rst,write_enable,in12,w92,m5_12);
memristor M5_13(clk,rst,write_enable,in13,w93,m5_13);
memristor M5_14(clk,rst,write_enable,in14,w94,m5_14);
memristor M5_15(clk,rst,write_enable,in15,w95,m5_15);

assign out5 = m5_0+m5_1+m5_2+m5_3+m5_4+m5_5+m5_6+m5_7
+m5_8+m5_9+m5_10+m5_11+m5_12+m5_13+m5_14+m5_15;

//--------- ROW 6 -------
wire signed [15:0]
m6_0,m6_1,m6_2,m6_3,m6_4,m6_5,m6_6,m6_7,
m6_8,m6_9,m6_10,m6_11,m6_12,m6_13,m6_14,m6_15;

memristor M6_0(clk,rst,write_enable,in0,w96,m6_0);
memristor M6_1(clk,rst,write_enable,in1,w97,m6_1);
memristor M6_2(clk,rst,write_enable,in2,w98,m6_2);
memristor M6_3(clk,rst,write_enable,in3,w99,m6_3);
memristor M6_4(clk,rst,write_enable,in4,w100,m6_4);
memristor M6_5(clk,rst,write_enable,in5,w101,m6_5);
memristor M6_6(clk,rst,write_enable,in6,w102,m6_6);
memristor M6_7(clk,rst,write_enable,in7,w103,m6_7);
memristor M6_8(clk,rst,write_enable,in8,w104,m6_8);
memristor M6_9(clk,rst,write_enable,in9,w105,m6_9);
memristor M6_10(clk,rst,write_enable,in10,w106,m6_10);
memristor M6_11(clk,rst,write_enable,in11,w107,m6_11);
memristor M6_12(clk,rst,write_enable,in12,w108,m6_12);
memristor M6_13(clk,rst,write_enable,in13,w109,m6_13);
memristor M6_14(clk,rst,write_enable,in14,w110,m6_14);
memristor M6_15(clk,rst,write_enable,in15,w111,m6_15);

assign out6 = m6_0+m6_1+m6_2+m6_3+m6_4+m6_5+m6_6+m6_7+
              m6_8+m6_9+m6_10+m6_11+m6_12+m6_13+m6_14+m6_15;

//--------- ROW 7 -------
wire signed [15:0]
m7_0,m7_1,m7_2,m7_3,m7_4,m7_5,m7_6,m7_7,
m7_8,m7_9,m7_10,m7_11,m7_12,m7_13,m7_14,m7_15;

memristor M7_0(clk,rst,write_enable,in0,w112,m7_0);
memristor M7_1(clk,rst,write_enable,in1,w113,m7_1);
memristor M7_2(clk,rst,write_enable,in2,w114,m7_2);
memristor M7_3(clk,rst,write_enable,in3,w115,m7_3);
memristor M7_4(clk,rst,write_enable,in4,w116,m7_4);
memristor M7_5(clk,rst,write_enable,in5,w117,m7_5);
memristor M7_6(clk,rst,write_enable,in6,w118,m7_6);
memristor M7_7(clk,rst,write_enable,in7,w119,m7_7);
memristor M7_8(clk,rst,write_enable,in8,w120,m7_8);
memristor M7_9(clk,rst,write_enable,in9,w121,m7_9);
memristor M7_10(clk,rst,write_enable,in10,w122,m7_10);
memristor M7_11(clk,rst,write_enable,in11,w123,m7_11);
memristor M7_12(clk,rst,write_enable,in12,w124,m7_12);
memristor M7_13(clk,rst,write_enable,in13,w125,m7_13);
memristor M7_14(clk,rst,write_enable,in14,w126,m7_14);
memristor M7_15(clk,rst,write_enable,in15,w127,m7_15);

assign out7 = m7_0+m7_1+m7_2+m7_3+m7_4+m7_5+m7_6+m7_7+
m7_8+m7_9+m7_10+m7_11+m7_12+m7_13+m7_14+m7_15;

//--------- ROW 8 -------
wire signed [15:0]
m8_0,m8_1,m8_2,m8_3,m8_4,m8_5,m8_6,m8_7,
m8_8,m8_9,m8_10,m8_11,m8_12,m8_13,m8_14,m8_15;

memristor M8_0(clk,rst,write_enable,in0,w128,m7_0);
memristor M8_1(clk,rst,write_enable,in1,w129,m7_1);
memristor M8_2(clk,rst,write_enable,in2,w129,m7_2);
memristor M8_3(clk,rst,write_enable,in3,w130,m7_3);
memristor M8_4(clk,rst,write_enable,in4,w131,m7_4);
memristor M8_5(clk,rst,write_enable,in5,w132,m7_5);
memristor M8_6(clk,rst,write_enable,in6,w133,m7_6);
memristor M8_7(clk,rst,write_enable,in7,w134,m7_7);
memristor M8_8(clk,rst,write_enable,in8,w135,m7_8);
memristor M8_9(clk,rst,write_enable,in9,w136,m7_9);
memristor M8_10(clk,rst,write_enable,in10,w137,m7_10);
memristor M8_11(clk,rst,write_enable,in11,w139,m7_11);
memristor M8_12(clk,rst,write_enable,in12,w140,m7_12);
memristor M8_13(clk,rst,write_enable,in13,w141,m7_13);
memristor M8_14(clk,rst,write_enable,in14,w142,m7_14);
memristor M8_15(clk,rst,write_enable,in15,w143,m7_15);

assign out8 = m8_0+m8_1+m8_2+m8_3+m8_4+m8_5+m8_6+m8_7+m8_8+m8_9+m8_10+m8_11+m8_12+m8_13+m8_14+m8_15;

//--------- ROW 9 -------
wire signed [15:0]
m9_0,m9_1,m9_2,m9_3,m9_4,m9_5,m9_6,m9_7,
m9_8,m9_9,m9_10,m9_11,m9_12,m9_13,m9_14,m9_15;

memristor M9_0(clk,rst,write_enable,in0,w144,m9_0);
memristor M9_1(clk,rst,write_enable,in1,w145,m9_1);
memristor M9_2(clk,rst,write_enable,in2,w146,m9_2);
memristor M9_3(clk,rst,write_enable,in3,w147,m9_3);
memristor M9_4(clk,rst,write_enable,in4,w148,m9_4);
memristor M9_5(clk,rst,write_enable,in5,w149,m9_5);
memristor M9_6(clk,rst,write_enable,in6,w150,m9_6);
memristor M9_7(clk,rst,write_enable,in7,w151,m9_7);
memristor M9_8(clk,rst,write_enable,in8,w152,m9_8);
memristor M9_9(clk,rst,write_enable,in9,w153,m9_9);
memristor M9_10(clk,rst,write_enable,in10,w154,m9_10);
memristor M9_11(clk,rst,write_enable,in11,w155,m9_11);
memristor M9_12(clk,rst,write_enable,in12,w156,m9_12);
memristor M9_13(clk,rst,write_enable,in13,w157,m9_13);
memristor M9_14(clk,rst,write_enable,in14,w158,m9_14);
memristor M9_15(clk,rst,write_enable,in15,w159,m9_15);

assign out9 = m9_0+m9_1+m9_2+m9_3+m9_4+m9_5+m9_6+m9_7+m9_8+m9_9+m9_10+m9_11+m9_12+m9_13+m9_14+m9_15;

//--------- ROW 10 -------
wire signed [15:0]
m10_0,m10_1,m10_2,m10_3,m10_4,m10_5,m10_6,m10_7,
m10_8,m10_9,m10_10,m10_11,m10_12,m10_13,m10_14,m10_15;

memristor M10_0(clk,rst,write_enable,in0,w160,m10_0);
memristor M10_1(clk,rst,write_enable,in1,w161,m10_1);
memristor M10_2(clk,rst,write_enable,in2,w162,m10_2);
memristor M10_3(clk,rst,write_enable,in3,w163,m10_3);
memristor M10_4(clk,rst,write_enable,in4,w164,m10_4);
memristor M10_5(clk,rst,write_enable,in5,w165,m10_5);
memristor M10_6(clk,rst,write_enable,in6,w166,m10_6);
memristor M10_7(clk,rst,write_enable,in7,w167,m10_7);
memristor M10_8(clk,rst,write_enable,in8,w168,m10_8);
memristor M10_9(clk,rst,write_enable,in9,w169,m10_9);
memristor M10_10(clk,rst,write_enable,in10,w170,m10_10);
memristor M10_11(clk,rst,write_enable,in11,w171,m10_11);
memristor M10_12(clk,rst,write_enable,in12,w172,m10_12);
memristor M10_13(clk,rst,write_enable,in13,w173,m10_13);
memristor M10_14(clk,rst,write_enable,in14,w174,m10_14);
memristor M10_15(clk,rst,write_enable,in15,w175,m10_15);

assign out10 = m10_0+m10_1+m10_2+m10_3+m10_4+m10_5+m10_6+m10_7+
               m10_8+m10_9+m10_10+m10_11+m10_12+m10_13+m10_14+m10_15;
               
//--------- ROW 11 -------
wire signed [15:0]
m11_0,m11_1,m11_2,m11_3,m11_4,m11_5,m11_6,m11_7,
m11_8,m11_9,m11_10,m11_11,m11_12,m11_13,m11_14,m11_15;

memristor M11_0(clk,rst,write_enable,in0,w176,m11_0);
memristor M11_1(clk,rst,write_enable,in1,w177,m11_1);
memristor M11_2(clk,rst,write_enable,in2,w178,m11_2);
memristor M11_3(clk,rst,write_enable,in3,w179,m11_3);
memristor M11_4(clk,rst,write_enable,in4,w180,m11_4);
memristor M11_5(clk,rst,write_enable,in5,w181,m11_5);
memristor M11_6(clk,rst,write_enable,in6,w182,m11_6);
memristor M11_7(clk,rst,write_enable,in7,w183,m11_7);
memristor M11_8(clk,rst,write_enable,in8,w184,m11_8);
memristor M11_9(clk,rst,write_enable,in9,w185,m11_9);
memristor M11_10(clk,rst,write_enable,in10,w186,m11_10);
memristor M11_11(clk,rst,write_enable,in11,w187,m11_11);
memristor M11_12(clk,rst,write_enable,in12,w188,m11_12);
memristor M11_13(clk,rst,write_enable,in13,w189,m11_13);
memristor M11_14(clk,rst,write_enable,in14,w190,m11_14);
memristor M11_15(clk,rst,write_enable,in15,w191,m11_15);

assign out11 = m11_0+m11_1+m11_2+m11_3+m11_4+m11_5+m11_6+m11_7+
               m11_8+m11_9+m11_10+m11_11+m11_12+m11_13+m11_14+m11_15;

//--------- ROW 12 -------
wire signed [15:0]
m12_0,m12_1,m12_2,m12_3,m12_4,m12_5,m12_6,m12_7,
m12_8,m12_9,m12_10,m12_11,m12_12,m12_13,m12_14,m12_15;

memristor M12_0(clk,rst,write_enable,in0,w192,m12_0);
memristor M12_1(clk,rst,write_enable,in1,w193,m12_1);
memristor M12_2(clk,rst,write_enable,in2,w194,m12_2);
memristor M12_3(clk,rst,write_enable,in3,w195,m12_3);
memristor M12_4(clk,rst,write_enable,in4,w196,m12_4);
memristor M12_5(clk,rst,write_enable,in5,w197,m12_5);
memristor M12_6(clk,rst,write_enable,in6,w198,m12_6);
memristor M12_7(clk,rst,write_enable,in7,w199,m12_7);
memristor M12_8(clk,rst,write_enable,in8,w200,m12_8);
memristor M12_9(clk,rst,write_enable,in9,w201,m12_9);
memristor M12_10(clk,rst,write_enable,in10,w202,m12_10);
memristor M12_11(clk,rst,write_enable,in11,w203,m12_11);
memristor M12_12(clk,rst,write_enable,in12,w204,m12_12);
memristor M12_13(clk,rst,write_enable,in13,w205,m12_13);
memristor M12_14(clk,rst,write_enable,in14,w206,m12_14);
memristor M12_15(clk,rst,write_enable,in15,w207,m12_15);

assign out12 = m12_0+m12_1+m12_2+m12_3+m12_4+m12_5+m12_6+m12_7+
               m12_8+m12_9+m12_10+m12_11+m12_12+m12_13+m12_14+m12_15;
//--------- ROW 13 -------
wire signed [15:0]
m13_0,m13_1,m13_2,m13_3,m13_4,m13_5,m13_6,m13_7,
m13_8,m13_9,m13_10,m13_11,m13_12,m13_13,m13_14,m13_15;

memristor M13_0(clk,rst,write_enable,in0,w208,m13_0);
memristor M13_1(clk,rst,write_enable,in1,w209,m13_1);
memristor M13_2(clk,rst,write_enable,in2,w210,m13_2);
memristor M13_3(clk,rst,write_enable,in3,w211,m13_3);
memristor M13_4(clk,rst,write_enable,in4,w212,m13_4);
memristor M13_5(clk,rst,write_enable,in5,w213,m13_5);
memristor M13_6(clk,rst,write_enable,in6,w214,m13_6);
memristor M13_7(clk,rst,write_enable,in7,w215,m13_7);
memristor M13_8(clk,rst,write_enable,in8,w216,m13_8);
memristor M13_9(clk,rst,write_enable,in9,w217,m13_9);
memristor M13_10(clk,rst,write_enable,in10,w218,m13_10);
memristor M13_11(clk,rst,write_enable,in11,w219,m13_11);
memristor M13_12(clk,rst,write_enable,in12,w220,m13_12);
memristor M13_13(clk,rst,write_enable,in13,w221,m13_13);
memristor M13_14(clk,rst,write_enable,in14,w222,m13_14);
memristor M13_15(clk,rst,write_enable,in15,w223,m13_15);

assign out13 = m13_0+m13_1+m13_2+m13_3+m13_4+m13_5+m13_6+m13_7+
               m13_8+m13_9+m13_10+m13_11+m13_12+m13_13+m13_14+m13_15;
//--------- ROW 14 -------
wire signed [15:0]
m14_0,m14_1,m14_2,m14_3,m14_4,m14_5,m14_6,m14_7,
m14_8,m14_9,m14_10,m14_11,m14_12,m14_13,m14_14,m14_15;

memristor M14_0(clk,rst,write_enable,in0,w224,m14_0);
memristor M14_1(clk,rst,write_enable,in1,w225,m14_1);
memristor M14_2(clk,rst,write_enable,in2,w226,m14_2);
memristor M14_3(clk,rst,write_enable,in3,w227,m14_3);
memristor M14_4(clk,rst,write_enable,in4,w228,m14_4);
memristor M14_5(clk,rst,write_enable,in5,w229,m14_5);
memristor M14_6(clk,rst,write_enable,in6,w230,m14_6);
memristor M14_7(clk,rst,write_enable,in7,w231,m14_7);
memristor M14_8(clk,rst,write_enable,in8,w232,m14_8);
memristor M14_9(clk,rst,write_enable,in9,w233,m14_9);
memristor M14_10(clk,rst,write_enable,in10,w234,m14_10);
memristor M14_11(clk,rst,write_enable,in11,w235,m14_11);
memristor M14_12(clk,rst,write_enable,in12,w236,m14_12);
memristor M14_13(clk,rst,write_enable,in13,w237,m14_13);
memristor M14_14(clk,rst,write_enable,in14,w238,m14_14);
memristor M14_15(clk,rst,write_enable,in15,w239,m14_15);

assign out14 = m14_0+m14_1+m14_2+m14_3+m14_4+m14_5+m14_6+m14_7+
               m14_8+m14_9+m14_10+m14_11+m14_12+m14_13+m14_14+m14_15;
//--------- ROW 15 -------
wire signed [15:0]
m15_0,m15_1,m15_2,m15_3,m15_4,m15_5,m15_6,m15_7,
m15_8,m15_9,m15_10,m15_11,m15_12,m15_13,m15_14,m15_15;

memristor M15_0(clk,rst,write_enable,in0,w240,m15_0);
memristor M15_1(clk,rst,write_enable,in1,w241,m15_1);
memristor M15_2(clk,rst,write_enable,in2,w242,m15_2);
memristor M15_3(clk,rst,write_enable,in3,w243,m15_3);
memristor M15_4(clk,rst,write_enable,in4,w244,m15_4);
memristor M15_5(clk,rst,write_enable,in5,w245,m15_5);
memristor M15_6(clk,rst,write_enable,in6,w246,m15_6);
memristor M15_7(clk,rst,write_enable,in7,w247,m15_7);
memristor M15_8(clk,rst,write_enable,in8,w248,m15_8);
memristor M15_9(clk,rst,write_enable,in9,w249,m15_9);
memristor M15_10(clk,rst,write_enable,in10,w250,m15_10);
memristor M15_11(clk,rst,write_enable,in11,w251,m15_11);
memristor M15_12(clk,rst,write_enable,in12,w252,m15_12);
memristor M15_13(clk,rst,write_enable,in13,w253,m15_13);
memristor M15_14(clk,rst,write_enable,in14,w254,m15_14);
memristor M15_15(clk,rst,write_enable,in15,w255,m15_15);

assign out15 = m15_0+m15_1+m15_2+m15_3+m15_4+m15_5+m15_6+m15_7+
               m15_8+m15_9+m15_10+m15_11+m15_12+m15_13+m15_14+m15_15;

endmodule