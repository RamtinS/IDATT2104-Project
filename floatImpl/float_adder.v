module float_adder(
    // Signed er en datatype som indikerer at tall skal tolkes som et heltall, både postive eller negative. 
    // signed [7:0] er et 8 bits heltall.
    // Det er satt av 8 bits før punktum og 4 bits etter. 
    input signed [7:0] float_a_integer,     // Heltallsdelen for tall A. 
    input signed [22:0] float_a_decimal,            // Desimaldelen for tall A
    input signed [7:0] float_b_integer,     // Heltallsdelen for tall B
    input signed [22:0] float_b_decimal,            // Desimaldelen for tall B
    output reg signed [7:0] result_integer,  // Heltallsdelen for resultatet
    output reg signed [22:0] result_decimal         // Desimaldelen for resultatet
);

reg [31:0] sum;  // Lagringsenhet for den midlertidige summen

// Brukes always for utføre operasjonen på output med en gang input varaibelene endres. 
// @* betyr at always-blokken vil kjøre hver gang input variablene endres.
// Begin og end funker som krøllparanteser, og definerer scopet til koden. 
always @* begin     
    
    // Flytter heltallene 23 bits til venstre.
    sum = (float_a_integer << 23) + (float_a_decimal) + (float_b_integer << 23) + (float_b_decimal); 
    
    if (sum[22:0] >= 10) begin 
        sum[30:23] += 1;
        sum[22:0] -= 10;
    end

    result_integer = sum[30:23];  // De første 8 bits fra venstre utgjør heltallsdelen i summen
    result_decimal = sum[22:0];  // De resterende 8 bits fra høyre utgjør desimaldelen i summen
end

endmodule

// Når en variabel tildels en verdi inne i en always-blokk, må den være deklarert som reg. 