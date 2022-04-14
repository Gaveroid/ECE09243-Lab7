module top(clk, reset, rd, rs1, rs2, imm);

	input clk, reset;
	output [4:0] rd;
	output [4:0] rs1;
	output [4:0] rs2;
	output [11:0] imm;
	
	wire [7:0] pc_in;
	wire [7:0] pc_out;
	wire [31:0] is;
	wire cin, cout;
	
	ProgramCounter pc(clk, reset, pc_in, pc_out);
	ROM mem(pc_out, is);
	Adder add(pc_out, 8'd4, pc_in);
	InstDecoder id(is, rd, rs1, rs2, imm);
	
endmodule
