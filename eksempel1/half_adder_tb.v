`include "half_adder.v"
module tb_add;

    // Definerer input
    reg a;
    reg b;

    // Definerer output
    wire sum;
    wire carry;

    // Instansierer modul
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        
        // S
        a = 0; b = 0;
        #10;

        a = 0; b = 1;
        #10;

        a = 1; b = 0;
        #10;

        a = 1; b = 1;
        #10;
    end

    initial begin
        // Monitor the signals
        $monitor("At time %t, a = %d, b = %d, sum = %d, carry = %d", $time, a, b, sum, carry);
    end

endmodule