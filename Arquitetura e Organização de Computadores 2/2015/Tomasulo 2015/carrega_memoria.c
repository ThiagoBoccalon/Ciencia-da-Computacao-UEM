#include <stdio.h>
#include <string.h>
#include <stdlib.h>


#include "main.h"
#include "util.h"

void getValueRegister(int *reg, int *retorno){
	int teste[3] = {0};
	if(memcmp(reg, teste, sizeof(int) * 3)==0){
		int value;
		value = converterBintoDec(reg, 8);
		int valorReal;
		valorReal = converterBintoDec(bancoreg[value], 32);
		converterDectoBin(valorReal, retorno, 7);	
	}
	else{
		printf("ERRO BIZARRO\n");
		abort();
	}
		
}

int verificarOperandos(int **instrucao){
	if(instrucao[3][0]==-1){
		return -1;
	}
	if(instrucao[4][0]==-1){
		return -1;
	}
	return 0;	
}

void verificarAntesEmitir(){
}

void marcarTag(int* instrucao, int local){
	int inst[5];
	memcpy(inst, instrucao, sizeof(int) * 5);
	
	int novolocal[5];
	converterDectoBin(local, novolocal, 4);

	if(memcmp(inst, SD, sizeof(int) * 5)==0){
		
	}
	else if((memcmp(inst, ADD, sizeof(int) * 5)==0) ||
		(memcmp(inst, ADDI, sizeof(int) * 5)==0) ||
		(memcmp(inst, SUB, sizeof(int) * 5)==0) ||
		(memcmp(inst, SUBI, sizeof(int) * 5) ==0)){
		
		int dest[5];
		memcpy(dest, &instrucao[5], sizeof(int) * 5);
		int regdest;
		regdest = converterBintoDec(dest, 5);
		TAGS[regdest][0] = 0;
		TAGS[regdest][1] = 0;
		TAGS[regdest][2] = 1;
		memcpy(&TAGS[regdest][3], novolocal, sizeof(int) * 5);
	}
	else if((memcmp(inst, MULT, sizeof(int) * 5)==0) ||
		(memcmp(inst, MULTI, sizeof(int) * 5)==0) ||
		(memcmp(inst, DIV, sizeof(int) * 5)==0) ||
		(memcmp(inst, DIVI, sizeof(int) * 5) ==0)){
		
		int dest[5];
		memcpy(dest, &instrucao[5], sizeof(int) * 5);
		int regdest;
		regdest = converterBintoDec(dest, 5);
		TAGS[regdest][0] = 0;
		TAGS[regdest][1] = 1;
		TAGS[regdest][2] = 0;
		memcpy(&TAGS[regdest][3], novolocal, sizeof(int) * 5);
	}
	else if((memcmp(inst, LD, sizeof(int) * 5)==0) ||
		(memcmp(inst, LI, sizeof(int) * 5)==0)){
		
		int dest[5];
		memcpy(dest, &instrucao[5], sizeof(int) * 5);
		int regdest;
		regdest = converterBintoDec(dest, 5);
		TAGS[regdest][0] = 0;
		TAGS[regdest][1] = 1;
		TAGS[regdest][2] = 1;
		memcpy(&TAGS[regdest][3], novolocal, sizeof(int) * 5);
	}
	
	


}


int findFreeStation(int*** station, int qtde){
	int x;
	int vazio[8] = {0};
	for(x=0; x<qtde; x++){
		printf("Teste\n");
		if(memcmp(vazio, station[x][1], sizeof(int) * 8)==0){
			return x;
		}
	}
	return -1;
}

int findFreeStation2(int*** station, int qtde){
	int x;
	int vazio[8] = {0};
	for(x=0; x<qtde; x++){
		
		printf("TESTE VALENDO %d\n", x);
		if(memcmp(vazio, station[x][2], sizeof(int) * 8)==0){
			printf("VAZIO:  %d\n", x);
			return x;
		}
	}
	return -1;
}




int findFreeWindow(){
	int x;
	int cmp[32] = {0};
	for(x=0; x<janela; x++){	
		if(memcmp(cmp, janelaI[x], sizeof(int) * 32)==0 ){
			return x;
		}
	}
	return -1;
}

void espalharTAG(int *tag, int valor, int dest){
	int a;
	int spread[8] = {0};
	int newReg[32] = {0};
	converterDectoBin(valor, newReg, 31);
	converterDectoBin(valor, spread, 7);
	memcpy(bancoreg[dest], newReg, sizeof(int) * 32);	
	for(a=0; a<somador; a++){
		if(memcmp(tag, ERA[a][5], sizeof(int) * 8)==0){
			memset(ERA[a][5], 0, sizeof(int) * 8);
			memcpy(ERA[a][3], spread, sizeof(int) * 8);
		}
		if(memcmp(tag, ERA[a][6], sizeof(int) * 8)==0){
			memset(ERA[a][6], 0, sizeof(int) * 8);
			memcpy(ERA[a][4], spread, sizeof(int) * 8);
		}
	}
	for(a=0; a<multiplicador; a++){
		if(memcmp(tag, ERM[a][5], sizeof(int) * 8)==0){
			memset(ERM[a][5], 0, sizeof(int) * 8);
			memcpy(ERM[a][3], spread, sizeof(int) * 8);
		}
		if(memcmp(tag, ERM[a][6], sizeof(int) * 8)==0){
			memset(ERM[a][6], 0, sizeof(int) * 8);
			memcpy(ERM[a][4], spread, sizeof(int) * 8);
		}
	}
	for(a=0; a<bufferStore; a++){
		if(memcmp(tag, ERS[a][5], sizeof(int) * 8)==0){
			memset(ERS[a][5], 0, sizeof(int) * 8);
			memcpy(ERS[a][3], spread, sizeof(int) * 8);
		}
		if(memcmp(tag, ERS[a][6], sizeof(int) * 8)==0){
			memset(ERS[a][6], 0, sizeof(int) * 8);
			memcpy(ERS[a][4], spread, sizeof(int) * 8);
		}
	}
	for(a=0; a<bufferLoad; a++){
		if(memcmp(tag, ERL[a][5], sizeof(int) * 8)==0){
			memset(ERL[a][5], 0, sizeof(int) * 8);
			memcpy(ERL[a][3], spread, sizeof(int) * 8);
		}
		if(memcmp(tag, ERL[a][6], sizeof(int) * 8)==0){
			memset(ERL[a][6], 0, sizeof(int) * 8);
			memcpy(ERL[a][4], spread, sizeof(int) * 8);
		}
	}
}


void writeRegisters(int *reg, int value){
	printf("VALUE: %d\n", value);
	int convertido = -1;
	convertido = converterBintoDec(reg, 5);
	int convertido2[32] = {-1};
	converterDectoBin(value, convertido2, 31);
	memcpy(bancoreg[convertido], convertido2, sizeof(int) * 32);
}

