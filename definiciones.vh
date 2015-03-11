`define BUS_DAT 32 				//ancho del bus de datos 
`define BUS_DAT_MSB `BUS_DAT-1 	//ancho del bus de datos MENOS UNO
`define BUS_ALUCtrl 4 				//cantidad de bits de operaciones
`define BUS_ALUCtrl_MSB `BUS_ALUCtrl-1 	//cantidad MENOS UNO de bits de operaciones
/*
`define ADD  `BUS_ALUCtrl'b100000
`define SUB  `BUS_ALUCtrl'b100010
`define AND  `BUS_ALUCtrl'b100100
`define OR   `BUS_ALUCtrl'b100101
`define NOR  `BUS_ALUCtrl'b100111
`define XOR  `BUS_ALUCtrl'b100110

`define SLL  `BUS_ALUCtrl'b000000
`define SRL  `BUS_ALUCtrl'b000010
`define SRA  `BUS_ALUCtrl'b000011
`define SLLV `BUS_ALUCtrl'b000100
`define SRLV `BUS_ALUCtrl'b000110
`define SRAV `BUS_ALUCtrl'b000111

`define ADDU `BUS_ALUCtrl'b100001
`define SUBU `BUS_ALUCtrl'b100011

`define SLT `BUS_ALUCtrl'b101010
`define SLTU `BUS_ALUCtrl'b101011
*/
`define AND  `BUS_ALUCtrl'b0000
`define OR   `BUS_ALUCtrl'b0001
`define ADD  `BUS_ALUCtrl'b0010
`define ADDU `BUS_ALUCtrl'b0011
`define NOR  `BUS_ALUCtrl'b0100
`define XOR  `BUS_ALUCtrl'b0101
`define SUB  `BUS_ALUCtrl'b0110
`define SUBU `BUS_ALUCtrl'b0111
`define SLL  `BUS_ALUCtrl'b1000
`define SRL  `BUS_ALUCtrl'b1001
`define SRA  `BUS_ALUCtrl'b1010
`define SLLV `BUS_ALUCtrl'b1011
`define SRLV `BUS_ALUCtrl'b1100
`define SRAV `BUS_ALUCtrl'b1101
`define SLT  `BUS_ALUCtrl'b1110
`define SLTU `BUS_ALUCtrl'b1111



//`define JR `BUS_ALUCtrl'b100001

//`define LB `BUS_ALUCtrl'b100001
//`define LH `BUS_ALUCtrl'b100001
//`define LW `BUS_ALUCtrl'b100001
//`define LWU `BUS_ALUCtrl'b100001
//`define LBU `BUS_ALUCtrl'b100001
//`define LHU `BUS_ALUCtrl'b100001
//`define SB `BUS_ALUCtrl'b100001
//`define SH `BUS_ALUCtrl'b100001
//`define SW `BUS_ALUCtrl'b100001
//`define ADDI `BUS_ALUCtrl'b100001
//`define ADDIU `BUS_ALUCtrl'b100001
//`define ANDI `BUS_ALUCtrl'b100001
//`define ORI `BUS_ALUCtrl'b100001
//`define XORI `BUS_ALUCtrl'b100001
//`define LUI `BUS_ALUCtrl'b100001 // fuera del alu en el 'Sign Extended'
//`define SLTI `BUS_ALUCtrl'b100001// op equivalente SLT el inmediato es signed
//`define SLTIU `BUS_ALUCtrl'b100001//op equivalente SLT el inmediato es unsigned

/*El control de la alu ejecuta un SUB de los operandos, se setea la bandera de zero 
y el control principal determina si la operacion fue de algún branch o un SUB/U */
//`define BEQ `BUS_ALUCtrl'b000100
//`define BNE `BUS_ALUCtrl'b000101

//`define J `BUS_ALUCtrl'b100001//no entra en la alu, se ocupa el shifter (>>2) y el adder superior o de salto
//`define JAL `BUS_ALUCtrl'b100001//
//`define JALR `BUS_ALUCtrl'b100001//