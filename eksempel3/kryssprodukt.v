module kryssprodukt (
    //Definerer input verdier som skal være elementer i en vektor.
    //Verdiene er en array av bits som stiger fra 0-8, altså 8 bits.
    //Dette vil da bety at hvert element kan da inneholde 256 forskjellige tall. 
    input [7:0] a1, a2, a3, a4,
    input [7:0] b1, b2, b3, b4,

    //Definerer en output som skal skal være elementer i resulterende vektor.
    //Verdiene er en array av bits som stiger fra 0-9, altså 9 bits.
    //Dette betyr at hvert element kan da representere opptil 512 tall. Dette er gjort da 
    //vi ikke støtter på problemer ved å plusse to tall som representerer 256.
    output [7:0] c1, c2, c3, c4
);

    //Vi tilegner hvert element i den resulterende vektoren produktet av input vektor 1 og input vektor 2
    assign c1 = a1 * b1; 
    assign c2 = a2 * b2; 
    assign c3 = a3 * b3;
    assign c4 = a4 * b4;
endmodule