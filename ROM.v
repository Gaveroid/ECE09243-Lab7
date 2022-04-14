module ROM (addy,inst);
	input [7:0] addy;
	output reg [31:0]inst;
	
	always@(addy) begin //always@(posedge clk) begin
	
		case(addy)
			8'h0: inst= 32'h00450693;
			8'h4: inst= 32'h00100713;
			8'h8: inst= 32'h00b76463;
			8'h10: inst= 32'h0006a803;
			8'hc: inst= 32'h00008067;
			8'h14: inst= 32'h00068613;
			8'h18: inst= 32'h00070793;
			8'h1c: inst= 32'hffc62883;
			8'h20: inst= 32'h01185a63;
			8'h24: inst= 32'h01162023;
			8'h28: inst= 32'hfff78793;
			8'h2c: inst= 32'hffc60613;
			8'h30: inst= 32'hfe0796e3;
			8'h34: inst= 32'h00279793;
			8'h38: inst= 32'h00f50763;
			8'h3c: inst= 32'h0107a023;
			8'h40: inst= 32'h00170713;
			8'h44: inst= 32'h00468693;
			8'h48: inst= 32'hfc1ff06f;
			endcase
		end
endmodule 
			
			