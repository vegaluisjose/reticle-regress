module main (
    input wire clock,
    input wire reset,
    input wire [7:0] a,
    input wire en,
    output wire [7:0] y
);
    wire gnd;
    wire vcc;
    wire t9;
    wire t6;
    wire t4;
    wire t3;
    wire t15;
    wire t0;
    wire t5;
    wire t10;
    wire t13;
    wire t7;
    wire t14;
    wire t8;
    wire t2;
    wire t12;
    wire t1;
    wire t11;
    GND GND (
        .G(gnd)
    );
    VCC VCC (
        .P(vcc)
    );
    assign t0 = a[0];
    assign t1 = a[1];
    assign t2 = a[2];
    assign t3 = a[3];
    assign t4 = a[4];
    assign t5 = a[5];
    assign t6 = a[6];
    assign t7 = a[7];
    (*LOC = "SLICE_X1Y1", BEL = "AFF"*)
    FDSE __t8 (
        .C(clock),
        .CE(en),
        .D(t0),
        .Q(t8),
        .S(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "BFF"*)
    FDSE __t9 (
        .C(clock),
        .CE(en),
        .D(t1),
        .Q(t9),
        .S(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "CFF"*)
    FDRE __t10 (
        .C(clock),
        .CE(en),
        .D(t2),
        .Q(t10),
        .R(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "DFF"*)
    FDRE __t11 (
        .C(clock),
        .CE(en),
        .D(t3),
        .Q(t11),
        .R(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "EFF"*)
    FDRE __t12 (
        .C(clock),
        .CE(en),
        .D(t4),
        .Q(t12),
        .R(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "FFF"*)
    FDRE __t13 (
        .C(clock),
        .CE(en),
        .D(t5),
        .Q(t13),
        .R(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "GFF"*)
    FDRE __t14 (
        .C(clock),
        .CE(en),
        .D(t6),
        .Q(t14),
        .R(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "HFF"*)
    FDRE __t15 (
        .C(clock),
        .CE(en),
        .D(t7),
        .Q(t15),
        .R(reset)
    );
    assign y = {t15, t14, t13, t12, t11, t10, t9, t8};
endmodule
