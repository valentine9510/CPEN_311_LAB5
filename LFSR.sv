`default_nettype none
module five_bit_LFSR (reset,clk,out);

input wire clk,reset;
logic [4:0] d = 5'h01;
wire feedback;
output reg [4:0] out; // = 5'h01;

 
always_ff @(posedge clk)
begin
if (reset) out <= 5'h01;
else	
begin
out <= d;
end
end

always_comb
begin
d[3] <= out[4];
d[2] <= out[3];
d[1] <= out[2];
d[0] <= out[1];
d[4] <= out[0] ^ out[2]; //XOR 
end

endmodule


