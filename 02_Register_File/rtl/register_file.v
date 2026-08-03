module register_file (
    input wire D,
    input wire CLK,
    input wire WE,
    output reg Q
);

always @(posedge CLK)
begin
    if (WE)
        Q <= D;
end

endmodule
