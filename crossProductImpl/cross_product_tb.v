`include "cross_product.v" //we have to include the cross product in our testbench.

module crossproduct_tb;

    //  Define registers, which function as input
    reg [7:0] a1, a2, a3, a4;
    reg [7:0] b1, b2, b3, b4;

    // Define wires, which function as output
    wire [7:0] c1, c2, c3, c4;

    // Instantiate the module we are about to test.
    crossproduct uut (
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
        // Assign values to a and b
        //   0             1
        a1 = 8'b00000000;  b1 = 8'b00000001;
        //   2             3
        a2 = 8'b00000010;  b2 = 8'b0000011;
        //   4             5
        a3 = 8'b00000100;  b3 = 8'b00000101;
        //   6             7
        a4 = 8'b00000110;  b4 = 8'b00000111;

        // Delay to wait for results
        #10; 

        // Show results
        $display("c1 = %d", c1);
        $display("c2 = %d", c2);
        $display("c3 = %d", c3);
        $display("c4 = %d", c4);
    end
endmodule