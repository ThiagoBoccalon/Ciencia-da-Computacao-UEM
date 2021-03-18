#include <stdio.h>
#include <string.h>
#include <stdlib.h>


#include "main.h"


int* fetch_instructionOPCode(char* inst){

	if(strcmp(inst, "sd")==0){
		return SD;
	}
	else if(strcmp(inst, "ld")==0){
		return LD;
	}
	else if(strcmp(inst, "li")==0){
		return LI;
	}
	else if(strcmp(inst, "beq")==0){
		return BEQ;
	}
	else if(strcmp(inst, "bne")==0){
		return BNE;
	}
	else if(strcmp(inst, "bg")==0){
		return BG;
	}
	else if(strcmp(inst, "bge")==0){
		return BGE;
	}
	else if(strcmp(inst, "bl")==0){
		return BL;
	}
	else if(strcmp(inst, "ble")==0){
		return BLE;
	}
	else if(strcmp(inst, "jump")==0){
		return JUMP;
	}
	else if(strcmp(inst, "exit")==0){
		return EXIT;
	}
	else if(strcmp(inst, "add")==0){
		return ADD;
	}
	else if(strcmp(inst, "addi")==0){
		return ADDI;
	}
	else if(strcmp(inst, "sub")==0){
		return SUB;
	}
	else if(strcmp(inst, "subi")==0){
		return SUBI;
	}
	else if(strcmp(inst, "mult")==0){
		return MULT;
	}
	else if(strcmp(inst, "multi")==0){
		return MULTI;
	}
	else if(strcmp(inst, "div")==0){
		return DIV;
	}
	else if(strcmp(inst, "divi")==0){
		return DIVI;
	}
	else if(strcmp(inst, "nop")==0){
		return NOP;
	}
	else if(strcmp(inst, "\n")==0){
		return NULL;
	}
	else{
		abort();	
	}
}

int* fetch_register(char* reg){
	char *newline = strchr( reg, '\n' );
	if ( newline )
	  *newline = '\0';

	if(strcmp(reg, "R0")==0){
		return R0;
	}
	else if(strcmp(reg, "R1")==0){
		return R1;
	}
	else if(strcmp(reg, "R2")==0){
		return R2;
	}	
	else if(strcmp(reg, "R3")==0){
		return R3;
	}
	else if(strcmp(reg, "R4")==0){
		return R4;
	}
	else if(strcmp(reg, "R5")==0){
		return R5;
	}
	else if(strcmp(reg, "R6")==0){
		return R6;
	}
	else if(strcmp(reg, "R7")==0){
		return R7;
	}
	else if(strcmp(reg, "R8")==0){
		return R8;
	}
	else if(strcmp(reg, "R9")==0){
		return R9;
	}
	else if(strcmp(reg, "R10")==0){

		return R10;
	}
	else if(strcmp(reg, "R11")==0){
		return R11;
	}
	else if(strcmp(reg, "R12")==0){
		return R12;
	}
	else if(strcmp(reg, "R13")==0){
		return R13;
	}
	else if(strcmp(reg, "R14")==0){
		return R14;
	}
	else if(strcmp(reg, "R15")==0){
		return R15;
	}
	else if(strcmp(reg, "R16")==0){
		return R16;
	}
	else if(strcmp(reg, "R17")==0){
		return R17;
	}
	else if(strcmp(reg, "R18")==0){
		return R18;
	}
	else if(strcmp(reg, "R19")==0){
		return R19;
	}
	else if(strcmp(reg, "R20")==0){
		return R20;
	}
	else if(strcmp(reg, "R21")==0){
		return R21;
	}
	else if(strcmp(reg, "R22")==0){
		return R22;
	}
	else if(strcmp(reg, "R23")==0){
		return R23;
	}
	else if(strcmp(reg, "R24")==0){
		return R24;
	}
	else if(strcmp(reg, "R25")==0){
		return R25;
	}
	else if(strcmp(reg, "R26")==0){
		return R26;
	}
	else if(strcmp(reg, "R27")==0){
		return R27;
	}
	else if(strcmp(reg, "R28")==0){
		return R28;
	}
	else if(strcmp(reg, "R29")==0){
		return R29;
	}
	else if(strcmp(reg, "R30")==0){
		return R30;
	}
	else if(strcmp(reg, "R31")==0){
		return R31;
	}
	else if(strcmp(reg, "\n")==0){
		//printf("ERRO");
		return NULL;
	}
	else{
		abort();	
	}
}



