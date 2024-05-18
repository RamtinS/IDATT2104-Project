module half_adder (
    //Definerer input og output
    input a,
    input b,
    output sum,
    output carry
);

    //Behandling av input ved bruk av XOR, og AND porter.
    assign sum = a ^ b;
    assign carry = a & b;
endmodule