void carregarWindow(){
	int teste[3] = {0};
	int src1[5];
	int src2[5];
	int src2x[17];
	int dest[5];

	int tagsrc1[8] = {0};
	int tagsrc2[8] = {0};

	int valor1;
	int valor2;
	int cmp[32] = {0};
	int a;
	int control = 0;
	while(1){

		if(memcmp(janelaI[control], cmp, sizeof(int) * 32)!=0){	
			if(memcmp(janelaI[control], LI, sizeof(int) * 5)==0){
				if(AddressUnit[0]==0){
					//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ADDRESS UNIT %d.\n", codigo[IF[linha][0]], freex);
					AddressUnit[0] = 1;
					memcpy(&AddressUnit[1], janelaI[control], sizeof(int) * 32);
					memset(janelaI[control], 0, sizeof (int) * 32);
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
					memset(janelaI[janela-1], 0, sizeof(int) * 32);
				}
				else{
					control++;
				}
			}
			else if(memcmp(janelaI[control], LD, sizeof(int) * 5)==0){
				if(AddressUnit[0]==0){
					//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ADDRESS UNIT %d.\n", codigo[IF[linha][0]], freex);
					AddressUnit[0] = 1;
					memcpy(&AddressUnit[1], janelaI[control], sizeof(int) * 32);
					memset(janelaI[control], 0, sizeof (int) * 32);
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
					memset(janelaI[janela-1], 0, sizeof(int) * 32);
				}
				else{
					control++;
				}
			}
			else if(memcmp(janelaI[control], SD, sizeof(int) * 5)==0){
				if(AddressUnit[0]==0){
					//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ADDRESS UNIT %d.\n", codigo[IF[linha][0]], freex);
					AddressUnit[0] = 1;
					memcpy(&AddressUnit[1], janelaI[control], sizeof(int) * 32);
					memset(janelaI[control], 0, sizeof (int) * 32);
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
					memset(janelaI[janela-1], 0, sizeof(int) * 32);
				}
				else{
					control++;
				}
			}
			else if(memcmp(janelaI[control], ADD, sizeof(int) * 5)==0){
				int freex = findFreeStation(ERA, somador);
				if(freex!=-1){  
					//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);
					
					memcpy(&ERA[freex][1][3], janelaI[control], sizeof(int) * 5);

					memcpy(dest, &janelaI[control][5], sizeof(int) * 5);
					memcpy(&ERA[freex][2][3], dest, sizeof(int) * 5);
					memcpy(src1, &janelaI[control][10], sizeof(int) * 5);
					memcpy(src2, &janelaI[control][15], sizeof(int) * 5);
					
					valor1 = converterBintoDec(src1, 5);
					valor2 = converterBintoDec(src2, 5);
					if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
						memcpy(ERA[freex][3], TAGS[valor1], sizeof(int) * 8);
					}
					else{
						memcpy(ERA[freex][5], TAGS[valor1], sizeof(int) * 8);
					}
					if(memcmp(TAGS[valor2], teste, sizeof(int) * 3)==0){
						memcpy(ERA[freex][4], TAGS[valor2], sizeof(int) * 8);
					}
					else{
						memcpy(ERA[freex][6], TAGS[valor1], sizeof(int) * 8);
					}
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
					memset(janelaI[janela-1], 0, sizeof(int) * 32);
					marcarTag(janelaI[control], freex);
				}
				else{
					control++;
				}


			}
			else if(memcmp(janelaI[control], ADDI, sizeof(int) * 5)==0){
				int freex = findFreeStation(ERA, somador);
				if(freex!=-1){  
					//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);
					
					memcpy(&ERA[freex][1][3], janelaI[control], sizeof(int) * 5);
					memcpy(dest, &janelaI[control][5], sizeof(int) * 5);
					memcpy(src1, &janelaI[control][10], sizeof(int) * 5);
					memcpy(src2x, &janelaI[control][15], sizeof(int) * 17);
					valor1 = converterBintoDec(src1, 5);
					valor2 = converterBintoDec(src2x, 17);
					memcpy(&ERA[freex][2][3], dest, sizeof(int) * 5);
					
					if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
						
						memcpy(ERA[freex][3], TAGS[valor1], sizeof(int) * 8);
					}
					else{
						memcpy(ERA[freex][5], TAGS[valor1], sizeof(int) * 8);
					}
					converterDectoBin(valor2, tagsrc1, 16);
									
					memcpy(ERA[freex][4], TAGS[valor2], sizeof(int) * 8);
					
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
					memset(janelaI[janela-1], 0, sizeof(int) * 32);
					marcarTag(janelaI[control], freex);

				}
				else{
					control++;
				}
			}
			else if(memcmp(janelaI[control], SUB, sizeof(int) * 5)==0){
				int freex = findFreeStation(ERA, somador);
				if(freex!=-1){  
					//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);
					
					memcpy(&ERA[freex][1][3], janelaI[control], sizeof(int) * 5);

					memcpy(dest, &janelaI[control][5], sizeof(int) * 5);
					memcpy(src1, &janelaI[control][10], sizeof(int) * 5);
					memcpy(src2, &janelaI[control][15], sizeof(int) * 5);
					memcpy(&ERA[freex][2][3], dest, sizeof(int) * 5);	
					valor1 = converterBintoDec(src1, 5);
					valor2 = converterBintoDec(src2, 5);
					if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){

						memcpy(ERA[freex][3], TAGS[valor1], sizeof(int) * 8);
					}
					else{
						memcpy(ERA[freex][5], TAGS[valor1], sizeof(int) * 8);
					}
					if(memcmp(TAGS[valor2], teste, sizeof(int) * 3)==0){
						memcpy(ERA[freex][4], TAGS[valor2], sizeof(int) * 8);
					}
					else{
						memcpy(ERA[freex][6], TAGS[valor2], sizeof(int) * 8);
					}
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
					memset(janelaI[janela-1], 0, sizeof(int) * 32);
					marcarTag(janelaI[control], freex);
				}
				else{
					control++;
				}
			}
			else if(memcmp(janelaI[control], SUBI, sizeof(int) * 5)==0){
				int freex = findFreeStation(ERA, somador);
				if(freex!=-1){  
					//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);
					
					memcpy(&ERA[freex][1][3], janelaI[control], sizeof(int) * 5);
					memcpy(dest, &janelaI[control][5], sizeof(int) * 5);
					memcpy(src1, &janelaI[control][10], sizeof(int) * 5);
					memcpy(src2x, &janelaI[control][15], sizeof(int) * 17);
					memcpy(&ERA[freex][2][3], dest, sizeof(int) * 5);
					valor1 = converterBintoDec(src1, 5);
					valor2 = converterBintoDec(src2x, 17);
					if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
						memcpy(ERA[freex][3], TAGS[valor1], sizeof(int) * 8);
					}
					else{
						memcpy(ERA[freex][5], TAGS[valor1], sizeof(int) * 8);
					}
					converterDectoBin(valor2, tagsrc1, 16);
									
					memcpy(ERA[freex][4], TAGS[valor2], sizeof(int) * 8);
					
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
					memset(janelaI[janela-1], 0, sizeof(int) * 32);
					marcarTag(janelaI[control], freex);

				}
				else{
					control++;
				}
			}
			else if(memcmp(janelaI[control], MULT, sizeof(int) * 5)==0){
				int freex = findFreeStation(ERM, somador);
				if(freex!=-1){  
					//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);

					memcpy(&ERM[freex][1][3], janelaI[control], sizeof(int) * 5);

					memcpy(dest, &janelaI[control][5], sizeof(int) * 5);
					memcpy(src1, &janelaI[control][10], sizeof(int) * 5);
					memcpy(src2, &janelaI[control][15], sizeof(int) * 5);
					memcpy(&ERM[freex][2][3], dest, sizeof(int) * 5);
					
					valor1 = converterBintoDec(src1, 5);
					valor2 = converterBintoDec(src2, 5);
					if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
						memcpy(ERM[freex][3], TAGS[valor1], sizeof(int) * 8);
					}
					else{
						memcpy(ERM[freex][5], TAGS[valor1], sizeof(int) * 8);
					}
					if(memcmp(TAGS[valor2], teste, sizeof(int) * 3)==0){
						memcpy(ERM[freex][4], TAGS[valor2], sizeof(int) * 8);
					}
					else{
						memcpy(ERM[freex][6], TAGS[valor2], sizeof(int) * 8);
					}
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
					memset(janelaI[janela-1], 0, sizeof(int) * 32);
					marcarTag(janelaI[control], freex);
				}
				else{
					control++;
				}
			}
			else if(memcmp(janelaI[control], MULTI, sizeof(int) * 5)==0){
				int freex = findFreeStation(ERM, somador);
				if(freex!=-1){  
					//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);

					memcpy(&ERM[freex][1][3], janelaI[control], sizeof(int) * 5);
					memcpy(dest, &janelaI[control][5], sizeof(int) * 5);
					memcpy(src1, &janelaI[control][10], sizeof(int) * 5);
					memcpy(src2x, &janelaI[control][15], sizeof(int) * 17);
					memcpy(&ERM[freex][2][3], dest, sizeof(int) * 5);
					valor1 = converterBintoDec(src1, 5);
					valor2 = converterBintoDec(src2x, 17);
					if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
						memcpy(ERM[freex][3], TAGS[valor1], sizeof(int) * 8);
					}
					else{
						memcpy(ERM[freex][5], TAGS[valor1], sizeof(int) * 8);
					}
					converterDectoBin(valor2, tagsrc1, 16);
									
					memcpy(ERM[freex][4], TAGS[valor2], sizeof(int) * 8);
					
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
					memset(janelaI[janela-1], 0, sizeof(int) * 32);
					marcarTag(janelaI[control], freex);
				}
				else{
					control++;
				}
			}
			else if(memcmp(janelaI[control], DIV, sizeof(int) * 5)==0){
				int freex = findFreeStation(ERM, somador);
				if(freex!=-1){  
					//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);

					memcpy(&ERM[freex][1][3], janelaI[control], sizeof(int) * 5);

					memcpy(dest, &janelaI[control][5], sizeof(int) * 5);
					memcpy(src1, &janelaI[control][10], sizeof(int) * 5);
					memcpy(src2, &janelaI[control][15], sizeof(int) * 5);
					memcpy(&ERM[freex][2][3], dest, sizeof(int) * 5);
					valor1 = converterBintoDec(src1, 5);
					valor2 = converterBintoDec(src2, 5);
					if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
						memcpy(ERM[freex][3], TAGS[valor1], sizeof(int) * 8);
					}
					else{
						memcpy(ERM[freex][5], TAGS[valor1], sizeof(int) * 8);
					}
					if(memcmp(TAGS[valor2], teste, sizeof(int) * 3)==0){
						memcpy(ERM[freex][4], TAGS[valor2], sizeof(int) * 8);
					}
					else{
						memcpy(ERM[freex][6], TAGS[valor1], sizeof(int) * 8);
					}
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
					memset(janelaI[janela-1], 0, sizeof(int) * 32);
					marcarTag(janelaI[control], freex);
				}
				else{
					control++;
				}
			}
			else if( (memcmp(janelaI[control], DIVI, sizeof(int) * 5)==0)){
				int freex = findFreeStation(ERM, somador);
				if(freex!=-1){  
					//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);
					marcarTag(janelaI[control], freex);
					memcpy(&ERM[freex][1][3], janelaI[control], sizeof(int) * 5);
					memcpy(dest, &janelaI[control][5], sizeof(int) * 5);
					memcpy(src1, &janelaI[control][10], sizeof(int) * 5);
					memcpy(src2x, &janelaI[control][15], sizeof(int) * 17);
					memcpy(&ERM[freex][2][3], dest, sizeof(int) * 5);
					valor1 = converterBintoDec(src1, 5);
					valor2 = converterBintoDec(src2x, 17);
					if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
						memcpy(ERM[freex][3], TAGS[valor1], sizeof(int) * 8);
					}
					else{
						memcpy(ERM[freex][5], TAGS[valor1], sizeof(int) * 8);
					}
					converterDectoBin(valor2, tagsrc1, 16);
									
					memcpy(ERM[freex][4], TAGS[valor2], sizeof(int) * 8);
					
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
					memset(janelaI[janela-1], 0, sizeof(int) * 32);

				}
				else{
					control++;
				}
			}
			else if((memcmp(janelaI[control], BEQ, sizeof(int) * 5)==0) ||
				(memcmp(janelaI[control], BNE, sizeof(int) * 5)==0) ||
				(memcmp(janelaI[control], BGE, sizeof(int) * 5)==0) ||
				(memcmp(janelaI[control], BG, sizeof(int) * 5)==0) ||
				(memcmp(janelaI[control], BLE, sizeof(int) * 5)==0) ||
				(memcmp(janelaI[control], BL, sizeof(int) * 5)==0) ){
				int freex = findFreeStation(ERA, somador);
				if(freex!=-1){  
					//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);
					//marcarTag(IF[linha], freex);
					memcpy(&ERA[freex][1][3], janelaI[control], sizeof(int) * 5);

					memcpy(src1, &janelaI[control][5], sizeof(int) * 5);
					memcpy(src2, &janelaI[control][10], sizeof(int) * 5);
					memcpy(src2x, &janelaI[control][15], sizeof(int) * 17);
					
					int valor3;
					valor3 = converterBintoDec(src2x, 17);
					converterDectoBin(valor3, tagsrc1, 16);
					memcpy(ERA[freex][2], tagsrc1, sizeof(int) * 8);

					valor1 = converterBintoDec(src1, 5);
					valor2 = converterBintoDec(src2, 5);
					if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
						getValueRegister(TAGS[valor1], tagsrc1);
						memcpy(ERA[freex][3], TAGS[valor1], sizeof(int) * 8);
					}
					else{
						memcpy(ERA[freex][5], TAGS[valor1], sizeof(int) * 8);
					}
					if(memcmp(TAGS[valor2], teste, sizeof(int) * 3)==0){
						getValueRegister(TAGS[valor1], tagsrc2);
						memcpy(ERA[freex][4], TAGS[valor2], sizeof(int) * 8);
					}
					else{
						memcpy(ERA[freex][6], TAGS[valor2], sizeof(int) * 8);
					}
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
					memset(janelaI[janela-1], 0, sizeof(int) * 32);
				}
				else{
					control++;
				}
			}
			else if(memcmp(janelaI[control], JUMP, sizeof(int) * 5)==0){
				int freex = findFreeStation(ERA, somador);
				if(freex!=-1){

					memcpy(&ERA[freex][1], janelaI[0], sizeof(int) * 32);
					for(a=control; a<janela-1; a++){
						memcpy(janelaI[a], janelaI[a+1], sizeof(int)*32);
					}
				}
				else{
					control++;
				}
			}
			else if(memcmp(janelaI[control], NOP, sizeof(int) * 5)==0){

			}
			else if(memcmp(janelaI[control], EXIT, sizeof(int) * 5)==0){

			}
			else{
				break;
			}
		}
		else{
			break;
		}
	}
}