int* fetch_Tag(int* reg){

	if(memcmp(reg, R0, sizeof(int)*5)==0){
		return TAGS[0];
	}
	else if(memcmp(reg, R1, sizeof(int)*5)==0){
		return TAGS[1];
	}
	else if(memcmp(reg, R2, sizeof(int)*5)==0){
		return TAGS[2];
	}	
	else if(memcmp(reg, R3, sizeof(int)*5)==0){
		return TAGS[3];
	}
	else if(memcmp(reg, R4, sizeof(int)*5)==0){
		return TAGS[4];
	}
	else if(memcmp(reg, R5, sizeof(int)*5)==0){
		return TAGS[5];
	}
	else if(memcmp(reg, R6, sizeof(int)*5)==0){
		return TAGS[6];
	}
	else if(memcmp(reg, R7, sizeof(int)*5)==0){
		return TAGS[7];
	}
	else if(memcmp(reg, R8, sizeof(int)*5)==0){
		return TAGS[8];
	}
	else if(memcmp(reg, R9, sizeof(int)*5)==0){
		return TAGS[9];
	}
	else if(memcmp(reg, R10, sizeof(int)*5)==0){
		return TAGS[10];
	}
	else if(memcmp(reg, R11, sizeof(int)*5)==0){
		return TAGS[11];
	}
	else if(memcmp(reg, R12, sizeof(int)*5)==0){
		return TAGS[12];
	}
	else if(memcmp(reg, R13, sizeof(int)*5)==0){
		return TAGS[13];
	}
	else if(memcmp(reg, R14, sizeof(int)*5)==0){
		return TAGS[14];
	}
	else if(memcmp(reg, R15, sizeof(int)*5)==0){
		return TAGS[15];
	}
	else if(memcmp(reg, R16, sizeof(int)*5)==0){
		return TAGS[16];
	}
	else if(memcmp(reg, R17, sizeof(int)*5)==0){
		return TAGS[17];
	}
	else if(memcmp(reg, R18, sizeof(int)*5)==0){
		return TAGS[18];
	}
	else if(memcmp(reg, R19, sizeof(int)*5)==0){
		return TAGS[19];
	}
	else if(memcmp(reg, R20, sizeof(int)*5)==0){
		return TAGS[20];
	}
	else if(memcmp(reg, R21, sizeof(int)*5)==0){
		return TAGS[21];
	}
	else if(memcmp(reg, R22, sizeof(int)*5)==0){
		return TAGS[22];
	}
	else if(memcmp(reg, R23, sizeof(int)*5)==0){
		return TAGS[23];
	}
	else if(memcmp(reg, R24, sizeof(int)*5)==0){
		return TAGS[24];
	}
	else if(memcmp(reg, R25, sizeof(int)*5)==0){
		return TAGS[25];
	}
	else if(memcmp(reg, R26, sizeof(int)*5)==0){
		return TAGS[26];
	}
	else if(memcmp(reg, R27, sizeof(int)*5)==0){
		return TAGS[27];
	}
	else if(memcmp(reg, R28, sizeof(int)*5)==0){
		return TAGS[28];
	}
	else if(memcmp(reg, R29, sizeof(int)*5)==0){
		return TAGS[29];
	}
	else if(memcmp(reg, R30, sizeof(int)*5)==0){
		return TAGS[30];
	}
	else if(memcmp(reg, R31, sizeof(int)*5)==0){
		return TAGS[31];
	}
	else{
		abort();	
	}
}

char* fetch_Register(int* reg){

	if(memcmp(reg, R0, sizeof(int)*5)==0){
		return "R0";
	}
	else if(memcmp(reg, R1, sizeof(int)*5)==0){
		return "R1";
	}
	else if(memcmp(reg, R2, sizeof(int)*5)==0){
		return "R2";
	}	
	else if(memcmp(reg, R3, sizeof(int)*5)==0){
		return "R3";
	}
	else if(memcmp(reg, R4, sizeof(int)*5)==0){
		return "R4";
	}
	else if(memcmp(reg, R5, sizeof(int)*5)==0){
		return "R5";
	}
	else if(memcmp(reg, R6, sizeof(int)*5)==0){
		return "R6";
	}
	else if(memcmp(reg, R7, sizeof(int)*5)==0){
		return "R7";
	}
	else if(memcmp(reg, R8, sizeof(int)*5)==0){
		return "R8";
	}
	else if(memcmp(reg, R9, sizeof(int)*5)==0){
		return "R9";
	}
	else if(memcmp(reg, R10, sizeof(int)*5)==0){
		return "R10";
	}
	else if(memcmp(reg, R11, sizeof(int)*5)==0){
		return "R11";
	}
	else if(memcmp(reg, R12, sizeof(int)*5)==0){
		return "R12";
	}
	else if(memcmp(reg, R13, sizeof(int)*5)==0){
		return "R13";
	}
	else if(memcmp(reg, R14, sizeof(int)*5)==0){
		return "R14";
	}
	else if(memcmp(reg, R15, sizeof(int)*5)==0){
		return "R15";
	}
	else if(memcmp(reg, R16, sizeof(int)*5)==0){
		return "R16";
	}
	else if(memcmp(reg, R17, sizeof(int)*5)==0){
		return "R17";
	}
	else if(memcmp(reg, R18, sizeof(int)*5)==0){
		return "R18";
	}
	else if(memcmp(reg, R19, sizeof(int)*5)==0){
		return "R19";
	}
	else if(memcmp(reg, R20, sizeof(int)*5)==0){
		return "R20";
	}
	else if(memcmp(reg, R21, sizeof(int)*5)==0){
		return "R21";
	}
	else if(memcmp(reg, R22, sizeof(int)*5)==0){
		return "R22";
	}
	else if(memcmp(reg, R23, sizeof(int)*5)==0){
		return "R23";
	}
	else if(memcmp(reg, R24, sizeof(int)*5)==0){
		return "R24";
	}
	else if(memcmp(reg, R25, sizeof(int)*5)==0){
		return "R25";
	}
	else if(memcmp(reg, R26, sizeof(int)*5)==0){
		return "R26";
	}
	else if(memcmp(reg, R27, sizeof(int)*5)==0){
		return "R27";
	}
	else if(memcmp(reg, R28, sizeof(int)*5)==0){
		return "R28";
	}
	else if(memcmp(reg, R29, sizeof(int)*5)==0){
		return "R29";
	}
	else if(memcmp(reg, R30, sizeof(int)*5)==0){
		return "R30";
	}
	else if(memcmp(reg, R31, sizeof(int)*5)==0){
		return "R31";
	}
	else{
		abort();	
	}
}

