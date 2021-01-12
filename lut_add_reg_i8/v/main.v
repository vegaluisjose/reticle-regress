module main (
    input wire clock,
    input wire reset,
    input wire [7:0] a,
    input wire [7:0] b,
    input wire en,
    output wire [7:0] y
);
    wire gnd;
    wire vcc;
    wire t37;
    wire t39;
    wire t11;
    wire t8;
    wire t10;
    wire t19;
    wire t22;
    wire t23;
    wire t6;
    wire t24;
    wire t5;
    wire t2;
    wire t38;
    wire t20;
    wire t13;
    wire t32;
    wire t40;
    wire t34;
    wire t42;
    wire t3;
    wire [7:0] t26;
    wire t28;
    wire t33;
    wire t17;
    wire t36;
    wire t41;
    wire t12;
    wire t9;
    wire t29;
    wire t18;
    wire t0;
    wire t7;
    wire [7:0] t25;
    wire t35;
    wire t21;
    wire t27;
    wire t30;
    wire t1;
    wire t16;
    wire t15;
    wire t4;
    wire t31;
    wire t14;
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
    assign t8 = b[0];
    assign t9 = b[1];
    assign t10 = b[2];
    assign t11 = b[3];
    assign t12 = b[4];
    assign t13 = b[5];
    assign t14 = b[6];
    assign t15 = b[7];
    (*LOC = "SLICE_X1Y1", BEL = "A6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t16 (
        .I0(t0),
        .I1(t8),
        .O(t16)
    );
    (*LOC = "SLICE_X1Y1", BEL = "B6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t17 (
        .I0(t1),
        .I1(t9),
        .O(t17)
    );
    (*LOC = "SLICE_X1Y1", BEL = "C6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t18 (
        .I0(t2),
        .I1(t10),
        .O(t18)
    );
    (*LOC = "SLICE_X1Y1", BEL = "D6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t19 (
        .I0(t3),
        .I1(t11),
        .O(t19)
    );
    (*LOC = "SLICE_X1Y1", BEL = "E6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t20 (
        .I0(t4),
        .I1(t12),
        .O(t20)
    );
    (*LOC = "SLICE_X1Y1", BEL = "F6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t21 (
        .I0(t5),
        .I1(t13),
        .O(t21)
    );
    (*LOC = "SLICE_X1Y1", BEL = "G6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t22 (
        .I0(t6),
        .I1(t14),
        .O(t22)
    );
    (*LOC = "SLICE_X1Y1", BEL = "H6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t23 (
        .I0(t7),
        .I1(t15),
        .O(t23)
    );
    assign t24 = gnd;
    assign t25 = {t23, t22, t21, t20, t19, t18, t17, t16};
    (*LOC = "SLICE_X1Y1", BEL = "CARRY8"*)
    CARRY8 # (
        .CARRY_TYPE("SINGLE_CY8")
    ) __t26 (
        .CI(t24),
        .CI_TOP(t24),
        .DI(a),
        .O(t26),
        .S(t25)
    );
    assign t27 = t26[0];
    assign t28 = t26[1];
    assign t29 = t26[2];
    assign t30 = t26[3];
    assign t31 = t26[4];
    assign t32 = t26[5];
    assign t33 = t26[6];
    assign t34 = t26[7];
    (*LOC = "SLICE_X1Y1", BEL = "AFF"*)
    FDSE __t35 (
        .C(clock),
        .CE(en),
        .D(t27),
        .Q(t35),
        .S(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "BFF"*)
    FDSE __t36 (
        .C(clock),
        .CE(en),
        .D(t28),
        .Q(t36),
        .S(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "CFF"*)
    FDRE __t37 (
        .C(clock),
        .CE(en),
        .D(t29),
        .Q(t37),
        .R(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "DFF"*)
    FDRE __t38 (
        .C(clock),
        .CE(en),
        .D(t30),
        .Q(t38),
        .R(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "EFF"*)
    FDRE __t39 (
        .C(clock),
        .CE(en),
        .D(t31),
        .Q(t39),
        .R(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "FFF"*)
    FDRE __t40 (
        .C(clock),
        .CE(en),
        .D(t32),
        .Q(t40),
        .R(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "GFF"*)
    FDRE __t41 (
        .C(clock),
        .CE(en),
        .D(t33),
        .Q(t41),
        .R(reset)
    );
    (*LOC = "SLICE_X1Y1", BEL = "HFF"*)
    FDRE __t42 (
        .C(clock),
        .CE(en),
        .D(t34),
        .Q(t42),
        .R(reset)
    );
    assign y = {t42, t41, t40, t39, t38, t37, t36, t35};
endmodule


