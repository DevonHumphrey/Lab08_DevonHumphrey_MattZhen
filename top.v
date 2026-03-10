module top(
	input [15:0]sw,
	input btnL, btnU, btnD, btnR, btnC,
	output [15:0]led
);

	wire [1:0] concatMux = {btnU, btnL};
	wire [1:0] concatDemux = {btnR, btnD};
	wire [3:0] between; 

	ternary_4_mux ternary_4_mux_inst(
		.A(sw[3:0]),
		.B(sw[7:4]),
		.C(sw[11:8]),
		.D(sw[15:12]),
		.Enable(btnC),
		.Sel(concatMux),
		.Y(between) 
	);

	Demux Demux_inst(
		.In(between),
		.Lib(led[3:0]),
		.Fire_Dept(led[7:4]),
		.School(led[11:8]),
		.Ribs(led[15:12]),
		.Enable(btnC),
		.Sel(concatDemux)
	);

endmodule