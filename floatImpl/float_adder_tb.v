module float_adder_tb;

    // Declare the size of the integer and decimal as constants for flexivity.
    parameter INTEGER_WIDTH = 8; // Represents 8 bits. 
    parameter DECIMAL_WIDTH = 23;

    reg signed [DECIMAL_WIDTH-1:0] float_a_decimal;
    reg signed [INTEGER_WIDTH-1:0] float_a_integer; 
    reg signed [INTEGER_WIDTH-1:0] float_b_integer;
    reg signed [DECIMAL_WIDTH-1:0] float_b_decimal;
  
    wire signed [INTEGER_WIDTH-1:0] result_integer; 
    wire signed [DECIMAL_WIDTH-1:0] result_decimal;

    float_adder uut (
        .float_a_integer(float_a_integer),
        .float_a_decimal(float_a_decimal),
        .float_b_integer(float_b_integer),
        .float_b_decimal(float_b_decimal),
        .result_integer(result_integer),
        .result_decimal(result_decimal)
    );

    initial begin 
      
        float_a_integer = 4;   
        float_a_decimal = 2;   
        float_b_integer = 2;   
        float_b_decimal = 2;  

        #10; // Wait for the result before printing.

        $display("Result: %0d.%0d", result_integer, result_decimal);

        $finish; // Stop the simulation. 
    end 
endmodule

