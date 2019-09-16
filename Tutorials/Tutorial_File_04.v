module Tutorial_File_04;

reg clk;
reg [7:0] count, x1, x2;

initial
	begin
		clk = 0;
		forever #5 clk = ~clk;
	end

initial
	count = 8'h00;

always @ (posedge clk)
	count = count + 1;

always @ (*)
	begin
		x1 = count;
		#10 x1 = count;
		#20 x2 = count;
		#8 x1 = count;
	end

endmodule