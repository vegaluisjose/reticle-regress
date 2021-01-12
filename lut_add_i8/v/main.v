module main (
    input wire clock,
    input wire reset,
    input wire [7:0] a,
    input wire [7:0] b,
    output wire [7:0] y
);
    wire gnd;
    wire vcc;
    wire t3;
    wire t6;
    wire t1;
    wire t7;
    wire t4;
    wire t17;
    wire t21;
    wire t0;
    wire t10;
    wire t16;
    wire t23;
    wire t24;
    wire t2;
    wire t22;
    wire t11;
    wire t8;
    wire t20;
    wire t5;
    wire [7:0] t25;
    wire t18;
    wire t13;
    wire t9;
    wire t12;
    wire t14;
    wire t15;
    wire t19;
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
    (*LOC = "SLICE_X4Y4", BEL = "A6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t16 (
        .I0(t0),
        .I1(t8),
        .O(t16)
    );
    (*LOC = "SLICE_X4Y4", BEL = "B6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t17 (
        .I0(t1),
        .I1(t9),
        .O(t17)
    );
    (*LOC = "SLICE_X4Y4", BEL = "C6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t18 (
        .I0(t2),
        .I1(t10),
        .O(t18)
    );
    (*LOC = "SLICE_X4Y4", BEL = "D6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t19 (
        .I0(t3),
        .I1(t11),
        .O(t19)
    );
    (*LOC = "SLICE_X4Y4", BEL = "E6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t20 (
        .I0(t4),
        .I1(t12),
        .O(t20)
    );
    (*LOC = "SLICE_X4Y4", BEL = "F6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t21 (
        .I0(t5),
        .I1(t13),
        .O(t21)
    );
    (*LOC = "SLICE_X4Y4", BEL = "G6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t22 (
        .I0(t6),
        .I1(t14),
        .O(t22)
    );
    (*LOC = "SLICE_X4Y4", BEL = "H6LUT"*)
    LUT2 # (
        .INIT(4'h6)
    ) __t23 (
        .I0(t7),
        .I1(t15),
        .O(t23)
    );
    assign t24 = gnd;
    assign t25 = {t23, t22, t21, t20, t19, t18, t17, t16};
    (*LOC = "SLICE_X4Y4", BEL = "CARRY8"*)
    CARRY8 # (
        .CARRY_TYPE("SINGLE_CY8")
    ) __y (
        .CI(t24),
        .CI_TOP(t24),
        .DI(a),
        .O(y),
        .S(t25)
    );
endmodule
