module test_main (
    input        clock,
    input        reset,
    input [31:0] cycles
);

    logic i0;
    logic i1;
    logic i2;
    logic i3;
    logic i4;
    logic i5;
    logic i6;
    logic i7;
    logic i8;
    logic [3:0] y;

    assign i0 = 1'b1;
    assign i1 = 1'b1;
    assign i2 = 1'b1;
    assign i3 = 1'b1;
    assign i4 = 1'b1;
    assign i5 = 1'b1;
    assign i6 = 1'b1;
    assign i7 = 1'b1;
    assign i8 = 1'b1;

    main dut (clock, reset, i0, i1, i2, i3, i4, i5, i6, y);

    always @(posedge clock) begin
        if (!reset) begin
            $display("cycle:%4d y:%b", cycles, y);
        end
    end

endmodule

module test();
    logic clock = 1'b0;
    logic reset;
    logic [31:0] cycles;

    always #50000 clock = ~clock;

    // reset for 3 cycles
    initial begin
        reset = 1'b1;
        repeat(3)@(negedge clock);
        reset = 1'b0;
    end

    // cycle counter
    always @(posedge clock) begin
        if (reset) begin
            cycles <= 32'd0;
        end
        else begin
            cycles <= cycles + 1'b1;
        end
    end

    // run for 10 cycles
    always @(posedge clock) begin
        if (cycles == 32'd10) begin
            $finish;
        end
    end

    test_main t0  (clock, reset, cycles);

endmodule
