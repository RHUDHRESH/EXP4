module full(A, B, Cin, S, Cout, difference, borrow);
    input A, B, Cin; // Inputs for Full Adder
    output S, Cout;   // Outputs for Full Adder
    output difference, borrow; // Outputs for Full Subtractor
    
    // Full Adder Logic
    assign S = A ^ B ^ Cin;        // Sum
    assign Cout = (A & B) | (Cin & (A ^ B)); // Carry out
    
    // Full Subtractor Logic
    assign difference = A ^ B ^ borrow; // Difference
    assign borrow = (~A & B) | (borrow & ~A); // Borrow
endmodule
