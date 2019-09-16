module Tutorial_File_15;

reg a, q;

initial
	begin
		a = 0;
		#10 a = 1;
		#10 a = 0;
		#30 a = 1;
		#20 a = 0;
	end
	
initial
	begin
		q = 0;
		#7 q = a;
		#15 q = a;
		#5 q = a;
		#30 q = a;
	end

endmodule