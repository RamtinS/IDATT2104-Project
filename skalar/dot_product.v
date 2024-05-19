
// Vi starter først med å lage en modul med innganger og utganger. 
// En modul definerer en komponent som utfører en bestemt funksjon innenfor en integrert krets. 
// Å lage en modul kan minne litt om lage en metode i et høynivå programmeringsspråk som java, 
// hvor man definerer hva metoden skal gjøre, dens paramtere og hva den skal retunrere. 
// I dette tilfellet skal vi ha to innganger, en for hver vektor, og en utgang for resultet av dot-produktet.
module dot_product(
    input [7:0] a0, a1, a2, a3, // 4-element vector a, where each index is 8 bits.  
    input [7:0] b0, b1, b2, b3, // 4-element vector b, where each index is 8 bits.  
    output [15:0] result        // Et resultat på 16 bit for å ha god med plass.
);

    // Lager noen varaibler for mellomlagrign og setter dem som wire fordi vi skal bruke assign på varaiblene. 
    wire [15:0] prod0, prod1, prod2, prod3;

    //Calucluate the product of the vectores. 
    //Utfører mulitplikasjon.
    assign prod0 = a0 * b0;
    assign prod1 = a1 * b1;
    assign prod2 = a2 * b2;
    assign prod3 = a3 * b3;

    //Sum up the values to the dot product. 
    //Summerer opp verdien av dot-produktet.
    assign result = prod0 + prod1 + prod2 + prod3;
    
endmodule // Endmodule definerer hvor scopet til modulen stopper. 