void processarMemoryUnit(){
	int cmp[8] = {0};
	if(memcmp(MemoryUnit[2], cmp, sizeof(int) * 8)!=0){
		if(MemoryUnit[1][0]==0){
			if(memcmp(&MemoryUnit[2][3], LI, sizeof(int)*5)==0){
				printf("Instrucao li esta escrevendo seus resultados. \n");
				int dest[8] = {0};
				int src[8] = {0};
				
				memcpy(dest, MemoryUnit[3], sizeof(int) * 8);
				memcpy(src, MemoryUnit[4], sizeof(int) * 8);	
				int value;
				value = converterBintoDec(src, 8);
				int value2;
				value2 = converterBintoDec(dest, 8);
				espalharTAG(MemoryUnit[0], value, value2);

				memcpy(MemoryUnit[2], cmp, sizeof(int) * 8);
				//writeRegisters(dest, value); 
			}
			else if(memcmp(&MemoryUnit[2][3], LD, sizeof(int)*5)==0){
				printf("Instrucao ld esta escrevendo seus resultados. \n");

			}
			else if(memcmp(&MemoryUnit[2][3], SD, sizeof(int)*5)==0){
				printf("Instrucao sd esta escrevendo seus resultados. \n");

			}
		}
		else{
			MemoryUnit[1][0]--;
		}
	}
}

