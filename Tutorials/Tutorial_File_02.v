module Tutorial_File_02;

reg clk;
reg [7:0] count, x1, x2, x3;

initial
	begin
		clk = 0;
		forever #5 clk = ~clk;
	end

initial
	count = 8'h00;

always @ (posedge clk)
	count = count + 1;

initial
	begin
		#12 x1 = count;
		#10 x2 = count;
		#7 x3 = count;
		#15 x1 = count;
	end

endmodule