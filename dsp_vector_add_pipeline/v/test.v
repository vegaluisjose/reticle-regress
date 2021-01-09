module test_main (
    input        clock,
    input        reset,
    input [31:0] cycles
);
    localparam width = 8;
    
    logic en;
    logic [width-1:0] a_0;
    logic [width-1:0] a_1;
    logic [width-1:0] a_2;
    logic [width-1:0] a_3;
    logic [width-1:0] b_0;
    logic [width-1:0] b_1;
    logic [width-1:0] b_2;
    logic [width-1:0] b_3;
    logic [width-1:0] y_0;
    logic [width-1:0] y_1;
    logic [width-1:0] y_2;
    logic [width-1:0] y_3;
    logic [width-1:0] yr_0;
    logic [width-1:0] yr_1;
    logic [width-1:0] yr_2;
    logic [width-1:0] yr_3;

    assign a_0 = 8'd0;
    assign a_1 = 8'd3;
    assign a_2 = 8'd2;
    assign a_3 = 8'd1;
    assign b_0 = -8'd2;
    assign b_1 = 8'd2;
    assign b_2 = 8'd4;
    assign b_3 = 8'd8;

    assign en = 1'b1;

    assign yr_0 = a_0 + b_0;
    assign yr_1 = a_1 + b_1;
    assign yr_2 = a_2 + b_2;
    assign yr_3 = a_3 + b_3;

    main dut (clock, reset, a_0, a_1, a_2, a_3, b_0, b_1, b_2, b_3, en, y_0, y_1, y_2, y_3);

    always @(posedge clock) begin
        if (!reset && (cycles >= 32'd4995)) begin
            $display("[cycles=%4d] [a] %2d, %2d, %2d, %2d", cycles, $signed(a_0), $signed(a_1), $signed(a_2), $signed(a_3));
            $display("[cycles=%4d] [b] %2d, %2d, %2d, %2d", cycles, $signed(b_0), $signed(b_1), $signed(b_2), $signed(b_3));
            $display("[cycles=%4d] [r] %2d, %2d, %2d, %2d", cycles, $signed(y_0), $signed(y_1), $signed(y_2), $signed(y_3));
            $display("[cycles=%4d] [e] %2d, %2d, %2d, %2d", cycles, $signed(yr_0), $signed(yr_1), $signed(yr_2), $signed(yr_3));
            $display("\n\n--------\n\n");
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
        if (cycles == 32'd5001) begin
            $finish;
        end
    end

    test_main t0  (clock, reset, cycles);

endmodule
