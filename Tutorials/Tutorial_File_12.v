module Tutorial_File_12;

reg clk;
reg [7:0] counter, q;

initial
	begin
		clk = 0;
		forever #5 clk = ~clk;
	end
	
initial
	counter = 8'h00;

always @ (posedge clk)
	counter = counter + 1;

initial
	begin
		q = 8'h00;
		#50 q = 8'h80;
	end

always @ (*)
	q = #19 counter;

endmodule