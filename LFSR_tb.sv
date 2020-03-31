`timescale 1ns/1ns

module five_bit_LFSR_tb;

logic clk,reset;
logic [4:0]out;   


five_bit_LFSR dut (.reset(reset), .clk(clk), .out(out) );

initial 
begin
reset = 1'b1; #2
reset = 1'b0;

end

always
		begin
		clk <=1; #1;
		clk <=0; #1;

		end

endmodule