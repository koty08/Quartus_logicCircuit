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
// CREATED		"Tue Nov 02 20:09:50 2021"

module assignment_9(
	one,
	two,
	three,
	four,
	five,
	six,
	seven,
	eight,
	nine,
	zero,
	clk,
	rst,
	Output1,
	Output2
);


input wire	one;
input wire	two;
input wire	three;
input wire	four;
input wire	five;
input wire	six;
input wire	seven;
input wire	eight;
input wire	nine;
input wire	zero;
input wire	clk;
input wire	rst;
output wire	[3:0] Output1;
output wire	[3:0] Output2;

wire	[3:0] Din;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[3:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;

assign	Output1 = SYNTHESIZED_WIRE_4;




four_bit_register	b2v_inst(
	.Ce(SYNTHESIZED_WIRE_6),
	.CLK(clk),
	.RST_N(rst),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_4));

assign	SYNTHESIZED_WIRE_1 = six | eight | nine | seven;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;


four_bit_register	b2v_inst4(
	.Ce(SYNTHESIZED_WIRE_6),
	.CLK(clk),
	.RST_N(rst),
	.Din(SYNTHESIZED_WIRE_4),
	.Dout(Output2));


decimal_to_binary	b2v_inst6(
	.d0(zero),
	.d1(one),
	.d2(two),
	.d3(three),
	.d4(four),
	.d5(five),
	.d6(six),
	.d7(seven),
	.d8(eight),
	.d9(nine),
	.b0(Din[0]),
	.b1(Din[1]),
	.b2(Din[2]),
	.b3(Din[3]));


trigger	b2v_inst7(
	.Din(SYNTHESIZED_WIRE_5),
	.CLK(clk),
	.RST(rst),
	.Dout(SYNTHESIZED_WIRE_6));

assign	SYNTHESIZED_WIRE_2 = zero | two | one | three | four | five;


endmodule
