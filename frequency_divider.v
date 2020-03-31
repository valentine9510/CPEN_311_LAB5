module Clock_Divider_FSM (inClk, outClk, rst, countTo); 
	input inClk;  
	input rst;
	output reg outClk = 0; 
	input [31:0] countTo; 
	reg[31:0] count;
	
	always@(posedge inClk) begin 
		if (rst) begin
			count = 0;
			outClk = 0;
		end 
		else begin
			if (count <countTo) begin 
				count = count + 1; 
			end 
			else begin 
				outClk = ~outClk; 
				count = 0; 
			end 
		end
	end 

endmodule 