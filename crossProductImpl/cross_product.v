module crossproduct (
    //Defines input values to be elements in a vector.
    //The values are an array of bits ranging from 0 to 8 bits.
    //This means that each element can contain 256 different numbers.
    input [7:0] a1, a2, a3, a4,
    input [7:0] b1, b2, b3, b4,

    //Defines an output that will be elements in the resulting vector.
    //The values are an array of bits ranging from 0 to 8 bits.
    output [7:0] c1, c2, c3, c4
);

    //We assign each element in the resulting vector the product of input vector 1 and input vector 2.
    assign c1 = a1 * b1; 
    assign c2 = a2 * b2; 
    assign c3 = a3 * b3;
    assign c4 = a4 * b4;
    
endmodule