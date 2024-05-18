
module vectormultiply (
    input [7:0] a1, a2, a3, a4,
    input [7:0] b1, b2, b3, b4,
    output [8:0] c1, c2, c3, c4
);
    
    assign c1 = a1 * b1; 
    assign c2 = a2 * b2; 
    assign c3 = a3 * b3;
    assign c4 = a4 * b4;
    
endmodule