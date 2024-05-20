`include "parallelizing.v"

module parallel_tb;

    // Decleare registers as input and wires as output.
    reg [7:0] a1, a2, a3, a4;
    reg [7:0] b1, b2, b3, b4;
    reg [7:0] c1, c2, c3, c4;
    reg [7:0] d1, d2, d3, d4;
    reg [7:0] e1, e2, e3, e4;
    reg [7:0] f1, f2, f3, f4;

    wire [7:0] g1, g2, g3, g4;
    wire [7:0] h1, h2, h3, h4;
    wire [7:0] i1, i2, i3, i4;

    // Instantiate the module for testing.
    parallel uut (
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

        // Make a info dumb, to be analyzed by GTKWave
        $dumpfile("parallelizing_tb.vcd");
        $dumpvars(0, parallel_tb);
        
        #100 //Delay for GTKWave;

        // Assign input
        a1 = 8'b00000010;  a2 = 8'b00000100;  a3 = 8'b00000110;  a4 = 8'b00001000;
        b1 = 8'b00000001;  b2 = 8'b00000010;  b3 = 8'b00000011;  b4 = 8'b00000100;
        c1 = 8'b00000011;  c2 = 8'b00000101;  c3 = 8'b00000111;  c4 = 8'b00001001;
        d1 = 8'b00000010;  d2 = 8'b00000100;  d3 = 8'b00000110;  d4 = 8'b00001000;
        e1 = 8'b00000001;  e2 = 8'b00000011;  e3 = 8'b00000101;  e4 = 8'b00000111;
        f1 = 8'b00000010;  f2 = 8'b00000100;  f3 = 8'b00000110;  f4 = 8'b00001000;

        #100;

        // Assign new input
        a1 = 8'b00000011;  a2 = 8'b00000101;  a3 = 8'b00000111;  a4 = 8'b00001001;
        b1 = 8'b00000010;  b2 = 8'b00000001;  b3 = 8'b00000010;  b4 = 8'b00000011;
        c1 = 8'b00000100;  c2 = 8'b00000110;  c3 = 8'b00001000;  c4 = 8'b00001000;
        d1 = 8'b00000001;  d2 = 8'b00000011;  d3 = 8'b00000101;  d4 = 8'b00000111;
        e1 = 8'b00000010;  e2 = 8'b00000100;  e3 = 8'b00000110;  e4 = 8'b00001000;
        f1 = 8'b00000010;  f2 = 8'b00000011;  f3 = 8'b00000101;  f4 = 8'b00000111;
        
        #100;
        $display("Test ferdig.");
    end

    initial begin
    $monitor("Time = %0t: g1 = %d, g2 = %d, g3 = %d, g4 = %d, h1 = %d, h2 = %d, h3 = %d, h4 = %d, i1 = %d, i2 = %d, i3 = %d, i4 = %d", 
                 $time, g1, g2, g3, g4, h1, h2, h3, h4, i1, i2, i3, i4);

    end

    
endmodule