void processarFunctionalUnits(){
	int cmp[8] = {0};
	int ind;
	for(ind=0; ind<somador; ind++){
		if(memcmp(FP_Adders[ind][2], cmp, sizeof(int) * 8)!=0){
			if(FP_Adders[ind][1][0]==0){
				if(memcmp(&FP_Adders[ind][2][3], ADD, sizeof(int)*5)==0){
					int dest[8] = {0};
					int src[8] = {0};	
					int src2[8] = {0};
					memcpy(dest, FP_Adders[ind][3], sizeof(int) * 8);
					memcpy(src, FP_Adders[ind][4], sizeof(int) * 8);
					memcpy(src2, FP_Adders[ind][5], sizeof(int) * 8);
					int value;
					int value12;
					value = converterBintoDec(src, 8);	
					value12 = converterBintoDec(src2, 8);
					int value2;
					value2 = converterBintoDec(dest, 8);
					espalharTAG(FP_Adders[ind][0], value+value12, value2);
					memcpy(FP_Adders[ind][2], cmp, sizeof(int) * 8);
				}
				else if(memcmp(&FP_Adders[ind][2][3], ADDI, sizeof(int)*5)==0){
					int dest[8] = {0};
					int src[8] = {0};	
					int src2[8] = {0};
					memcpy(dest, FP_Adders[ind][3], sizeof(int) * 8);
					memcpy(src, FP_Adders[ind][4], sizeof(int) * 8);
					memcpy(src2, FP_Adders[ind][5], sizeof(int) * 8);
					int value;
					int value12;
					value = converterBintoDec(src, 8);	
					value12 = converterBintoDec(src2, 8);
					int value2;
					value2 = converterBintoDec(dest, 8);
					espalharTAG(FP_Adders[ind][0], value+value12, value2);
					memcpy(FP_Adders[ind][2], cmp, sizeof(int) * 8);
			
				}
				else if(memcmp(&FP_Adders[ind][2][3], SUB, sizeof(int)*5)==0){
					int dest[8] = {0};
					int src[8] = {0};	
					int src2[8] = {0};
					memcpy(dest, FP_Adders[ind][3], sizeof(int) * 8);
					memcpy(src, FP_Adders[ind][4], sizeof(int) * 8);
					memcpy(src2, FP_Adders[ind][5], sizeof(int) * 8);
					int value;
					int value12;
					value = converterBintoDec(src, 8);	
					value12 = converterBintoDec(src2, 8);
					int value2;
					value2 = converterBintoDec(dest, 8);
					espalharTAG(FP_Adders[ind][0], value-value12, value2);
					memcpy(FP_Adders[ind][2], cmp, sizeof(int) * 8);
			
				}
				else if(memcmp(&FP_Adders[ind][2][3], SUBI, sizeof(int)*5)==0){
					int dest[8] = {0};
					int src[8] = {0};	
					int src2[8] = {0};
					memcpy(dest, FP_Adders[ind][3], sizeof(int) * 8);
					memcpy(src, FP_Adders[ind][4], sizeof(int) * 8);
					memcpy(src2, FP_Adders[ind][5], sizeof(int) * 8);
					int value;
					int value12;
					value = converterBintoDec(src, 8);	
					value12 = converterBintoDec(src2, 8);
					int value2;
					value2 = converterBintoDec(dest, 8);
					espalharTAG(FP_Adders[ind][0], value-value12, value2);
					memcpy(FP_Adders[ind][2], cmp, sizeof(int) * 8);
			
				}
				else if(memcmp(&FP_Adders[ind][2][3], BEQ, sizeof(int)*5)==0){		
			
				}
				else if(memcmp(&FP_Adders[ind][2][3], BNE, sizeof(int)*5)==0){
			
				}
				else if(memcmp(&FP_Adders[ind][2][3], BGE, sizeof(int)*5)==0){
			
				}
				else if(memcmp(&FP_Adders[ind][2][3], BG, sizeof(int)*5)==0){
			
				}
				else if(memcmp(&FP_Adders[ind][2][3], BLE, sizeof(int)*5)==0){
			
				}
				else if(memcmp(&FP_Adders[ind][2][3], BL, sizeof(int)*5)==0){
			
				}
			}
			else{
				FP_Adders[ind][1][0]--;
			}	
		}
	}
	for(ind=0; ind<multiplicador; ind++){
		if(memcmp(FP_Multipliers[ind][2], cmp, sizeof(int) * 8)!=0){
			if(FP_Multipliers[ind][1][0]==0){
				if(memcmp(&FP_Multipliers[ind][2][3], MULT, sizeof(int)*5)==0){
					int dest[8] = {0};
					int src[8] = {0};	
					int src2[8] = {0};
					memcpy(dest, FP_Multipliers[ind][3], sizeof(int) * 8);
					memcpy(src, FP_Multipliers[ind][4], sizeof(int) * 8);
					memcpy(src2, FP_Multipliers[ind][5], sizeof(int) * 8);
					int value;
					int value12;
					value = converterBintoDec(src, 8);	
					value12 = converterBintoDec(src2, 8);
					int value2;
					value2 = converterBintoDec(dest, 8);
					espalharTAG(FP_Multipliers[ind][0], value*value12, value2);
					memcpy(FP_Multipliers[ind][2], cmp, sizeof(int) * 8);
				}
				else if(memcmp(&FP_Multipliers[ind][2][3], ADDI, sizeof(int)*5)==0){
					int dest[8] = {0};
					int src[8] = {0};	
					int src2[8] = {0};
					memcpy(dest, FP_Multipliers[ind][3], sizeof(int) * 8);
					memcpy(src, FP_Multipliers[ind][4], sizeof(int) * 8);
					memcpy(src2, FP_Multipliers[ind][5], sizeof(int) * 8);
					int value;
					int value12;
					value = converterBintoDec(src, 8);	
					value12 = converterBintoDec(src2, 8);
					int value2;
					value2 = converterBintoDec(dest, 8);
					espalharTAG(FP_Multipliers[ind][0], value*value12, value2);
					memcpy(FP_Multipliers[ind][2], cmp, sizeof(int) * 8);
			
				}
				else if(memcmp(&FP_Multipliers[ind][2][3], SUB, sizeof(int)*5)==0){
					int dest[8] = {0};
					int src[8] = {0};	
					int src2[8] = {0};
					memcpy(dest, FP_Multipliers[ind][3], sizeof(int) * 8);
					memcpy(src, FP_Multipliers[ind][4], sizeof(int) * 8);
					memcpy(src2, FP_Multipliers[ind][5], sizeof(int) * 8);
					int value;
					int value12;
					value = converterBintoDec(src, 8);	
					value12 = converterBintoDec(src2, 8);
					int value2;
					value2 = converterBintoDec(dest, 8);
					espalharTAG(FP_Multipliers[ind][0], value/value12, value2);
					memcpy(FP_Multipliers[ind][2], cmp, sizeof(int) * 8);
			
				}
				else if(memcmp(&FP_Multipliers[ind][2][3], SUBI, sizeof(int)*5)==0){
					int dest[8] = {0};
					int src[8] = {0};	
					int src2[8] = {0};
					memcpy(dest, FP_Multipliers[ind][3], sizeof(int) * 8);
					memcpy(src, FP_Multipliers[ind][4], sizeof(int) * 8);
					memcpy(src2, FP_Multipliers[ind][5], sizeof(int) * 8);
					int value;
					int value12;
					value = converterBintoDec(src, 8);	
					value12 = converterBintoDec(src2, 8);
					int value2;
					value2 = converterBintoDec(dest, 8);
					espalharTAG(FP_Multipliers[ind][0], value/value12, value2);
					memcpy(FP_Multipliers[ind][2], cmp, sizeof(int) * 8);
			
				}
			}
		}
	}
}

