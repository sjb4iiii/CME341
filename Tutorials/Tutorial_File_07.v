module Tutorial_File_07;

reg x1, x2, x3;

initial
	begin
		x1 = 1;
		x2 = x1;
		x3 = 0;
		#10
			x1 =  0;
			x3 =  x2;
			x2 = x1;
	end

endmodule