// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Tue Apr 07 21:53:57 2026"

module Stall(
	IDEX_Regwrite,
	EXMEM_Regwrite6,
	EXMEM_rd,
	IDEX_rd,
	IFID_rsa,
	IFID_rsb,
	Stall
);


input wire	IDEX_Regwrite;
input wire	EXMEM_Regwrite6;
input wire	[2:0] EXMEM_rd;
input wire	[2:0] IDEX_rd;
input wire	[2:0] IFID_rsa;
input wire	[2:0] IFID_rsb;
output wire	Stall;

wire	[2:0] a;
wire	[2:0] b;
wire	[2:0] c;
wire	[2:0] d;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_34 = 0;
assign	SYNTHESIZED_WIRE_35 = 0;



assign	SYNTHESIZED_WIRE_9 = a[2] ^ b[2];

assign	SYNTHESIZED_WIRE_27 = a[2] ^ SYNTHESIZED_WIRE_34;

assign	Stall = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_10 = a[1] ^ b[1];

assign	SYNTHESIZED_WIRE_11 = a[0] ^ b[0];

assign	SYNTHESIZED_WIRE_12 = a[2] ^ c[2];

assign	SYNTHESIZED_WIRE_2 = IDEX_Regwrite & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_13 = a[1] ^ c[1];

assign	SYNTHESIZED_WIRE_14 = a[0] ^ c[0];

assign	SYNTHESIZED_WIRE_25 = a[1] ^ SYNTHESIZED_WIRE_34;

assign	SYNTHESIZED_WIRE_26 = a[0] ^ SYNTHESIZED_WIRE_34;

assign	SYNTHESIZED_WIRE_18 = d[1] ^ b[1];

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_19 = d[0] ^ b[0];

assign	SYNTHESIZED_WIRE_20 = d[2] ^ c[2];

assign	SYNTHESIZED_WIRE_8 = ~(SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11);

assign	SYNTHESIZED_WIRE_7 = ~(SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14);


assign	SYNTHESIZED_WIRE_21 = d[1] ^ c[1];

assign	SYNTHESIZED_WIRE_22 = d[0] ^ c[0];

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_16 = ~(SYNTHESIZED_WIRE_17 | SYNTHESIZED_WIRE_18 | SYNTHESIZED_WIRE_19);

assign	SYNTHESIZED_WIRE_15 = ~(SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_22);

assign	SYNTHESIZED_WIRE_31 = d[1] ^ SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_32 = d[0] ^ SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_26 | SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_33 = d[2] ^ SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_1 = EXMEM_Regwrite6 & SYNTHESIZED_WIRE_29 & SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_31 | SYNTHESIZED_WIRE_32 | SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_17 = d[2] ^ b[2];


assign	d = EXMEM_rd;
assign	c = IFID_rsb;
assign	b = IFID_rsa;
assign	a = IDEX_rd;

endmodule