void carregarReservationStation(){
	int cmp[8] = {0};	
	int a;
	while(1){
		if(memcmp(cmp, ERL[0][1], sizeof(int) * 8) !=0){
			//printf("CAIU AKIIIIIIIIIIIIIIIIIIII 2\n");
			if(memcmp(cmp, MemoryUnit[2], sizeof(int) * 8) ==0){
				//printf("CAIU AKIIIIIIIIIIIIIIIIIIII\n");
				if(memcmp(&ERL[0][1][3], LI, sizeof(int)*5)==0){
					MemoryUnit[1][0] = lix;
				}
				else if(memcmp(&ERL[0][1][3], LD, sizeof(int)*5)==0){
					MemoryUnit[1][0] = ldx;
				}
				else if(memcmp(&ERL[0][1][3], SD, sizeof(int)*5)==0){
					MemoryUnit[1][0] = sdx;
				}
				memcpy(MemoryUnit[2], ERL[0][1], sizeof(int) * 8);
				memcpy(MemoryUnit[0], ERL[0][0], sizeof(int) * 8);
				memcpy(MemoryUnit[3], ERL[0][2], sizeof(int) * 8);
				memcpy(MemoryUnit[4], ERL[0][3], sizeof(int) * 8);
				memcpy(MemoryUnit[5], ERL[0][4], sizeof(int) * 8);
				MemoryUnit[6][0] = ERL[0][7][0];
				for(a=0; a<bufferLoad-1; a++){
					memcpy(ERL[a][1], ERL[a+1][1], sizeof(int) * 8);
					memcpy(ERL[a][2], ERL[a+1][2], sizeof(int) * 8);
					memcpy(ERL[a][3], ERL[a+1][3], sizeof(int) * 8);
					memcpy(ERL[a][4], ERL[a+1][4], sizeof(int) * 8);
					memcpy(ERL[a][5], ERL[a+1][5], sizeof(int) * 8);
					memcpy(ERL[a][6], ERL[a+1][6], sizeof(int) * 8);
				}
				memset(ERL[bufferLoad-1][1],0, sizeof(int) * 8);
				memset(ERL[bufferLoad-1][2], 0, sizeof(int) * 8);
				memset(ERL[bufferLoad-1][3], 0, sizeof(int) * 8);
				memset(ERL[bufferLoad-1][4],0, sizeof(int) * 8);
				memset(ERL[bufferLoad-1][5], 0, sizeof(int) * 8);
				memset(ERL[bufferLoad-1][6], 0, sizeof(int) * 8);
				
			}
			else{
				break;
			}
		}
		else{
			break;
		}
	}
	while(1){
		if(memcmp(cmp, ERS[0][1], sizeof(int) * 8) !=0){
			if(memcmp(cmp, MemoryUnit[2], sizeof(int) * 8) ==0){
				MemoryUnit[1][0] = sdx;
				memcpy(MemoryUnit[2], ERS[0][1], sizeof(int) * 8);
				memcpy(MemoryUnit[0], ERS[0][0], sizeof(int) * 8);
				memcpy(MemoryUnit[3], ERS[0][2], sizeof(int) * 8);
				memcpy(MemoryUnit[4], ERS[0][3], sizeof(int) * 8);
				memcpy(MemoryUnit[5], ERS[0][4], sizeof(int) * 8);
				MemoryUnit[6][0] = ERS[0][7][0];
				for(a=0; a<bufferStore-1; a++){
					memcpy(ERS[a][1], ERS[a+1][1], sizeof(int) * 8);
					memcpy(ERS[a][2], ERS[a+1][2], sizeof(int) * 8);
					memcpy(ERS[a][3], ERS[a+1][3], sizeof(int) * 8);
					memcpy(ERS[a][4], ERS[a+1][4], sizeof(int) * 8);
					memcpy(ERS[a][5], ERS[a+1][5], sizeof(int) * 8);
					memcpy(ERS[a][6], ERS[a+1][6], sizeof(int) * 8);
				}
				memset(ERS[bufferStore-1][1],0, sizeof(int) * 8);
				memset(ERS[bufferStore-1][2], 0, sizeof(int) * 8);
				memset(ERS[bufferStore-1][3], 0, sizeof(int) * 8);
				memset(ERS[bufferStore-1][4],0, sizeof(int) * 8);
				memset(ERS[bufferStore-1][5], 0, sizeof(int) * 8);
				memset(ERS[bufferStore-1][6], 0, sizeof(int) * 8);
			}
			else{
				break;
			}
		}
		else{
			break;
		}
	}
	while(1){
		//printf("ADD\n");
		int freex;	
		freex = findFreeStation2(FP_Adders, somador);
		//printf("freex: %d\n", freex);
		if(freex!=-1){
			if(memcmp(cmp, ERA[0][1], sizeof(int) * 8) !=0){
				if(memcmp(&ERA[0][1][3], ADD, sizeof(int)*5)==0){
					FP_Adders[freex][1][0] = addx;
				
				}
				else if(memcmp(&ERA[0][1][3], ADDI, sizeof(int)*5)==0){
					FP_Adders[freex][1][0] = addix;
				}
				else if(memcmp(&ERA[0][1][3], SUB, sizeof(int)*5)==0){
					FP_Adders[freex][1][0] = subx;
				}
				else if(memcmp(&ERA[0][1][3], SUBI, sizeof(int)*5)==0){
					FP_Adders[freex][1][0] = subix;
				}
				else if(memcmp(&ERA[0][1][3], BEQ, sizeof(int)*5)==0){
					FP_Adders[freex][1][0] = beqx;
				}
				else if(memcmp(&ERA[0][1][3], BNE, sizeof(int)*5)==0){
					FP_Adders[freex][1][0] = bnex;
				}
				else if(memcmp(&ERA[0][1][3], BGE, sizeof(int)*5)==0){
					FP_Adders[freex][1][0] = bgex;
				}
				else if(memcmp(&ERA[0][1][3], BG, sizeof(int)*5)==0){
					FP_Adders[freex][1][0] = bgx;
				}
				else if(memcmp(&ERA[0][1][3], BL, sizeof(int)*5)==0){
					FP_Adders[freex][1][0] = blx;
				}
				else if(memcmp(&ERA[0][1][3], BLE, sizeof(int)*5)==0){
					FP_Adders[freex][1][0] = blex;
				}
				else if(memcmp(&ERA[0][1][3], JUMP, sizeof(int)*5)==0){
					FP_Adders[freex][1][0] = jumpx;
				}
				memcpy(FP_Adders[freex][0], ERA[0][0], sizeof(int) * 8);
				memcpy(FP_Adders[freex][2], ERA[0][1], sizeof(int) * 8);
				memcpy(FP_Adders[freex][3], ERA[0][2], sizeof(int) * 8);
				memcpy(FP_Adders[freex][4], ERA[0][3], sizeof(int) * 8);
				memcpy(FP_Adders[freex][5], ERA[0][4], sizeof(int) * 8);
				FP_Adders[freex][6][0] = ERA[0][7][0];
				for(a=0; a<somador-1; a++){
					memcpy(ERA[a][1], ERA[a+1][1], sizeof(int) * 8);
					memcpy(ERA[a][2], ERA[a+1][2], sizeof(int) * 8);
					memcpy(ERA[a][3], ERA[a+1][3], sizeof(int) * 8);
					memcpy(ERA[a][4], ERA[a+1][4], sizeof(int) * 8);
					memcpy(ERA[a][5], ERA[a+1][5], sizeof(int) * 8);
					memcpy(ERA[a][6], ERA[a+1][6], sizeof(int) * 8);
				}
				memset(ERA[somador-1][1],0, sizeof(int) * 8);
				memset(ERA[somador-1][2], 0, sizeof(int) * 8);
				memset(ERA[somador-1][3], 0, sizeof(int) * 8);
				memset(ERA[somador-1][4], 0, sizeof(int) * 8);
				memset(ERA[somador-1][5], 0, sizeof(int) * 8);
				memset(ERA[somador-1][6], 0, sizeof(int) * 8);
			}
			else{
				break;
			}
		}
		else{
			break;
		}
	}
	while(1){
		//printf("Mult\n");
		int freex;
		freex = findFreeStation2(FP_Multipliers, multiplicador);
		if(freex!=-1){
			if(memcmp(cmp, ERM[0][1], sizeof(int) * 8) !=0){
				if(memcmp(&ERM[0][1][3], MULT, sizeof(int) * 5)==0){
					FP_Multipliers[freex][1][0] = multx;
				}
				else if(memcmp(&ERM[0][1][3], MULTI, sizeof(int) * 5)==0){
					FP_Multipliers[freex][1][0] = multix;
				}
				else if(memcmp(&ERM[0][1][3], DIV, sizeof(int) * 5)==0){
					FP_Multipliers[freex][1][0] = divx;
				}
				else if(memcmp(&ERM[0][1][3], DIVI, sizeof(int) * 5)==0){
					FP_Multipliers[freex][1][0] = divix;
				}
				
				
				memcpy(FP_Multipliers[freex][0], ERA[0][0], sizeof(int) * 8);
				memcpy(FP_Multipliers[freex][2], ERA[0][1], sizeof(int) * 8);
				memcpy(FP_Multipliers[freex][3], ERA[0][2], sizeof(int) * 8);
				memcpy(FP_Multipliers[freex][4], ERA[0][3], sizeof(int) * 8);
				memcpy(FP_Multipliers[freex][5], ERA[0][4], sizeof(int) * 8);
				FP_Multipliers[freex][6][0] = ERA[0][7][0];
				for(a=0; a<multiplicador-1; a++){
					memcpy(ERM[a][1], ERM[a+1][1], sizeof(int) * 8);
					memcpy(ERM[a][2], ERM[a+1][2], sizeof(int) * 8);
					memcpy(ERM[a][3], ERM[a+1][3], sizeof(int) * 8);
					memcpy(ERM[a][4], ERM[a+1][4], sizeof(int) * 8);
					memcpy(ERM[a][5], ERM[a+1][5], sizeof(int) * 8);
					memcpy(ERM[a][6], ERM[a+1][6], sizeof(int) * 8);
				}
				memset(ERM[multiplicador-1][1],0, sizeof(int) * 8);
				memset(ERM[multiplicador-1][2], 0, sizeof(int) * 8);
				memset(ERM[multiplicador-1][3], 0, sizeof(int) * 8);
				memset(ERM[multiplicador-1][4],0, sizeof(int) * 8);
				memset(ERM[multiplicador-1][5], 0, sizeof(int) * 8);
				memset(ERM[multiplicador-1][6], 0, sizeof(int) * 8);
			}
			else{
				break;
			}	
			
		}
		else{
			break;
		}
	}
		
}



