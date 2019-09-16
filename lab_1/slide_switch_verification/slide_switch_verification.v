module slide_switch_verification (
input [17:0] SW,
output [6:0] HEX1,
output [17:7] LEDR);

assign HEX1[6:0] = SW[6:0];
assign LEDR[17:7] = SW[17:7];
endmodule