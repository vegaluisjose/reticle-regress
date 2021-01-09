module main (
    input wire clock,
    input wire reset,
    input wire [7:0] a_0,
    input wire [7:0] a_1,
    input wire [7:0] a_2,
    input wire [7:0] a_3,
    input wire [7:0] b_0,
    input wire [7:0] b_1,
    input wire [7:0] b_2,
    input wire [7:0] b_3,
    input wire en,
    output wire [7:0] y_0,
    output wire [7:0] y_1,
    output wire [7:0] y_2,
    output wire [7:0] y_3
);
    wire gnd;
    wire vcc;
    wire [47:0] _y;
    GND GND (
        .G(gnd)
    );
    VCC VCC (
        .P(vcc)
    );
    assign y_0 = _y[7:0];
    assign y_1 = _y[19:12];
    assign y_2 = _y[31:24];
    assign y_3 = _y[43:36];
    DSP48E2 # (
        .ACASCREG(1),
        .ADREG(0),
        .ALUMODEREG(0),
        .AMULTSEL("A"),
        .AREG(1),
        .AUTORESET_PATDET("NO_RESET"),
        .AUTORESET_PRIORITY("RESET"),
        .A_INPUT("DIRECT"),
        .BCASCREG(1),
        .BMULTSEL("B"),
        .BREG(1),
        .B_INPUT("DIRECT"),
        .CARRYINREG(0),
        .CARRYINSELREG(0),
        .CREG(1),
        .DREG(0),
        .INMODEREG(0),
        .IS_ALUMODE_INVERTED(4'b0000),
        .IS_CARRYIN_INVERTED(1'b0),
        .IS_CLK_INVERTED(1'b0),
        .IS_INMODE_INVERTED(5'b00000),
        .IS_OPMODE_INVERTED(9'b000000000),
        .IS_RSTALLCARRYIN_INVERTED(1'b0),
        .IS_RSTALUMODE_INVERTED(1'b0),
        .IS_RSTA_INVERTED(1'b0),
        .IS_RSTB_INVERTED(1'b0),
        .IS_RSTCTRL_INVERTED(1'b0),
        .IS_RSTC_INVERTED(1'b0),
        .IS_RSTD_INVERTED(1'b0),
        .IS_RSTINMODE_INVERTED(1'b0),
        .IS_RSTM_INVERTED(1'b0),
        .IS_RSTP_INVERTED(1'b0),
        .MASK(48'h3fffffffffff),
        .MREG(0),
        .OPMODEREG(0),
        .PATTERN(48'h0),
        .PREADDINSEL("A"),
        .PREG(1),
        .RND(48'h0),
        .SEL_MASK("MASK"),
        .SEL_PATTERN("PATTERN"),
        .USE_MULT("NONE"),
        .USE_PATTERN_DETECT("NO_PATDET"),
        .USE_SIMD("FOUR12"),
        .USE_WIDEXOR("FALSE"),
        .XORSIMD("XOR24_48_96")
    ) __y (
        .A({gnd, gnd, gnd, gnd, b_3[7], b_3[6], b_3[5], b_3[4], b_3[3], b_3[2], b_3[1], b_3[0], gnd, gnd, gnd, gnd, b_2[7], b_2[6], b_2[5], b_2[4], b_2[3], b_2[2], b_2[1], b_2[0], gnd, gnd, gnd, gnd, b_1[7], b_1[6]}),
        .ACIN({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
        .ACOUT(),
        .ALUMODE({gnd, gnd, gnd, gnd}),
        .B({b_1[5], b_1[4], b_1[3], b_1[2], b_1[1], b_1[0], gnd, gnd, gnd, gnd, b_0[7], b_0[6], b_0[5], b_0[4], b_0[3], b_0[2], b_0[1], b_0[0]}),
        .BCIN({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
        .BCOUT(),
        .C({gnd, gnd, gnd, gnd, a_3[7], a_3[6], a_3[5], a_3[4], a_3[3], a_3[2], a_3[1], a_3[0], gnd, gnd, gnd, gnd, a_2[7], a_2[6], a_2[5], a_2[4], a_2[3], a_2[2], a_2[1], a_2[0], gnd, gnd, gnd, gnd, a_1[7], a_1[6], a_1[5], a_1[4], a_1[3], a_1[2], a_1[1], a_1[0], gnd, gnd, gnd, gnd, a_0[7], a_0[6], a_0[5], a_0[4], a_0[3], a_0[2], a_0[1], a_0[0]}),
        .CARRYCASCIN(gnd),
        .CARRYCASCOUT(),
        .CARRYIN(gnd),
        .CARRYINSEL({gnd, gnd, gnd}),
        .CARRYOUT(),
        .CEA1(en),
        .CEA2(en),
        .CEAD(gnd),
        .CEALUMODE(gnd),
        .CEB1(en),
        .CEB2(en),
        .CEC(en),
        .CECARRYIN(gnd),
        .CECTRL(gnd),
        .CED(gnd),
        .CEINMODE(gnd),
        .CEM(gnd),
        .CEP(en),
        .CLK(clock),
        .D({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
        .INMODE({gnd, gnd, gnd, gnd, gnd}),
        .MULTSIGNIN(gnd),
        .MULTSIGNOUT(),
        .OPMODE({gnd, gnd, gnd, vcc, vcc, gnd, gnd, vcc, vcc}),
        .OVERFLOW(),
        .P(_y),
        .PATTERNBDETECT(),
        .PATTERNDETECT(),
        .PCIN({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
        .PCOUT(),
        .RSTA(reset),
        .RSTALLCARRYIN(reset),
        .RSTALUMODE(reset),
        .RSTB(reset),
        .RSTC(reset),
        .RSTCTRL(reset),
        .RSTD(reset),
        .RSTINMODE(reset),
        .RSTM(reset),
        .RSTP(reset),
        .UNDERFLOW(),
        .XOROUT()
    );
endmodule
