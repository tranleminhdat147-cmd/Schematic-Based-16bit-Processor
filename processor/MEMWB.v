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
// CREATED		"Mon Apr 06 22:17:13 2026"

module MEMWB(
	RI_MEM,
	memtoreg_MEM,
	Clock,
	regwrite_MEM,
	alu_MEM,
	dmem_MEM,
	imm_MEM,
	WA_MEM,
	RI_WB,
	memtoreg_WB,
	regwrite_WB,
	alu_WB,
	dmem_WB,
	imm_WB,
	WA_WB
);


input wire	RI_MEM;
input wire	memtoreg_MEM;
input wire	Clock;
input wire	regwrite_MEM;
input wire	[15:0] alu_MEM;
input wire	[15:0] dmem_MEM;
input wire	[15:0] imm_MEM;
input wire	[2:0] WA_MEM;
output reg	RI_WB;
output reg	memtoreg_WB;
output reg	regwrite_WB;
output reg	[15:0] alu_WB;
output reg	[15:0] dmem_WB;
output reg	[15:0] imm_WB;
output reg	[2:0] WA_WB;






always@(posedge Clock)
begin
	begin
	dmem_WB[15:0] <= dmem_MEM[15:0];
	end
end


always@(posedge Clock)
begin
	begin
	alu_WB[15:0] <= alu_MEM[15:0];
	end
end


always@(posedge Clock)
begin
	begin
	imm_WB[15:0] <= imm_MEM[15:0];
	end
end


always@(posedge Clock)
begin
	begin
	WA_WB[2:0] <= WA_MEM[2:0];
	end
end


always@(posedge Clock)
begin
	begin
	regwrite_WB <= regwrite_MEM;
	end
end


always@(posedge Clock)
begin
	begin
	RI_WB <= RI_MEM;
	end
end


always@(posedge Clock)
begin
	begin
	memtoreg_WB <= memtoreg_MEM;
	end
end


endmodule
