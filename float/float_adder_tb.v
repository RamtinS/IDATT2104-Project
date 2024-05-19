module float_adder_tb;

    // Definer parametere. De funker som konstanter som brukes gjennom hele koden. Gjør koden fleksibel og gjennbrukbar.
    parameter INTEGER_WIDTH = 8; // Bruker integer for heltall og bit representasjon. 
    parameter DECIMAL_WIDTH = 23;

    // Definer signaler, som kan ses på som varaiabler i høynivå språk. 
     // Bruker reg fordi variabelen skal lagre verdier og endres i løpet av simuleringen.
    reg signed [DECIMAL_WIDTH-1:0] float_a_decimal;
    reg signed [INTEGER_WIDTH-1:0] float_a_integer; 
    reg signed [INTEGER_WIDTH-1:0] float_b_integer;
    reg signed [DECIMAL_WIDTH-1:0] float_b_decimal;
    // Bruker wire for å definere signaler som bærer informasjon ut av modulen.
    wire signed [INTEGER_WIDTH-1:0] result_integer; 
    wire signed [DECIMAL_WIDTH-1:0] result_decimal;

    // Instansier modulen som skal testes (unit under test).
    float_adder uut (
        .float_a_integer(float_a_integer),
        .float_a_decimal(float_a_decimal),
        .float_b_integer(float_b_integer),
        .float_b_decimal(float_b_decimal),
        .result_integer(result_integer),
        .result_decimal(result_decimal)
    );

    // Initial blokk for å tilordne testverdier og skrive ut resultatet
    initial begin 
        // Tilordner testverdier. 
        float_a_integer = 8'b00000100;   // 8-bit verdi for heltallsdelen av float A. Representerer tallet 4. 
        float_a_decimal = 8'b00000001;   // Testverdi for desimaldelen av float A. Verdi 1
        float_b_integer = 8'b00000010;   // Testverdi for heltallsdelen av float B. Verdi 2.
        float_b_decimal = 8'b00000001;   // Testverdi for desimaldelen av float B. Verdi 1.

        // Vent litt før vi sjekker resultatet
        #10; // Trenger delay for at resultet skal komme gjennom før det printes.

        // Skriv ut resultatet
        $display("Result: %0d.%0d", result_integer, result_decimal);

        $finish; // Stops the simulation. 
    end 
endmodule