void carregarAddressUnit(){
	int instrucao[32];
	int src1[8] ={0};
	int src2[22];
	if(AddressUnit[0]!=0 ){
		if(memcmp(&AddressUnit[1], LI, sizeof(int)*5)==0){
			int freeL;
			freeL = findFreeStation(ERL, bufferLoad);
			if(freeL!=-1){
				
				memcpy(src2, &AddressUnit[11], sizeof(int) * 22);
				int value;
				value = converterBintoDec(src2, 22);
				converterDectoBin(value, src1, 7);
				memcpy(ERL[freeL][3], src1, sizeof(int) * 8);
				memcpy(&ERL[freeL][1][3], &AddressUnit[1], sizeof(int) * 5);
				memcpy(&ERL[freeL][2][3], &AddressUnit[6], sizeof(int) * 5);
				ERL[freeL][7][0] = AddressUnit[34];
				marcarTag(&AddressUnit[1], freeL);
				memset(AddressUnit, 0, sizeof(int) * 34);
				
				
							
			}
		}
		else if(memcmp(&AddressUnit[1], LD, sizeof(int)*5)==0){
			int freeL = findFreeStation(ERL, bufferLoad);
			if(freeL!=-1){
				memcpy(instrucao, &AddressUnit[1], sizeof(int) * 32);
				
				memcpy(src2, &AddressUnit[11], sizeof(int) * 22);
				int value;
				value = converterBintoDec(src2, 22);
				converterDectoBin(value, src1, 7);
				
				memcpy(ERL[freeL][3], src1, sizeof(int) * 8);
				memcpy(&ERL[freeL][1][3], &AddressUnit[1], sizeof(int) * 5);
				memcpy(&ERL[freeL][2][3], &AddressUnit[6], sizeof(int) * 5);
				ERL[freeL][7][0] = AddressUnit[34];
				marcarTag(instrucao, freeL);
				memset(AddressUnit, 0, sizeof(int) * 34);

				
							
			}
		}
		else if(memcmp(&AddressUnit[1], SD, sizeof(int)*5)==0){
			int freeL = findFreeStation(ERS, bufferStore);
			if(freeL!=-1){
				memcpy(instrucao, &AddressUnit[1], sizeof(int) * 32);
				//marcarTag(instrucao, freeL);
				memcpy(src2, &instrucao[5], sizeof(int) * 22);
				int value;
				value = converterBintoDec(src2, 22);
				converterDectoBin(value, src1, 7);
				memcpy(ERS[freeL][2], src1, sizeof(int) * 8);
				memcpy(&ERS[freeL][1][3], instrucao, sizeof(int) * 5);
				memcpy(&ERS[freeL][3][3], &instrucao[27], sizeof(int) * 5);
				ERS[freeL][7][0] = AddressUnit[34];
				memset(AddressUnit, 0, sizeof(int) * 34);
				
							
			}
		}
		else{
			printf("Erro Address Unit\n");
		}
		//AddressUnit[0] = 0;
	}
}




