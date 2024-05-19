module float_adder(
    // In the float 8 bits are allocated for the integer and 23 bits. It is supposed to emulate float32. 
    input [7:0] float_a_integer,     
    input [22:0] float_a_decimal,           
    input [7:0] float_b_integer,     
    input [22:0] float_b_decimal,            
    output reg [7:0] result_integer,  // Use register because the variables is used inside an always.
    output reg [22:0] result_decimal         
);

reg [31:0] sum;  

// Use always to perform the operation on the output as soon as the input variables change.
// When using @* the always block will run every time the input variables change.
always @* begin // Begin and end defines the scope of the code.
    
     // Bit shift the integers 23 bits to the left.
    sum = (float_a_integer << 23) + (float_a_decimal) + (float_b_integer << 23) + (float_b_decimal); 
    
    if (sum[22:0] >= 10) begin 
        sum[30:23] += 1;
        sum[22:0] -= 10;
    end

    result_integer = sum[30:23];  
    result_decimal = sum[22:0]; 
end

endmodule
