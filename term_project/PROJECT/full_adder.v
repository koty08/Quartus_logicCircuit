// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Wed Dec 22 12:36:09 2021"

module full_adder(
	A,
	B,
	Cin,
	S,
	C
);


input wire	A;
input wire	B;
input wire	Cin;
output wire	S;
output wire	C;

wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;





half_adder	b2v_inst(
	.A(A),
	.B(B),
	.S(SYNTHESIZED_WIRE_4),
	.C(SYNTHESIZED_WIRE_3));

assign	SYNTHESIZED_WIRE_2 = Cin & SYNTHESIZED_WIRE_4;

assign	S = SYNTHESIZED_WIRE_4 ^ Cin;

assign	C = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;


endmodule
