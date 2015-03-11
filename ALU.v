`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:0BUS_ALUCtrl:30 08/22/2014 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`include "definiciones.vh"

module alu(a,b,ALUCtrl,ALUResult,zero, overflow);

	parameter b_dat = `BUS_DAT;
	parameter b_ALUCtrl = `BUS_ALUCtrl;


	input [b_dat-1:0] a,b;
	output [b_dat-1:0] ALUResult; 
	output overflow; 
	output zero ; 
	input [b_ALUCtrl-1:0] ALUCtrl ; 
	wire [b_dat:0] resultado;

	assign resultado = funcion_alu(a,b,ALUCtrl);
	assign ALUResult = resultado[b_dat-1:0]; 
	assign overflow = resultado[b_dat] ; 
	assign zero = bandera_Z(ALUResult) ; 

function [b_dat:0] funcion_alu; 
	input [b_dat-1:0] a,b ;
	input [b_ALUCtrl-1:0] ALUCtrl ; 
	case ( ALUCtrl ) 
		`ADD: funcion_alu = a + b;
		`SUB: funcion_alu = a - b;
		`AND: funcion_alu = a & b;
		`OR: funcion_alu = a | b;
		`NOR: funcion_alu = {1'b0,~(a | b)};//Soluciona problema con el carry que se levantaba con~(a|b) 
		`XOR: funcion_alu = a ^ b;
		`SRA: funcion_alu = $signed(a) >>> b;
		`SRL: funcion_alu = a >> b;
		`SLL: funcion_alu = a << b;
		`SLLV: funcion_alu = $signed(a) << b[4:0];
		`SRLV: funcion_alu = $signed(a) >> b[4:0];
		`SRAV: funcion_alu = $signed(a) >>> b[4:0];
		`ADDU: funcion_alu = $unsigned(a) + $unsigned(b);
		`SUBU: funcion_alu = $unsigned(a) - $unsigned(b);
		`SLT: funcion_alu = $signed(a) < $signed(b);
		`SLTU: funcion_alu = $unsigned(a) < $unsigned(b);
		default : begin
			funcion_alu = {b_dat+1{1'b0}};
			$display("ALUCtrleracion Ilegal Detectada!!"); 
		end
	endcase
endfunction

function bandera_Z ; 
	input [b_dat-1:0] res ;
	begin
		bandera_Z = (res == {b_dat+1{1'b0}});
	//bandera_Z = ~(a8[0]|a8[1]|a8[2]|a8[3]|a8[4]|a8[5]|a8[6]|a8[7]) ; // si todos los bits del ALUResult son ceros entonces pone la bandera en 1
	end 
endfunction 

endmodule