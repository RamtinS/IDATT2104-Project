`include "kryssprodukt.v" //Vi må ha med kryssprodukt modulen når vi lager test bench.

module kryssprodukt_tb;

    // Vi definerer to registere som virker som input.
    reg [7:0] a1, a2, a3, a4;
    reg [7:0] b1, b2, b3, b4;

    // Vi definerer en wire som virker som output.
    wire [7:0] c1, c2, c3, c4;

    // Instansierer modul og tilegner verdiene. Kan sammenlignes med at man har en konstruktør.
    kryssprodukt uut (
        .a1(a1),
        .a2(a2),
        .a3(a3),
        .a4(a4),
        .b1(b1),
        .b2(b2),
        .b3(b3),
        .b4(b4),
        .c1(c1),
        .c2(c2),
        .c3(c3),
        .c4(c4)
    );

    initial begin
        // Starter test med å tilegne ulike verider til a og b
        //   0             1
        a1 = 8'b00000000;  b1 = 8'b00000001;
        //   2             3
        a2 = 8'b00000010;  b2 = 8'b0000011;
        //   4             5
        a3 = 8'b00000100;  b3 = 8'b00000101;
        //   6             7
        a4 = 8'b00000110;  b4 = 8'b00000111;

        // Delay for å venter på resultat
        #10; 

        // Viser resultat
        $display("c1 = %d", c1);
        $display("c2 = %d", c2);
        $display("c3 = %d", c3);
        $display("c4 = %d", c4);
    end
endmodule