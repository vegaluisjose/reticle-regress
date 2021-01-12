module test_main (
    input        clock,
    input        reset,
    input [31:0] cycles
);
    localparam width = 8;

    logic [width-1:0] a;
    logic en;
    logic [width-1:0] y;
    logic [width-1:0] yr;

    assign a = 8'hc;
    assign en = 1'b1;

    assign yr = a;

    main dut (clock, reset, a, en, y);

    always @(posedge clock) begin
        if (!reset && cycles > 32'd4999) begin
            $display("cycle:%4d a:%2d y:%2d yr:%2d", cycles, $signed(a), $signed(y), $signed(yr));
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

    // run for 5010 cycles, gsr takes 5k cycles to init at 1ps
    always @(posedge clock) begin
        if (cycles == 32'd5010) begin
            $finish;
        end
    end

    test_main t0  (clock, reset, cycles);

endmodule
