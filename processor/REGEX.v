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
// CREATED		"Mon Apr 06 21:22:04 2026"

module REGEX(
	Clock,
	flush_IDEX,
	aluscr_REG,
	jump_REG,
	branch_REG,
	memread_REG,
	memwrite_REG,
	memtoreg_REG,
	RI_REG,
	regwrite_REG,
	Stall,
	func_REG,
	imm_REG,
	rs_REG,
	rt_REG,
	WA_REG,
	aluscr_EX,
	jump_EX,
	branch_EX,
	memread_EX,
	memwrite_EX,
	memtoreg_EX,
	RI_EX,
	regwrite_EX,
	func_EX,
	imm_EX,
	rs_EX,
	rt_EX,
	WA_EX
);


input wire	Clock;
input wire	flush_IDEX;
input wire	aluscr_REG;
input wire	jump_REG;
input wire	branch_REG;
input wire	memread_REG;
input wire	memwrite_REG;
input wire	memtoreg_REG;
input wire	RI_REG;
input wire	regwrite_REG;
input wire	Stall;
input wire	[3:0] func_REG;
input wire	[15:0] imm_REG;
input wire	[15:0] rs_REG;
input wire	[15:0] rt_REG;
input wire	[2:0] WA_REG;
output reg	aluscr_EX;
output reg	jump_EX;
output reg	branch_EX;
output reg	memread_EX;
output reg	memwrite_EX;
output reg	memtoreg_EX;
output reg	RI_EX;
output reg	regwrite_EX;
output reg	[3:0] func_EX;
output reg	[15:0] imm_EX;
output reg	[15:0] rs_EX;
output reg	[15:0] rt_EX;
output reg	[2:0] WA_EX;

wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_25 = 0;




always@(posedge Clock)
begin
	begin
	rs_EX[15:0] <= rs_REG[15:0];
	end
end


always@(posedge Clock)
begin
	begin
	rt_EX[15:0] <= rt_REG[15:0];
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	memtoreg_EX <= 0;
	end
else
	begin
	memtoreg_EX <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge Clock)
begin
	begin
	WA_EX[2:0] <= WA_REG[2:0];
	end
end


always@(posedge Clock)
begin
	begin
	imm_EX[15:0] <= imm_REG[15:0];
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	regwrite_EX <= 0;
	end
else
	begin
	regwrite_EX <= SYNTHESIZED_WIRE_3;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	aluscr_EX <= 0;
	end
else
	begin
	aluscr_EX <= SYNTHESIZED_WIRE_5;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	RI_EX <= 0;
	end
else
	begin
	RI_EX <= SYNTHESIZED_WIRE_7;
	end
end

assign	SYNTHESIZED_WIRE_24 =  ~flush_IDEX;


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	branch_EX <= 0;
	end
else
	begin
	branch_EX <= SYNTHESIZED_WIRE_9;
	end
end


\21mux 	b2v_inst35(
	.S(Stall),
	.B(regwrite_REG),
	.A(SYNTHESIZED_WIRE_25),
	.Y(SYNTHESIZED_WIRE_3));


\21mux 	b2v_inst36(
	.S(Stall),
	.B(RI_REG),
	.A(SYNTHESIZED_WIRE_25),
	.Y(SYNTHESIZED_WIRE_7));


\21mux 	b2v_inst37(
	.S(Stall),
	.B(aluscr_REG),
	.A(SYNTHESIZED_WIRE_25),
	.Y(SYNTHESIZED_WIRE_5));


\21mux 	b2v_inst38(
	.S(Stall),
	.B(memread_REG),
	.A(SYNTHESIZED_WIRE_25),
	.Y(SYNTHESIZED_WIRE_21));


\21mux 	b2v_inst39(
	.S(Stall),
	.B(memwrite_REG),
	.A(SYNTHESIZED_WIRE_25),
	.Y(SYNTHESIZED_WIRE_23));


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	jump_EX <= 0;
	end
else
	begin
	jump_EX <= SYNTHESIZED_WIRE_16;
	end
end


\21mux 	b2v_inst40(
	.S(Stall),
	.B(memtoreg_REG),
	.A(SYNTHESIZED_WIRE_25),
	.Y(SYNTHESIZED_WIRE_1));


\21mux 	b2v_inst41(
	.S(Stall),
	.B(branch_REG),
	.A(SYNTHESIZED_WIRE_25),
	.Y(SYNTHESIZED_WIRE_9));


\21mux 	b2v_inst42(
	.S(Stall),
	.B(jump_REG),
	.A(SYNTHESIZED_WIRE_25),
	.Y(SYNTHESIZED_WIRE_16));



always@(posedge Clock)
begin
	begin
	func_EX[3:0] <= func_REG[3:0];
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	memread_EX <= 0;
	end
else
	begin
	memread_EX <= SYNTHESIZED_WIRE_21;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	memwrite_EX <= 0;
	end
else
	begin
	memwrite_EX <= SYNTHESIZED_WIRE_23;
	end
end


endmodule
