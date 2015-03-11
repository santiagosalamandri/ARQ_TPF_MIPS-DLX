`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:13:04 08/27/2014
// Design Name:   alu
// Module Name:   /home/steve07-ultra/Proyectos_ISE/TP1_ALU/ALU_tb.v
// Project Name:  TP1_ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`include "definiciones.vh"
module ALU_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [3:0] op;

	// Outputs
	wire [31:0] rdo;
	wire overflow;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	alu #(8,6) uut(
		.a(a), 
		.b(b), 
		.ALUCtrl(op), 
		.ALUResult(rdo), 
		.overflow(overflow), 
		.zero(zero)
	);

	initial begin
		a = 0;
		b = 0;
		op = 0 ;
		// Espera 20ns por un reset global o el final
		#20;

//-------ADD-----------------------------//
		a = 250;
		b = 20;
		op = `ADD ;
		// Espera 20ns por un reset global o el final
		#20;
//-------SUB-----------------------------//
		a = 250;
		b = 20;
		op = `SUB ;
		// Espera 20ns por un reset global o el final
		#20;
//-------SUB_zero-----------------------------//
		a = 250;
		b = 250;
		op = `SUB ;
		// Espera 20ns por un reset global o el final
		#20;
//-------AND-----------------------------//
		a = 8'b10101010;
		b = 8'b11110000;
		op = `AND ;
		// Espera 20ns por un reset global o el final
		#20;		
//-------OR-----------------------------//
		a = 8'b10101010;
		b = 8'b11110000;
		op = `OR ;
		// Espera 20ns por un reset global o el final
		#20;		
//-------XOR-----------------------------//
		a = 8'b10101010;
		b = 8'b11110000;
		op = `XOR ;
		// Espera 20ns por un reset global o el final
		#20;
//-------NOR-----------------------------//
		a = 8'b10101010;
		b = 8'b11110000;
		op = `NOR ;
		// Espera 20ns por un reset global o el final
		#20;		
//-------SRA-----------------------------//
		a = 8'b11000000;
		b = 8'b00000011;
		op = `SRA ;
		// Espera 20ns por un reset global o el final
		#20;		
//-------SRL-----------------------------//
		a = 8'b11000000;
		b = 8'b00000011;
		op = `SRL ;
		// Espera 20ns por un reset global o el final
		#20; 

//-------SLL-----------------------------//
		a = 0xFFFFFFFF;
		b = 3;
		op = `SLL ;
		// Espera 20ns por un reset global o el final
		#20;		

//-------SLLV-----------------------------//
		a = 0xFFFFFFFF;
		b = 21;
		op = `SLLV ;
		// Espera 20ns por un reset global o el final
		#20;
//-------SRLV-----------------------------//
		a = 0xFFFFFFFF;
		b = 21;
		op = `SRLV ;
		// Espera 20ns por un reset global o el final
		#20;
//-------SRAV-----------------------------//
		a = 0xFFFF0FFF;
		b = 21;
		op = `SRAV ;
		// Espera 20ns por un reset global o el final
		#20;
//-------ADDU-----------------------------//
		a = 0xF0000000;
		b = 0xF0000000;
		op = `ADDU ;
		// Espera 20ns por un reset global o el final
		#20;
//-------SUBU-----------------------------//
		a = 0xF0000000;
		b = 0xF0000000;
		op = `SUBU ;
		// Espera 20ns por un reset global o el final
		#20;
//-------SLT-----------------------------//
		a = 0xF0000000;
		b = 0xF0000000;
		op = `SLT ;
		// Espera 20ns por un reset global o el final
		#20;
//-------SLTU-----------------------------//
		a = 0xF0000000;
		b = 0xF0000000;
		op = `SLTU ;
		// Espera 20ns por un reset global o el final
		#20;

	end
      
endmodule

