module dot_product(
    input [7:0] a0, a1, a2, a3, // 4-element vector a, where each index is 8 bits.  
    input [7:0] b0, b1, b2, b3, // 4-element vector b, where each index is 8 bits.  
    output [15:0] result        // 16 bit result.
);

    // Set the varaibles as wire because we will use assign on the them.
    wire [15:0] prod0, prod1, prod2, prod3;

    assign prod0 = a0 * b0;
    assign prod1 = a1 * b1;
    assign prod2 = a2 * b2;
    assign prod3 = a3 * b3;

    assign result = prod0 + prod1 + prod2 + prod3;
    
endmodule // Endmodule defines where the scope of the module stops.

