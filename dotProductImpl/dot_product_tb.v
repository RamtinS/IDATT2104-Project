// Defines a test bench module to test the dot_product module.
module dot_product_tb;
   
    // Declare variables as registeres to represent the vectors. 
    // Use reg because they are assigned values inside the initial block.
    // reg can hold values and be changed during simulation.
    reg [7:0] a0, a1, a2, a3;
    reg [7:0] b0, b1, b2, b3;

    // Declare a variable to represent the result of the operation. 
    // Declared as wire beacuse it is used to carry data out of the dot_product module.
    wire [15:0] result;

    // Instantiate the module to be tested (unit under test).
    dot_product uut (
        .a0(a0), .a1(a1), .a2(a2), .a3(a3),
        .b0(b0), .b1(b1), .b2(b2), .b3(b3),
        .result(result)
    );

    // Create an initial block to assign test data and print the result. 
    // This code will run at the start of the simulation.
    initial begin
     
        // The values can be assigned in different ways. We can use integers, hex, bits, etc. 
        // vector a = [1, 2, 3, 4]
        a0 = 8'b00000001; // An 8-bit representation of the number 1.
        a1 = 8'b00000010; // An 8-bit representation of the number 2.
        a2 = 8'b00000011; // An 8-bit representation of the number 3.
        a3 = 8'b00000100; // An 8-bit representation of the number 4.
        
        // vector b = [1, 2, 3, 4] 
        b0 = 8'b00000001; 
        b1 = 8'b00000010; 
        b2 = 8'b00000011; 
        b3 = 8'b00000100; 

        // result = (1*1)+(2*2)+(3*3)+(4*4)=30
        
        #10; // Wait for the result before printing out the result.

        $display("Dot product: %d", result); // Display result.
        
        $finish; // Finish simulation after result is deisplayed. 
    end

endmodule

