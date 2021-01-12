module test_main (
    input        clock,
    input        reset,
    input [31:0] cycles
);
    logic en;
    logic [8-1:0] a;
    logic [8-1:0] b;
    logic [16-1:0] c;
    logic [16-1:0] y;
    logic [16-1:0] yr;

    assign a = 8'd8;
    assign b = 8'd2;
    assign c = 16'd3;

    assign en = 1'b1;

    assign yr = $signed(a) * $signed(b) + c;

    main dut (clock, reset, a, b, c, en, y);

    always @(posedge clock) begin
        if (!reset && (cycles >= 32'd4995)) begin
            $display("[cycles=%4d] a:%2d, b:%2d, c:%2d, r:%2d, e:%2d", cycles, $signed(a), $signed(b), $signed(c), $signed(y), $signed(yr));
        end
    end

endmodule

module test();
    logic clock = 1'b0;
    logic reset;
    logic [31:0] cycles;

    always #10 clock = ~clock;

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

    // gsr takes 5k cycles to init at 1ps
    always @(posedge clock) begin
        if (cycles == 32'd5010) begin
            $finish;
        end
    end

    test_main t0  (clock, reset, cycles);

endmodule
