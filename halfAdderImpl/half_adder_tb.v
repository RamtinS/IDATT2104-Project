`include "half_adder.v"
module tb_add;

    // Define registers, which function as input
    reg a;
    reg b;

    // Define wires, which function as output
    wire sum;
    wire carry;

    // Instantiate module
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        // Assign values to a and b
        a = 0; b = 0;
        #10; //Delay

        a = 0; b = 1;
        #10; 

        a = 1; b = 0;
        #10; 

        a = 1; b = 1;
        #10; 
    end

    initial begin
        // Display any time one of these values changes.
        $monitor("At time %t, a = %d, b = %d, sum = %d, carry = %d", $time, a, b, sum, carry);
    end
endmodule