module top_tb(clk, reset, rd, rs1, rs2, imm);

	output reg clk;
	output reg reset;
	output [4:0] rd, rs1, rs2;
	output [11:0] imm;
	
	integer x;
	
	top toplevel(clk, reset, rd, rs1, rs2, imm);
	
	initial begin
		reset <= 0;
		for (x = 0; x < 19; x = x + 1) begin
			clk <= 0;
			#5
			clk <= 1;
			#5;
		end
	end

endmodule

/*module top_tb(inst, rd, rs1, rs2, imm); 


	output reg [31:0] inst;
	output [4:0] rd, rs1, rs2;
	output [11:0] imm;
	
	InstDecoder id (inst, rd, rs1, rs2, imm);
	
	initial begin
		inst <= 32'h00450693;
	end
	
endmodule*/

/*module top_tb(clk, reset, in, out);

	output reg clk, reset;
	output [7:0] in, out;
	
	ProgramCounter pc(clk, reset, in, out);
	
	initial begin
		reset <= 0;
		clk <= 0;
		#5
		clk <= 1;
		#5
		clk <= 0;
		#5
		clk <= 1;
		#5
		clk <= 0;
		#5
		clk <= 1;
		#5
		clk <= 0;
	end

endmodule*/