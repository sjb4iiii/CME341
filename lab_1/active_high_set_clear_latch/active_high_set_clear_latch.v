module active_high_set_clear_latch(
input set, clear,
output Q, Q_n);
nor nor_1 (Q, clear, Q_n);
nor nor_2 (Q_n, set, Q);
endmodule