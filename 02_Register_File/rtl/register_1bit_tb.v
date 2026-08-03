`timescale 1ns/1ps

module register_1bit_tb;

// Inputs to DUT
reg D;
reg CLK;
reg WE;

// Output from DUT
wire Q;

// Instantiate the Unit Under Test (UUT)
register_file uut (
    .D(D),
    .CLK(CLK),
    .WE(WE),
    .Q(Q)
);

// Clock Generation
always #5 CLK = ~CLK;

// Test Procedure
initial begin

    // Generate waveform file
    $dumpfile("register_1bit.vcd");
    $dumpvars(0, register_1bit_tb);

    // Display heading
    $display("Time\tCLK\tWE\tD\tQ");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, CLK, WE, D, Q);

    // Initialize signals
    CLK = 0;
    D   = 0;
    WE  = 0;

    // ----------------------------
    // Test Case 1
    // WE = 0, D = 1
    // Register should HOLD previous value
    // ----------------------------
    #10;
    D = 1;
    WE = 0;

    // ----------------------------
    // Test Case 2
    // WE = 1, D = 1
    // Register should LOAD 1
    // ----------------------------
    #10;
    WE = 1;

    // ----------------------------
    // Test Case 3
    // WE = 0, D = 0
    // Register should HOLD previous value
    // ----------------------------
    #10;
    D = 0;
    WE = 0;

    // ----------------------------
    // Test Case 4
    // WE = 1, D = 0
    // Register should LOAD 0
    // ----------------------------
    #10;
    WE = 1;

    // End simulation
    #10;
    $finish;

end

endmodule
