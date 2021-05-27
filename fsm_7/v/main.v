(*use_dsp = "yes"*)
module main (
    input wire clock,
    input wire reset,
    input wire i0,
    input wire i1,
    input wire i2,
    input wire i3,
    input wire i4,
    input wire i5,
    input wire i6,
    output wire [3:0] y
);
    wire [3:0] t0;
    wire [3:0] t1;
    wire [3:0] t2;
    wire [3:0] t3;
    wire [3:0] t4;
    wire [3:0] t5;
    wire [3:0] t6;
    wire t7;
    wire t8;
    wire t9;
    wire t10;
    wire t11;
    wire t12;
    wire t13;
    wire t14;
    wire t15;
    wire t16;
    wire t17;
    wire t18;
    wire t19;
    wire t20;
    wire t21;
    wire [3:0] t22;
    wire [3:0] t23;
    wire [3:0] t24;
    wire [3:0] t25;
    wire [3:0] t26;
    wire [3:0] t27;
    wire [3:0] t28;
    reg [3:0] t29;
    assign t0 = 4'd0;
    assign t1 = 4'd1;
    assign t2 = 4'd2;
    assign t3 = 4'd3;
    assign t4 = 4'd4;
    assign t5 = 4'd5;
    assign t6 = 4'd6;
    assign t7 = 1'd1;
    assign t8 = t29 == t0;
    assign t9 = t29 == t1;
    assign t10 = t29 == t2;
    assign t11 = t29 == t3;
    assign t12 = t29 == t4;
    assign t13 = t29 == t5;
    assign t14 = t29 == t6;
    assign t15 = t8 & i0;
    assign t16 = t9 & i1;
    assign t17 = t10 & i2;
    assign t18 = t11 & i3;
    assign t19 = t12 & i4;
    assign t20 = t13 & i5;
    assign t21 = t14 & i6;
    assign t22 = t15 ? t1 : t29;
    assign t23 = t16 ? t2 : t22;
    assign t24 = t17 ? t3 : t23;
    assign t25 = t18 ? t4 : t24;
    assign t26 = t19 ? t5 : t25;
    assign t27 = t20 ? t6 : t26;
    assign t28 = t21 ? t0 : t27;
    always @(posedge clock) begin
        if(reset) begin
            t29 <= 0;
        end else if(t7) begin
            t29 <= t28;
        end
    end
    assign y = t29;
endmodule