void carregar_janela(){
	int linha;
	int fim[32] = {0};
	int src1[5];
	int src2[5];
	int src2x[17];
	int dest[5];
	int teste[3] = {0};
	int tagsrc1[8] = {0};
	int tagsrc2[8] = {0};

	int valor1;
	int valor2;

	char comparador[25];
	memset(comparador, '_', sizeof(char) * 24);
	comparador[24] = '\0';	

	for(linha=0; linha<busca; linha++){
		if(memcmp(IF[linha], fim, sizeof(int) *32)==0){
			break;
		}
		else{
			
			int janelaLivre = findFreeWindow();
			if(janelaLivre!=-1){
				if(memcmp(IF[linha], ADD, sizeof(int) *5)==0){
					int freex = findFreeStation(ERA, somador);
					if(freex!=-1){  
						//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);

						memcpy(&ERA[freex][1][3], IF[linha], sizeof(int) * 5);

						memcpy(dest, &IF[linha][5], sizeof(int) * 5);
						memcpy(src1, &IF[linha][10], sizeof(int) * 5);
						memcpy(src2, &IF[linha][15], sizeof(int) * 5);
						memcpy(&ERA[freex][2][3], dest, sizeof(int) * 5);
						valor1 = converterBintoDec(src1, 5);
						valor2 = converterBintoDec(src2, 5);
						if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
							memcpy(ERA[freex][3], TAGS[valor1], sizeof(int) * 8);
						}
						else{
							memcpy(ERA[freex][5], TAGS[valor1], sizeof(int) * 8);
						}
						if(memcmp(TAGS[valor2], teste, sizeof(int) * 3)==0){
							memcpy(ERA[freex][4], TAGS[valor2], sizeof(int) * 8);
						}
						else{
							memcpy(ERA[freex][6], TAGS[valor2], sizeof(int) * 8);
						}
						ERA[freex][7][0] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 32);
						marcarTag(IF[linha], freex);
					}
					else{	
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32); 
						janelaI[janelaLivre][33] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
				}
				else if(memcmp(IF[linha], ADDI, sizeof(int) *5)==0){
					int freex = findFreeStation(ERA, somador);
					
					
						if((freex!=-1) && (strcmp(dependencias[IF[linha][33]][1], comparador)==0)){  
							//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);
						
							memcpy(&ERA[freex][1][3], IF[linha], sizeof(int) * 5);
							memcpy(dest, &IF[linha][5], sizeof(int) * 5);
							memcpy(src1, &IF[linha][10], sizeof(int) * 5);
							memcpy(src2x, &IF[linha][15], sizeof(int) * 17);
							memcpy(&ERA[freex][2][3], dest, sizeof(int) * 5);
							valor1 = converterBintoDec(src1, 5);
							valor2 = converterBintoDec(src2x, 17);
							if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
								memcpy(ERA[freex][3], TAGS[valor1], sizeof(int) * 8);
							}
							else{
								memcpy(ERA[freex][5], TAGS[valor1], sizeof(int) * 8);
							}
										
							memcpy(ERA[freex][4], TAGS[valor2], sizeof(int) * 8);
								marcarTag(IF[linha], freex);
							ERA[freex][7][0] = IF[linha][33];
							memset(IF[linha], 0, sizeof (int) * 33);

						}
						else{
							janelaI[janelaLivre][33] = IF[linha][33];	
							memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32);
							memset(IF[linha], 0, sizeof (int) * 33);
						}
					
				}
				else if(memcmp(IF[linha], SUB, sizeof(int) *5)==0){
					int freex = findFreeStation(ERA, somador);
					if(freex!=-1){  
						//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);

						memcpy(&ERA[freex][1][3], IF[linha], sizeof(int) * 5);

						memcpy(dest, &IF[linha][5], sizeof(int) * 5);
						memcpy(src1, &IF[linha][10], sizeof(int) * 5);
						memcpy(src2, &IF[linha][15], sizeof(int) * 5);
						memcpy(&ERA[freex][2][3], dest, sizeof(int) * 5);
						
						valor1 = converterBintoDec(src1, 5);
						valor2 = converterBintoDec(src2, 5);
						if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
							memcpy(ERA[freex][3], TAGS[valor1], sizeof(int) * 8);
						}
						else{
							memcpy(ERA[freex][5], TAGS[valor1], sizeof(int) * 8);
						}
						if(memcmp(TAGS[valor2], teste, sizeof(int) * 3)==0){
							memcpy(ERA[freex][4], TAGS[valor2], sizeof(int) * 8);
						}
						else{
							memcpy(ERA[freex][6], TAGS[valor2], sizeof(int) * 8);
						}
						ERA[freex][7][0] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
						marcarTag(IF[linha], freex);
					}
					else{	
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32); 
						janelaI[janelaLivre][33] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
							
					}
				}
				else if(memcmp(IF[linha], SUBI, sizeof(int) *5)==0){
					int freex = findFreeStation(ERA, somador);

					if((freex!=-1) && (strcmp(dependencias[IF[linha][33]][1], comparador)==0)){  
						//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);

						memcpy(&ERA[freex][1][3], IF[linha], sizeof(int) * 5);
						memcpy(dest, &IF[linha][5], sizeof(int) * 5);
						memcpy(src1, &IF[linha][10], sizeof(int) * 5);
						memcpy(src2x, &IF[linha][15], sizeof(int) * 17);
						valor1 = converterBintoDec(src1, 5);
						valor2 = converterBintoDec(src2x, 17);
						memcpy(&ERA[freex][2][3], dest, sizeof(int) * 5);
						if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
							getValueRegister(TAGS[valor1], tagsrc2);
							memcpy(ERA[freex][3], tagsrc1, sizeof(int) * 8);
						}
						else{
							memcpy(ERA[freex][5], TAGS[valor1], sizeof(int) * 8);
						}
						converterDectoBin(valor2, tagsrc1, 16);
									
						memcpy(ERA[freex][4], TAGS[valor2], sizeof(int) * 8);
						marcarTag(IF[linha], freex);
						ERA[freex][7][0] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);

					}
					else{
						
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32);
						janelaI[janelaLivre][33] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
					
				}
				else if(memcmp(IF[linha], MULT, sizeof(int) *5)==0){	
					int freex = findFreeStation(ERM, somador);
					if(freex!=-1){  
						//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);

						memcpy(&ERM[freex][1][3], IF[linha], sizeof(int) * 5);

						memcpy(dest, &IF[linha][5], sizeof(int) * 5);
						memcpy(src1, &IF[linha][10], sizeof(int) * 5);
						memcpy(src2, &IF[linha][15], sizeof(int) * 5);
						memcpy(&ERM[freex][2][3], dest, sizeof(int) * 5);
						
						valor1 = converterBintoDec(src1, 5);
						valor2 = converterBintoDec(src2, 5);
						if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
							memcpy(ERM[freex][3], TAGS[valor1], sizeof(int) * 8);
						}
						else{
							memcpy(ERM[freex][5], TAGS[valor2], sizeof(int) * 8);
						}
						if(memcmp(TAGS[valor2], teste, sizeof(int) * 3)==0){
							memcpy(ERM[freex][4], TAGS[valor2], sizeof(int) * 8);
						}
						else{
							memcpy(ERM[freex][6], TAGS[valor2], sizeof(int) * 8);
						}
						ERM[freex][7][0] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
						marcarTag(IF[linha], freex);
					}
					else{	
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32); 
						janelaI[janelaLivre][33] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
				}
				else if(memcmp(IF[linha], MULTI, sizeof(int) *5)==0){			
					int freex = findFreeStation(ERM, somador);
					if(freex!=-1){  
						//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);

						memcpy(&ERM[freex][1][3], IF[linha], sizeof(int) * 5);
						memcpy(dest, &IF[linha][5], sizeof(int) * 5);
						memcpy(src1, &IF[linha][10], sizeof(int) * 5);
						memcpy(src2x, &IF[linha][15], sizeof(int) * 17);
						memcpy(&ERM[freex][2][3], dest, sizeof(int) * 5);
						valor1 = converterBintoDec(src1, 5);
						valor2 = converterBintoDec(src2x, 17);
						if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
							memcpy(ERM[freex][3], TAGS[valor1], sizeof(int) * 8);
						}
						else{
							memcpy(ERM[freex][5], TAGS[valor1], sizeof(int) * 8);
						}
								
						memcpy(ERM[freex][4], TAGS[valor2], sizeof(int) * 8);
						marcarTag(IF[linha], freex);	
						ERA[freex][7][0] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);

					}
					else{
							
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32);
						janelaI[janelaLivre][33] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
				}
				else if(memcmp(IF[linha], DIV, sizeof(int) *5)==0) {
					int freex = findFreeStation(ERM, somador);
					if(freex!=-1){  
						//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);

						memcpy(&ERM[freex][1][3], IF[linha], sizeof(int) * 5);

						memcpy(dest, &IF[linha][5], sizeof(int) * 5);
						memcpy(src1, &IF[linha][10], sizeof(int) * 5);
						memcpy(src2, &IF[linha][15], sizeof(int) * 5);
						memcpy(&ERM[freex][2][3], dest, sizeof(int) * 5);
						
						valor1 = converterBintoDec(src1, 5);
						valor2 = converterBintoDec(src2, 5);
						if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
							memcpy(ERM[freex][3], TAGS[valor1], sizeof(int) * 8);
						}
						else{
							memcpy(ERM[freex][5], TAGS[valor1], sizeof(int) * 8);
						}
						if(memcmp(TAGS[valor2], teste, sizeof(int) * 3)==0){
							getValueRegister(TAGS[valor1], tagsrc2);
							memcpy(ERM[freex][4], TAGS[valor2], sizeof(int) * 8);
						}
						else{
							memcpy(ERM[freex][6], TAGS[valor2], sizeof(int) * 8);
						}
						ERA[freex][7][0] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
							marcarTag(IF[linha], freex);
					}
					else{	
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32); 
						janelaI[janelaLivre][33] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
					
				}
				
				else if(memcmp(IF[linha], DIVI, sizeof(int) *5)==0){
					int freex = findFreeStation(ERM, somador);
					if(freex!=-1){  
						//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);

						memcpy(&ERM[freex][1][3], IF[linha], sizeof(int) * 5);
						memcpy(dest, &IF[linha][5], sizeof(int) * 5);
						memcpy(src1, &IF[linha][10], sizeof(int) * 5);
						memcpy(src2x, &IF[linha][15], sizeof(int) * 17);
						valor1 = converterBintoDec(src1, 5);
						valor2 = converterBintoDec(src2x, 17);
						memcpy(&ERM[freex][2][3], dest, sizeof(int) * 5);
						if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){

							memcpy(ERM[freex][3], TAGS[valor1], sizeof(int) * 8);
						}
						else{
							memcpy(ERM[freex][5], TAGS[valor1], sizeof(int) * 8);
						}
						converterDectoBin(valor2, tagsrc1, 16);
						marcarTag(IF[linha], freex);
										
						memcpy(ERM[freex][4], TAGS[valor2], sizeof(int) * 8);
						ERA[freex][7][0] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);

					}
					else{
							
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32);
						janelaI[janelaLivre][33] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
				}
				else if(memcmp(IF[linha], LI, sizeof(int) *5)==0){			
					if(AddressUnit[0]==0){
						//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ADDRESS UNIT %d.\n", codigo[IF[linha][0]], freex);
						AddressUnit[0] = 1;
						memcpy(&AddressUnit[1], IF[linha], sizeof(int) * 32);
						memset(IF[linha], 0, sizeof (int) * 32);
					}
					else{
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32);
						janelaI[janelaLivre][33] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
				}
				else if(memcmp(IF[linha], LD, sizeof(int) *5)==0){
					if(AddressUnit[0]==0){
						//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para o BUFFER LOAD %d.\n", codigo[IF[linha][0]], freex);
						memcpy(&AddressUnit[1], IF[linha], sizeof(int) * 32);
						AddressUnit[0] = 1;
						memset(IF[linha], 0, sizeof (int) * 32);				
					}
					else{
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32);
						janelaI[janelaLivre][33] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
				}
				else if(memcmp(IF[linha], SD, sizeof(int) *5)==0){
					if(AddressUnit[0]==0){
						//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para o BUFFER STORE %d.\n", codigo[IF[linha][0]], freex);
						memcpy(&AddressUnit[1], IF[linha], sizeof(int) * 32);
						AddressUnit[0] = 1;
						AddressUnit[34] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
					else{
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32);
						janelaI[janelaLivre][33] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
				}
				else if( (memcmp(IF[linha], BEQ, sizeof(int) *5)==0) || 
					(memcmp(IF[linha], BNE, sizeof(int) *5)==0) ||
					(memcmp(IF[linha], BGE, sizeof(int) *5)==0) ||
					(memcmp(IF[linha], BG, sizeof(int) *5)==0) ||
					(memcmp(IF[linha], BLE, sizeof(int) *5)==0) ||
					(memcmp(IF[linha], BL, sizeof(int) *5)==0) ){
					int freex = findFreeStation(ERA, somador);
					if(freex!=-1){  
						//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);
						//marcarTag(IF[linha], freex);
						memcpy(&ERA[freex][1][3], IF[linha], sizeof(int) * 5);

						memcpy(src1, &IF[linha][5], sizeof(int) * 5);
						memcpy(src2, &IF[linha][10], sizeof(int) * 5);
						memcpy(src2x, &IF[linha][15], sizeof(int) * 17);
						
						int valor3;
						valor3 = converterBintoDec(src2x, 17);
						converterDectoBin(valor3, tagsrc1, 16);
						memcpy(ERA[freex][2], tagsrc1, sizeof(int) * 8);



						valor1 = converterBintoDec(src1, 5);
						valor2 = converterBintoDec(src2, 5);
						if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
							memcpy(ERA[freex][3], TAGS[valor1], sizeof(int) * 8);
						}
						else{
							memcpy(ERA[freex][5], TAGS[valor1], sizeof(int) * 8);
						}
						if(memcmp(TAGS[valor2], teste, sizeof(int) * 3)==0){
							getValueRegister(TAGS[valor1], tagsrc2);
							memcpy(ERA[freex][4], TAGS[valor2], sizeof(int) * 8);
						}
						else{
							memcpy(ERA[freex][6], TAGS[valor2], sizeof(int) * 8);
						}
						ERA[freex][7][0] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
					else{	
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32); 
						janelaI[janelaLivre][33] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
				}
				else if(memcmp(IF[linha], JUMP, sizeof(int) *5)==0){
					int freex = findFreeStation(ERA, somador);
					if(freex!=-1){  
						//printf("Instrucao %s passou pela JANELA DE INSTRUCOES e foi carregado para a ER SOMADORA %d.\n", codigo[IF[linha][0]], freex);
						//marcarTag(IF[linha], freex);
						memcpy(&ERA[freex][1][3], IF[linha], sizeof(int) * 5);

						memcpy(src1, &IF[linha][5], sizeof(int) * 5);
						memcpy(src2, &IF[linha][10], sizeof(int) * 5);
						memcpy(src2x, &IF[linha][15], sizeof(int) * 17);
						
						valor1 = converterBintoDec(src1, 5);
						valor2 = converterBintoDec(src2x, 17);
						if(memcmp(TAGS[valor1], teste, sizeof(int) * 3)==0){
							getValueRegister(TAGS[valor1], tagsrc1);
							memcpy(ERA[freex][3], TAGS[valor1], sizeof(int) * 8);
						}
						else{
							memcpy(ERA[freex][5], TAGS[valor1], sizeof(int) * 8);
						}
						if(memcmp(TAGS[valor2], teste, sizeof(int) * 3)==0){
							getValueRegister(TAGS[valor1], tagsrc2);
							memcpy(ERA[freex][4], TAGS[valor2], sizeof(int) * 8);
						}
						else{
							memcpy(ERA[freex][6], TAGS[valor2], sizeof(int) * 8);
						}
						ERA[freex][7][0] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
					else{	
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32); 
						janelaI[janelaLivre][33] = IF[linha][33];
						memset(IF[linha], 0, sizeof (int) * 33);
					}
				}
				else if(memcmp(IF[linha], EXIT, sizeof(int) *5)==0){
					int freex = findFreeStation(ERA, somador);
					if(freex!=-1){  

						memset(IF[linha], 0, sizeof (int) * 32);
					}
					else{	
						memcpy(janelaI[janelaLivre], IF[linha], sizeof(int) * 32);
						memset(IF[linha], 0, sizeof (int) * 32);
					}
				}

			}
		}

	}
}



