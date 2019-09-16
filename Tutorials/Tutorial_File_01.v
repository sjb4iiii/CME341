module Tutorial_File_01;

reg b, c, q;

initial
	begin
		b <= 0;
		b <= #10 1;
		b <= #20 0;
	end

always @ (b or c)
	begin
		q <= #1 b ^ c;
		q <= #3 0;
	end

initial
	begin
		c <= 0;
		c <= #15 1;
	end

endmodule