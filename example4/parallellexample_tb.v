`timescale 1ns/1ns
`include "parallellexample.v"

module parallellexample_tb;

    // Declare signals for inputs and outputs
    reg [7:0] a1, a2, a3, a4;
    reg [7:0] b1, b2, b3, b4;
    reg [7:0] c1, c2, c3, c4;
    reg [7:0] d1, d2, d3, d4;
    reg [7:0] e1, e2, e3, e4;
    reg [7:0] f1, f2, f3, f4;

    wire [8:0] g1, g2, g3, g4;
    wire [8:0] h1, h2, h3, h4;
    wire [8:0] i1, i2, i3, i4;

    // Instantiate the Unit Under Test (UUT)
    TopLevelModule uut (
        .a1(a1), .a2(a2), .a3(a3), .a4(a4),
        .b1(b1), .b2(b2), .b3(b3), .b4(b4),
        .c1(c1), .c2(c2), .c3(c3), .c4(c4),
        .d1(d1), .d2(d2), .d3(d3), .d4(d4),
        .e1(e1), .e2(e2), .e3(e3), .e4(e4),
        .f1(f1), .f2(f2), .f3(f3), .f4(f4),
        .g1(g1), .g2(g2), .g3(g3), .g4(g4),
        .h1(h1), .h2(h2), .h3(h3), .h4(h4),
        .i1(i1), .i2(i2), .i3(i3), .i4(i4)
    );

    initial begin
        $dumpfile("parallellexample_tb.vcd");
        $dumpvars(0, parallellexample_tb);
        
        #200;
        // Set inputs
        a1 = 8'd2;  a2 = 8'd4;  a3 = 8'd6;  a4 = 8'd8;
        b1 = 8'd1;  b2 = 8'd2;  b3 = 8'd3;  b4 = 8'd4;
        c1 = 8'd3;  c2 = 8'd5;  c3 = 8'd7;  c4 = 8'd9;
        d1 = 8'd2;  d2 = 8'd4;  d3 = 8'd6;  d4 = 8'd8;
        e1 = 8'd1;  e2 = 8'd3;  e3 = 8'd5;  e4 = 8'd7;
        f1 = 8'd2;  f2 = 8'd4;  f3 = 8'd6;  f4 = 8'd8;
        #200;

        a1 = 8'd3;  a2 = 8'd5;  a3 = 8'd7;  a4 = 8'd9;
        b1 = 8'd2;  b2 = 8'd1;  b3 = 8'd2;  b4 = 8'd3;
        c1 = 8'd4;  c2 = 8'd6;  c3 = 8'd8;  c4 = 8'd8;
        d1 = 8'd1;  d2 = 8'd3;  d3 = 8'd5;  d4 = 8'd7;
        e1 = 8'd2;  e2 = 8'd4;  e3 = 8'd6;  e4 = 8'd8;
        f1 = 8'd2;  f2 = 8'd3;  f3 = 8'd5;  f4 = 8'd7;
        
        #200;
        $display("Test complete.");
    end

    
endmodule