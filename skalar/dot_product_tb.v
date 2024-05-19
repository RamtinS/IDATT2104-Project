// Definerer en testbenkmodul for å teste dot_product-modulen.
module dot_product_tb;
    // Deklarer noen varaibler for å reprsentere vektorene. 
    // Setter dem som register fordi variabelen skal lagre verdier og endres i løpet av simuleringen. 
    reg [7:0] a0, a1, a2, a3;
    reg [7:0] b0, b1, b2, b3;
    // Deklarerer variabel for å represnetere resultatet til operajsonen. 
    // Dette er en wire, fordi den brukes til å føre infromasjon ut av modulen. 
    wire [15:0] result;
    // Instansier modulen som skal testes (unit under test).
    dot_product uut (
        .a0(a0), .a1(a1), .a2(a2), .a3(a3),
        .b0(b0), .b1(b1), .b2(b2), .b3(b3),
        .result(result)
    );
    // Lager en initial blokk for å tilordne testverdier og skrive ut resultatet. 
    // Denne koden vil kjøre ved starten av simuleringen.
    initial begin
        // Create the test data for the vectors.
        // Lager noen test data for vektorene. 
        // Dette kan gjøre på forksjelige måter. Vi kan bruke heltall, hex, bits, osv. 
        a0 = 8'b00000001; // En 8 bit representasjon av tallet 1.
        a1 = 8'b00000010; // En 8 bit representasjon av tallet 2.
        a2 = 8'b00000011; // En 8 bit representasjon av tallet 3.
        a3 = 8'b00000100; // En 8 bit representasjon av tallet 4.
        
        b0 = 8'b00000001; 
        b1 = 8'b00000010; 
        b2 = 8'b00000011; 
        b3 = 8'b00000100; 
        // vektor a = [1, 2, 3, 4] 
        // vektor b = [1, 2, 3, 4] 
        // result c = (1*1)+(2*2)+(3*3)+(4*4)=30
        // Wait for the result before printing out the result.
        #10;
        // Display result.
        $display("Dot product: %d", result);
        // Finish simulation
        $finish;
    end

endmodule

