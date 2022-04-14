module ProgramCounter(clk, reset, in, out);

	input clk, reset;
	input [7:0] in;
	output reg [7:0] out;
	
	initial out = 8'd0;
	
	always @(posedge clk or posedge reset) begin
		
		if (reset) begin
			out <= 8'd0;
		end
		else begin
			out <= in; //out + 4;
		end
			
	end

endmodule
