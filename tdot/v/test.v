module test_main (
    input        clock,
    input        reset,
    input [31:0] cycles
);

    logic [7:0] a0;
    logic [7:0] b0;
    logic [7:0] a1;
    logic [7:0] b1;
    logic [7:0] a2;
    logic [7:0] b2;
    logic [7:0] c0;
    logic en;
    logic [7:0] y;

    assign a0 = -8'd3;
    assign b0 = 8'd8;
    assign a1 = 8'd28;
    assign b1 = 8'd1;
    assign a2 = 8'd1;
    assign b2 = 8'd3;
    assign c0 = 8'd10;
    assign en = 1'b1;

    main dut (clock, reset, a0, a1, a2, b0, b1, b2, c0, en, y);

    always @(posedge clock) begin
        if (!reset) begin
            $display("cycle:%4d a0:%d b0:%d a1:%d b1:%d a2:%d, b2:%d, c0:%d y:%d", cycles, $signed(a0), $signed(b0), $signed(a1), $signed(b1), $signed(a2), $signed(b2), $signed(c0), $signed(y));
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
