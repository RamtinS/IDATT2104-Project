`timescale 1ns/1ns
`include "add.v"

module tb_add;

    // Inputs
    reg [7:0] A;
    reg [7:0] B;

    // Output
    wire [8:0] C;

    // Instantiate the Unit Under Test (UUT)
    add uut (
        .A(A),
        .B(B),
        .C(C)
    );

    initial begin
        // Initialize Inputs
        A = 0;
        B = 0;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Test cases
        A = 8'b00000001; B = 8'b00000001; #10;  // Test 1 + 1 = 2
        A = 8'b00000010; B = 8'b00000011; #10;  // Test 2 + 3 = 5
        A = 8'b11111111; B = 8'b00000001; #10;  // Test 255 + 1 = 0 (overflow)
        A = 8'b01010101; B = 8'b10101010; #10;  // Test 85 + 170 = 255
        A = 8'b11110000; B = 8'b00001111; #10;  // Test 240 + 15 = 255

        // Additional test cases
        A = 8'b10000000; B = 8'b10000000; #10;  // Test 128 + 128 = 0 (overflow)
        A = 8'b01111111; B = 8'b00000001; #10;  // Test 127 + 1 = 128
        A = 8'b00000000; B = 8'b00000000; #10;  // Test 0 + 0 = 0
        A = 8'b11111111; B = 8'b11111111; #10;  // Test 255 + 255 = 254 (overflow)

        // Finish simulation
        $finish;
    end

    initial begin
        // Monitor the signals
        $monitor("At time %t, A = %d, B = %d, C = %d", $time, A, B, C);
    end

endmodule