int carregar_programa(){
	//printf("TESTE!\n");
	FILE *arquivo;	

	if((arquivo = fopen("arquivo.dat", "r")) == NULL){
		printf("Erro na abertura do arquivo dentro da Funcao: quantidade_buscas_fila'\n ");
		exit(0);	
	}


	char buffer[100];
	int count = 0; 
	int length = 0;
	char* inst;
	int* instrucao;
	int* registrador;
	int linhaP = 0;
	int comando = 0;
	while (fgets(buffer, 100, arquivo) != NULL) {	

		
		buffer[strlen(buffer) - 1] = '\0';
		if (strcmp(buffer, "TEXTO:") == 0){
			while (fgets(buffer, 100, arquivo) != NULL){	
				if (strcmp(buffer, "\n") == 0){
					continue;
				}
				buffer[strlen(buffer) - 1] = '\0';
				strcpy(codigo[linhaP], buffer); 
							
				//printf("%s\n",buffer);
				inst = strtok(buffer, " ,.-\n");
				//printf("%sX\n", inst);


				instrucao = fetch_instructionOPCode(inst);
				if(instrucao!=NULL){
					qtdeInstrucoes++;
					memcpy(&memoria[linhaP][0], instrucao, sizeof(int) * 5);
				}
				
				comando += 5;
				if((strcmp(inst, "add")==0) || (strcmp(inst, "sub")==0) || (strcmp(inst, "mult")==0) || (strcmp(inst, "div")==0)){
					//printf("AS %s\n", inst);
					inst = strtok(NULL, " ,.-\\n");
					int qtde = 0;
					while(inst != NULL){
						registrador = fetch_register(inst);
						if(registrador!=NULL){
							memcpy(&memoria[linhaP][comando], registrador, sizeof(int) * 5);
							comando += 5;
							qtde++;
						}
						inst = strtok(NULL, " ,.-\n");
					}
					if(qtde!=3){
						printf("ERRO SEMANTICO!");
						abort();
					}	
				}
				else if((strcmp(inst, "nop")==0)){


				}
				else if((strcmp(inst, "exit")==0)){

				}
				else if((strcmp(inst, "sd")==0)){
					inst = strtok(NULL, " ,.-\\n");
					int qtde = 0;
					while(inst != NULL){
						if(qtde==0){
							int strt = strtol(inst, &inst, 10);
							if(strt!=0L){
								//printf("INst:%sX\n", inst);
								int binaryNumber[22] = { 0 };
								converterDectoBin(strt, binaryNumber, 21);
							
								//printf("C: %d\n", comando);	
								memcpy(&memoria[linhaP][comando], binaryNumber, sizeof(int) * 22);
								comando += 22;
								qtde++;
							}
							else{
								printf("ERRO SEMANTICO! %s\n", inst);
								abort();
							}
						}
						
						else {
							registrador = fetch_register(inst);
							if(registrador!=NULL){
								
								memcpy(&memoria[linhaP][comando], registrador, sizeof(int) * 5);
								comando += 5;
								qtde++;
							}
						}
						inst = strtok(NULL, " ,.-\n");
					}
					if(qtde!=2){
						printf("ERRO SEMANTICO! X");
						abort();
					}
					
				}
				else if((strcmp(inst, "li")==0) || (strcmp(inst, "ld")==0)){
					inst = strtok(NULL, " ,.-\\n");
					int qtde = 0;
					while(inst != NULL){
						if(qtde==1){
							int strt = strtol(inst, &inst, 10);
							if(strt!=0L){
								//printf("INst:%sX\n", inst);
								int binaryNumber[22] = { 0 };
								converterDectoBin(strt, binaryNumber, 21);
							
								//printf("C: %d\n", comando);	
								memcpy(&memoria[linhaP][comando], binaryNumber, sizeof(int) * 22);
								qtde++;
							}
							else{
								printf("ERRO SEMANTICO! %s\n", inst);
								abort();
							}
						}
						
						else {
							registrador = fetch_register(inst);
							if(registrador!=NULL){
								
								memcpy(&memoria[linhaP][comando], registrador, sizeof(int) * 5);
								comando += 5;
								qtde++;
							}
						}
						inst = strtok(NULL, " ,.-\n");
					}
					if(qtde!=2){
						printf("ERRO SEMANTICO!");
						abort();
					}
					
				}
				else if((strcmp(inst, "jump")==0)){
					inst = strtok(NULL, " ,.-\\n");
					int qtde = 0;
					while(inst != NULL){
						if(qtde==0){
							int strt = strtol(inst, &inst, 10);
							if(strt!=0L){
								//printf("INst:%sX\n", inst);
								int binaryNumber[27] = { 0 };
								converterDectoBin(strt, binaryNumber, 26);
							
								//printf("C: %d\n", comando);	
								memcpy(&memoria[linhaP][comando], binaryNumber, sizeof(int) * 27);
								qtde++;
							}
							else{
								printf("ERRO SEMANTICO! %s\n", inst);
								abort();
							}
						}
						inst = strtok(NULL, " ,.-\n");
					}
					if(qtde!=1){
						printf("ERRO SEMANTICO!");
						abort();
					}
					
				}	
				
				else if((strcmp(inst, "addi")==0) || (strcmp(inst, "subi")==0) || (strcmp(inst, "multi")==0) || (strcmp(inst, "divi")==0) ||
					(strcmp(inst, "beq")==0) || (strcmp(inst, "bne")==0) || (strcmp(inst, "bg")==0) || (strcmp(inst, "bge")==0) ||
					(strcmp(inst, "bl")==0) || (strcmp(inst, "ble")==0)){
					inst = strtok(NULL, " ,.-\\n");
					int qtde = 0;
					while(inst != NULL){
						
						if(qtde==2){
							int strt = strtol(inst, &inst, 10);

							if(strt!=0L){
								//printf("INst:%sX\n", inst);
								int binaryNumber[17] = { 0 };
								converterDectoBin(strt, binaryNumber, 16);
							
								//printf("C: %d\n", comando);
								memcpy(&memoria[linhaP][comando], binaryNumber, sizeof(int) * 17);
								qtde++;
							}
							else{
								printf("ERRO SEMANTICO! %s\n", inst);
								abort();
							}
						}
						
						else {
							registrador = fetch_register(inst);
							if(registrador!=NULL){
								
								memcpy(&memoria[linhaP][comando], registrador, sizeof(int) * 5);
								comando += 5;
								qtde++;
							}
						}
						inst = strtok(NULL, " ,.-\n");
					}
					if(qtde!=3){
						printf("ERRO SEMANTICO!");
						abort();
					}
					
				}		
				
				linhaP++;
				comando = 0;
				
				

			
				
				
			}
			//printf("3\n");
			//fclose(arquivo);
			//printf("2\n");	
			return -1;
		}
		else{
			//printf("X"); 		
		}
		length++;
		count++;
	}
	return -1;
	fclose(arquivo);
}




