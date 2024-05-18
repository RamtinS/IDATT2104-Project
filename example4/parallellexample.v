`include "vectormultiply.v"

module TopLevelModule(
    input [7:0] a1, a2, a3, a4,
    input [7:0] b1, b2, b3, b4,
    input [7:0] c1, c2, c3, c4,
    input [7:0] d1, d2, d3, d4,
    input [7:0] e1, e2, e3, e4,
    input [7:0] f1, f2, f3, f4,

    output [8:0] g1, g2, g3, g4,
    output [8:0] h1, h2, h3, h4,
    output [8:0] i1, i2, i3, i4
);

    // Instantiate the vectormultiply module
    vectormultiply uut (
        .a1(a1), .a2(a2), .a3(a3), .a4(a4),
        .b1(b1), .b2(b2), .b3(b3), .b4(b4),
        .c1(g1), .c2(g2), .c3(g3), .c4(g4)
    );
    
    // Instantiate the vector multiply module 2
    vectormultiply uut1 (
        .a1(c1), .a2(c2), .a3(c3), .a4(c4),
        .b1(d1), .b2(d2), .b3(d3), .b4(d4),
        .c1(h1), .c2(h2), .c3(h3), .c4(h4)
    );

    // Instantiate the vector multiply module 3
    vectormultiply uut2 (
        .a1(e1), .a2(e2), .a3(e3), .a4(e4),
        .b1(f1), .b2(f2), .b3(f3), .b4(f4),
        .c1(i1), .c2(i2), .c3(i3), .c4(i4)
    );

endmodule