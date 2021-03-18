#include <stdio.h>

int Opcodes(char *token){

	if (strcmp(token, "ld") == 0) return 0b000000;	 			//0
	else if (strcmp(token, "st") == 0) return 0b000001; 		//1
	else if (strcmp(token, "move") == 0) return 0b000010;		//2

	else if (strcmp(token, "neg") == 0) return 0b000011;		//3
	else if (strcmp(token, "not") == 0) return 0b000100;		//4
	else if (strcmp(token, "add") == 0) return 0b000101;		//5
	else if (strcmp(token, "sub") == 0) return 0b000110;		//6
	else if (strcmp(token, "mult") == 0) return 0b000111;		//7
	else if (strcmp(token, "div") == 0) return 0b001000;		//8
	else if (strcmp(token, "and") == 0) return 0b001001;		//9
	else if (strcmp(token, "or") == 0) return 0b001010;			//10
	else if (strcmp(token, "sll") == 0) return 0b001011;		//11
	else if (strcmp(token, "slr") == 0) return 0b001100;		//12
	else if (strcmp(token, "li") == 0) return 0b001101;			//13
	else if (strcmp(token, "beqz") == 0) return 0b001110;		//14
	else if (strcmp(token, "bnez") == 0) return 0b001111;		//15
	else if (strcmp(token, "bgtz") == 0) return 0b010000;		//16
	else if (strcmp(token, "blez") == 0) return 0b010001;		//17

	else if (strcmp(token, "addi") == 0) return 0b010010;		//18
	else if (strcmp(token, "subi") == 0) return 0b010011;		//19
	else if (strcmp(token, "multi") == 0) return 0b010100;		//20
	else if (strcmp(token, "divi") == 0) return 0b010101;		//21
	else if (strcmp(token, "andi") == 0) return 0b010110;		//22
	else if (strcmp(token, "ori") == 0) return 0b010111;		//23
	else if (strcmp(token, "beq") == 0) return 0b011000;		//24
	else if (strcmp(token, "bne") == 0) return 0b011001;		//25
	else if (strcmp(token, "bgt") == 0) return 0b011010;		//26
	else if (strcmp(token, "bge") == 0) return 0b011011;		//27
	else if (strcmp(token, "blt") == 0) return 0b011100;		//28
	else if (strcmp(token, "ble") == 0) return 0b011101;		//29
	else if (strcmp(token, "b") == 0) return 0b011110;			//30

	return ;
}

int Resgistradores(char *reg){
	if (strcmp(reg, "R0") == 0) return 0b00000;
	else if (strcmp(reg, "R1") == 0) return 0b00001;
	else if (strcmp(reg, "R2") == 0) return 0b00010;
	else if (strcmp(reg, "R3") == 0) return 0b00011;
	else if (strcmp(reg, "R4") == 0) return 0b00100;
	else if (strcmp(reg, "R5") == 0) return 0b00101;
	else if (strcmp(reg, "R6") == 0) return 0b00110;
	else if (strcmp(reg, "R7") == 0) return 0b00111;
	else if (strcmp(reg, "R8") == 0) return 0b01000;
	else if (strcmp(reg, "R9") == 0) return 0b01001;
	else if (strcmp(reg, "R10") == 0) return 0b01010;
	else if (strcmp(reg, "R11") == 0) return 0b01011;
	else if (strcmp(reg, "R12") == 0) return 0b01100;
	else if (strcmp(reg, "R13") == 0) return 0b01101;
	else if (strcmp(reg, "R14") == 0) return 0b01110;
	else if (strcmp(reg, "R15") == 0) return 0b01111;
	else if (strcmp(reg, "R16") == 0) return 0b10000;
	else if (strcmp(reg, "R17") == 0) return 0b10001;
	else if (strcmp(reg, "R18") == 0) return 0b10010;
	else if (strcmp(reg, "R19") == 0) return 0b10011;
	else if (strcmp(reg, "R20") == 0) return 0b10100;
	else if (strcmp(reg, "R21") == 0) return 0b10101;
	else if (strcmp(reg, "R22") == 0) return 0b10110;
	else if (strcmp(reg, "R23") == 0) return 0b10111;
	else if (strcmp(reg, "R24") == 0) return 0b11000;
	else if (strcmp(reg, "R25") == 0) return 0b11001;
	else if (strcmp(reg, "R26") == 0) return 0b11010;
	else if (strcmp(reg, "R27") == 0) return 0b11011;
	else if (strcmp(reg, "R28") == 0) return 0b11100;
	else if (strcmp(reg, "R29") == 0) return 0b11101;
	else if (strcmp(reg, "R30") == 0) return 0b11110;
	else if (strcmp(reg, "R31") == 0) return 0b11111;
}

int ComparaTypeOpcpde(int vl){
	if(vl>=0 && vl<5)
		return 1;
	else if(vl>=5 && vl<13)
		return 2;
	else if(vl>=13 && vl<18)
		return 3;
	else if(vl>=18 && vl<29)
		return 4;
	else
		return 5;
}
