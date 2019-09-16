module Tutorial_File_06;

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
		x1 = #10 count;
		x2 = #20 count;
		x1 = #8 count;
	end

endmodule