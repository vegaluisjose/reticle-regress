module main (
    input wire clock,
    input wire reset,
    input wire [7:0] a,
    input wire [7:0] b,
    input wire [7:0] c,
    input wire en,
    output wire [7:0] y
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
    assign y = _y[7:0];
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
        .CREG(0),
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
        .MREG(1),
        .OPMODEREG(0),
        .PATTERN(48'h0),
        .PREADDINSEL("A"),
        .PREG(1),
        .RND(48'h0),
        .SEL_MASK("MASK"),
        .SEL_PATTERN("PATTERN"),
        .USE_MULT("MULTIPLY"),
        .USE_PATTERN_DETECT("NO_PATDET"),
        .USE_SIMD("ONE48"),
        .USE_WIDEXOR("FALSE"),
        .XORSIMD("XOR24_48_96")
    ) __y (
        .A({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]}),
        .ACIN({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
        .ACOUT(),
        .ALUMODE({gnd, gnd, gnd, gnd}),
        .B({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, b[7], b[6], b[5], b[4], b[3], b[2], b[1], b[0]}),
        .BCIN({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
        .BCOUT(),
        .C({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, c[7], c[6], c[5], c[4], c[3], c[2], c[1], c[0]}),
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
        .CEC(gnd),
        .CECARRYIN(gnd),
        .CECTRL(gnd),
        .CED(gnd),
        .CEINMODE(gnd),
        .CEM(en),
        .CEP(en),
        .CLK(clock),
        .D({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
        .INMODE({gnd, gnd, gnd, gnd, gnd}),
        .MULTSIGNIN(gnd),
        .MULTSIGNOUT(),
        .OPMODE({gnd, gnd, gnd, vcc, vcc, gnd, vcc, gnd, vcc}),
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
