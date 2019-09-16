module Tutorial_File_10;

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

always @ (*)
	begin
		x1 <= #12 count;
		x2 <= #10 count;
		x3 <= #7 count;
		x1 <= #15 count;
	end

endmodule