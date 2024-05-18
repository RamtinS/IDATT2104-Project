`timescale 1ns/1ns
`include "vectormultiply.v"

module vectormultiply_tb;

    // Inputs
    reg [7:0] a1, a2, a3, a4;
    reg [7:0] b1, b2, b3, b4;

    // Outputs
    wire [8:0] c1, c2, c3, c4;

    // Instantiate the Unit Under Test (UUT)
    vectormultiply uut (
        .a1(a1),
        .a2(a2),
        .a3(a3),
        .a4(a4),
        .b1(b1),
        .b2(b2),
        .b3(b3),
        .b4(b4),
        .c1(c1),
        .c2(c2),
        .c3(c3),
        .c4(c4)
    );

    initial begin
        // Initialize inputs
        a1 = 8'd2;  b1 = 8'd3;
        a2 = 8'd4;  b2 = 8'd5;
        a3 = 8'd6;  b3 = 8'd7;
        a4 = 8'd8;  b4 = 8'd9;

        #10; // Wait for the results

        // Display the results
        $display("c1 = %d", c1);
        $display("c2 = %d", c2);
        $display("c3 = %d", c3);
        $display("c4 = %d", c4);
    end

endmodule