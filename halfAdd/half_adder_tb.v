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
        // Starter test med å tilegne ulike verider til a og b
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
        // Hver gang verdiene ENDRES, skal det printes/vises ut i konsollen
        $monitor("At time %t, a = %d, b = %d, sum = %d, carry = %d", $time, a, b, sum, carry);
    end
endmodule