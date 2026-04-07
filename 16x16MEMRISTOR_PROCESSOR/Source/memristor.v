module memristor (
    input clk,
    input rst,
    input signed [7:0] voltage,
    input signed [7:0] weight_in,
    input write_enable,
    output reg signed [15:0] current
);

reg signed [7:0] weight;

always @(posedge clk or posedge rst) begin
    if (rst)
        weight <= 0;
    else if (write_enable)
        weight <= weight_in;   // PROGRAM weight
end

always @(*) begin
    current = voltage * weight;   // MAC operation
end

endmodule