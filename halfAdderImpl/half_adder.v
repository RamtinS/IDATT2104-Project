module half_adder (
    //Define output and input
    input a,
    input b,
    output sum,
    output carry
);

    //Manipulate input by utilizing XOR and AND operators.
    assign sum = a ^ b;
    assign carry = a & b;
endmodule