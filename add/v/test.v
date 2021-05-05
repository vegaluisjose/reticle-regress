module test_main (
    input        clock,
    input        reset,
    input [31:0] cycles
);

    logic [7:0] a;
    logic [7:0] b;
    logic [7:0] y;
    logic en;

    assign a = -8'd3;
    assign b = 8'd18;
    assign en = 1'b1;

    main dut (clock, reset, a, b, en, y);

    always @(posedge clock) begin
        if (!reset) begin
            $display("cycle:%4d y:%d", cycles, $signed(y));
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
