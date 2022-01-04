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
// CREATED		"Wed Dec 22 14:31:35 2021"

module CPU_MEMORY(
	rst,
	star,
	clk,
	sharp,
	RAM2,
	RAM4,
	RAM5,
	com7,
	com6,
	com5,
	com4,
	com3,
	com2,
	com1,
	a,
	b,
	c,
	d,
	e,
	f,
	g,
	com8
);


input wire	rst;
input wire	star;
input wire	clk;
input wire	sharp;
input wire	[7:0] RAM2;
input wire	[7:0] RAM4;
input wire	[7:0] RAM5;
output wire	com7;
output wire	com6;
output wire	com5;
output wire	com4;
output wire	com3;
output wire	com2;
output wire	com1;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;
output wire	com8;

wire	[7:0] l_in;
wire	SYNTHESIZED_WIRE_0;
wire	[2:0] SYNTHESIZED_WIRE_28;
wire	[2:0] SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_8;
wire	[7:0] SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_11;
wire	[7:0] SYNTHESIZED_WIRE_31;
wire	[7:0] SYNTHESIZED_WIRE_14;
wire	[7:0] SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	[7:0] SYNTHESIZED_WIRE_32;
wire	[7:0] SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	[7:0] SYNTHESIZED_WIRE_24;
wire	[7:0] SYNTHESIZED_WIRE_25;
wire	[7:0] SYNTHESIZED_WIRE_26;
wire	[7:0] SYNTHESIZED_WIRE_27;




assign	SYNTHESIZED_WIRE_0 = l_in[7] | l_in[5] | l_in[6] | l_in[4] | l_in[2] | l_in[3] | l_in[1] | l_in[0];


RAM_to_CPU	b2v_inst1(
	.star(star),
	.clear(sharp),
	.clk(clk),
	.rst(rst),
	.RAM2(RAM2),
	.RAM4(RAM4),
	.RAM5(RAM5),
	.RAM2_OUT(SYNTHESIZED_WIRE_14),
	.RAM4_OUT(SYNTHESIZED_WIRE_32),
	.RAM5_OUT(SYNTHESIZED_WIRE_24));


sram_8bitx8	b2v_inst10(
	.reg_ce(SYNTHESIZED_WIRE_0),
	.clk(clk),
	.rst_n(rst),
	.CE_in(SYNTHESIZED_WIRE_28),
	.CE_out2(SYNTHESIZED_WIRE_29),
	.CE_out1(SYNTHESIZED_WIRE_29),
	.CE_out0(SYNTHESIZED_WIRE_29),
	.CE_out22(SYNTHESIZED_WIRE_28),
	.CE_out21(SYNTHESIZED_WIRE_28),
	.CE_out20(SYNTHESIZED_WIRE_28),
	.din(l_in),
	.Dout2(SYNTHESIZED_WIRE_31),
	.Out(SYNTHESIZED_WIRE_18));


mov_module	b2v_inst11(
	.is_MOV(SYNTHESIZED_WIRE_8),
	.Din(SYNTHESIZED_WIRE_30),
	.Dout(SYNTHESIZED_WIRE_26));


shw_module	b2v_inst12(
	.clk(clk),
	.rst(rst),
	.is_SHW(rst),
	.Din(SYNTHESIZED_WIRE_30),
	.com8(com8),
	.com7(com7),
	.com6(com6),
	.com5(com5),
	.com4(com4),
	.com3(com3),
	.com2(com2),
	.com1(com1),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));


sub_module	b2v_inst13(
	.clk(clk),
	.rst(rst),
	.is_SUB(SYNTHESIZED_WIRE_11),
	.Dst(SYNTHESIZED_WIRE_31),
	.Src(SYNTHESIZED_WIRE_30),
	.Dout(SYNTHESIZED_WIRE_25));


trigger_8bit	b2v_inst16(
	.CLK(clk),
	.rst_n(rst),
	.Din(SYNTHESIZED_WIRE_14),
	.Dout(SYNTHESIZED_WIRE_15));


ascii_comparator	b2v_inst2(
	.ASCII_Input(SYNTHESIZED_WIRE_15),
	.is_ADD(SYNTHESIZED_WIRE_19),
	.is_SUB(SYNTHESIZED_WIRE_11),
	.is_MOV(SYNTHESIZED_WIRE_8)
	);


mux_8bit_2x1	b2v_inst3(
	.CE(SYNTHESIZED_WIRE_16),
	.s0(SYNTHESIZED_WIRE_32),
	.s1(SYNTHESIZED_WIRE_18),
	.Out(SYNTHESIZED_WIRE_30));


add_module	b2v_inst5(
	.clk(clk),
	.rst(rst),
	.is_ADD(SYNTHESIZED_WIRE_19),
	.Dst(SYNTHESIZED_WIRE_31),
	.Src(SYNTHESIZED_WIRE_30),
	.Dout(SYNTHESIZED_WIRE_27));


ascii_to_address	b2v_inst6(
	.ASCII(SYNTHESIZED_WIRE_32),
	.Binary(SYNTHESIZED_WIRE_29));


is_ascii	b2v_inst7(
	.Din(SYNTHESIZED_WIRE_32),
	.is_ascii(SYNTHESIZED_WIRE_16));


ascii_to_address	b2v_inst8(
	.ASCII(SYNTHESIZED_WIRE_24),
	.Binary(SYNTHESIZED_WIRE_28));

assign	l_in = SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_26 | SYNTHESIZED_WIRE_27;


endmodule
