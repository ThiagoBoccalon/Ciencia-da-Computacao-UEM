#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#include "carrega_memoria.h"
#include "estrutura_arquitetura.h"
#include "util.h"

#define   MAX 50

int clk;

char codigo[600][30];

int **memoria;

char ***dependencias;

int **IF;
int **EX;
int **IS;
int **IW;
int **WB;

int ldx;
	int sdx;
	int addx;
	int addix;
	int subx;
	int subix;
	int divx;
	int divix;
	int multx;
	int multix;
	int lix;
int beqx;
int bnex;
int blex;
int blx;
int bgex;
int bgx;
int nopx;
int jumpx;
int exitx;

int **memoriaIM;

int SD[5] = {0,0,0,0,1};
int LD[5] = {0,0,0,1,0};
int LI[5] = {0,0,0,1,1};
int BEQ[5] = {0,0,1,0,0};
int BNE[5] = {0,0,1,0,1};
int BG[5] = {0,0,1,1,0};
int BGE[5] = {0,0,1,1,1};
int BL[5] = {0,1,0,0,0};
int BLE[5] = {0,1,0,0,1};
int JUMP[5] = {0,0,0,1,0};
int EXIT[5] = {0,1,0,1,1};
int ADD[5] = {0,1,1,0,0};
int ADDI[5] = {0,1,1,0,1};
int SUB[5] = {0,1,1,1,0};
int SUBI[5] = {0,1,1,1,1};
int MULT[5] = {1,0,0,0,0};
int MULTI[5] = {1,0,0,0,1};
int DIV[5] = {1,0,0,1,0};
int DIVI[5] = {1,0,0,1,1};
int NOP[5] = {1,0,1,0,0};

int R0[5] = {0, 0, 0, 0, 0};
int R1[5] = {0, 0, 0, 0, 1};
int R2[5] = {0, 0, 0, 1, 0};
int R3[5] = {0, 0, 0, 1, 1};
int R4[5] = {0, 0, 1, 0, 0};
int R5[5] = {0, 0, 1, 0, 1};
int R6[5] = {0, 0, 1, 1, 0};
int R7[5] = {0, 0, 1, 1, 1};
int R8[5] = {0, 1, 0, 0, 0};
int R9[5] = {0, 1, 0, 0, 1};
int R10[5] = {0, 1, 0, 1, 0};
int R11[5] = {0, 1, 0, 1, 1};
int R12[5] = {0, 1, 1, 0, 0};
int R13[5] = {0, 1, 1, 0, 1};
int R14[5] = {0, 1, 1, 1, 0};
int R15[5] = {0, 1, 1, 1, 1};
int R16[5] = {1, 0, 0, 0, 0};
int R17[5] = {1, 0, 0, 0, 1};
int R18[5] = {1, 0, 0, 1, 0};
int R19[5] = {1, 0, 0, 1, 1};
int R20[5] = {1, 0, 1, 0, 0};
int R21[5] = {1, 0, 1, 0, 1};
int R22[5] = {1, 0, 1, 1, 0};
int R23[5] = {1, 0, 1, 1, 1};
int R24[5] = {1, 1, 0, 0, 0};
int R25[5] = {1, 1, 0, 0, 1};
int R26[5] = {1, 1, 0, 1, 0};
int R27[5] = {1, 1, 0, 1, 1};
int R28[5] = {1, 1, 1, 0, 0};
int R29[5] = {1, 1, 1, 0, 1};
int R30[5] = {1, 1, 1, 1, 0};
int R31[5] = {1, 1, 1, 1, 1};

int **TAGS;


char ***controle;


int ***ERS;
int ***ERL;
int ***ERA;
int ***ERM;
int **janelaI;

int ***FP_Adders;
int ***FP_Multipliers;
int *AddressUnit;
int **MemoryUnit;



int **ControleReg;



	int somador;
	int multiplicador;
	int busca;		
	int janela;
	int porta_registradores;
	int bufferLoad;
	int iMemoria;
	int bufferStore;
	int memoriax;
	int emissao;
	int calc_endereco;

	int ultimaLinha;

int **bancoreg;
int qtdeInstrucoes = 0;

int findFreeIF(){
	int x;
	int cmp[32] = {0};
	for(x=0; x<busca; x++){
		if( memcmp(IF[x], cmp, sizeof(int) *32)==0 ){
			return x;
		}
	}
	return -1;
}
int converterBintoDec(int *binaryNumber, int size){
	double decimal = 0;
	int ind;
	for(ind=size-1; ind>=0;ind--){
		

		if(binaryNumber[ind]==1){
			double indice = size-ind-1;
			decimal = decimal + pow(2.0, indice);
		}
	}	
	return decimal;
}

void buscaInstrucao(){
	int linha;
	int fim[32] = {0};
	
	for(linha=ultimaLinha; linha<memoriax; linha++){
		ultimaLinha = linha;
		if(memcmp(memoria[linha], fim, sizeof(int) *32)==0){
			break;
		}
		else{
			int free = findFreeIF();
			if(free!=-1){
				printf("Instrucao %s foi buscada da memoria.\n", codigo[linha]); 
				if( 	(memcmp(memoria[linha], ADD, sizeof(int) * 5)==0) ||
					(memcmp(memoria[linha], SUB, sizeof(int) * 5)==0) ||
					(memcmp(memoria[linha], MULT, sizeof(int) * 5)==0)||
					(memcmp(memoria[linha], DIV, sizeof(int) * 5)==0) ) {

					int dest[5] = {-1};
					int src1[5] = {-1};
					int src2[5] = {-1};
					memcpy(dest, &memoria[linha][5], sizeof(int) * 5);
					memcpy(src1, &memoria[linha][10], sizeof(int) * 5);
					memcpy(src2, &memoria[linha][15], sizeof(int) * 5);
					strcpy(dependencias[linha][0], fetch_Register(dest));
					int y;
					for(y=linha-1; y>=0; y--){
						if(strcmp(fetch_Register(src1), dependencias[y][0])==0){
							char dp1[5];
							sprintf(dp1, "%d", y);
							strcpy(dependencias[linha][2], dp1);
							break;
						}
					}
					for(y=linha-1; y>=0; y--){
						if(strcmp(fetch_Register(src2), dependencias[y][0])==0){
							char dp2[5];
							sprintf(dp2, "%d", y);
							strcpy(dependencias[linha][2], dp2);
							break;
						}
					}
					

					

			
				}
				else if((memcmp(memoria[linha], ADDI, sizeof(int) * 5)==0) ||
					(memcmp(memoria[linha], SUBI, sizeof(int) * 5)==0) ||
					(memcmp(memoria[linha], MULTI, sizeof(int) * 5)==0)||
					(memcmp(memoria[linha], DIVI, sizeof(int) * 5)==0) ) {

					int dest[5] = {-1};
					int src1[5] = {-1};
					memcpy(dest, &memoria[linha][5], sizeof(int) * 5);
					memcpy(src1, &memoria[linha][10], sizeof(int) * 5);
					strcpy(dependencias[linha][0], fetch_Register(dest));
					int y;
					for(y=linha-1; y>=0; y--){
						if(strcmp(fetch_Register(src1), dependencias[y][0])==0){
							char dp1[5];
							sprintf(dp1, "%d", y);
							strcpy(dependencias[linha][1], dp1);
							break;
						}
					}

				}

				else if((memcmp(memoria[linha], LD, sizeof(int) * 5)==0) ) {
					int dest[5] = {-1};
					int src1[5] = {-1};
					memcpy(dest, &memoria[linha][5], sizeof(int) * 5);
					memcpy(src1, &memoria[linha][10], sizeof(int) * 22);
					
					strcpy(dependencias[linha][0], fetch_Register(dest));
					char number2[10];
					int number;
					number = converterBintoDec(src1, 22);
					sprintf(number2, "%d", number);
					int y;
					for(y=linha-1; y>=0; y--){
						if(strcmp(number2, dependencias[y][0])==0){
							char dp1[5];
							sprintf(dp1, "%d", y);
							strcpy(dependencias[linha][1], dp1);
							break;
						}
					}
				}
				else if((memcmp(memoria[linha], LI, sizeof(int) * 5)==0) ) {
					int dest[5] = {-1};
					memcpy(dest, &memoria[linha][5], sizeof(int) * 5);			
					strcpy(dependencias[linha][0], fetch_Register(dest));

				}
				
				else if((memcmp(memoria[linha], BEQ, sizeof(int) * 5)==0) ||
					(memcmp(memoria[linha], BNE, sizeof(int) * 5)==0) ||
					(memcmp(memoria[linha], BGE, sizeof(int) * 5)==0)||
					(memcmp(memoria[linha], BG, sizeof(int) * 5)==0)||
					(memcmp(memoria[linha], BLE, sizeof(int) * 5)==0)||
					(memcmp(memoria[linha], BL, sizeof(int) * 5)==0) ){
				
					int src1[5] = {-1};
					int src2[5] = {-1};
					memcpy(src1, &memoria[linha][10], sizeof(int) * 5);
					memcpy(src2, &memoria[linha][15], sizeof(int) * 5);
					int y;
					for(y=linha-1; y>=0; y--){
						if(strcmp(fetch_Register(src1), dependencias[y][0])==0){
							char dp1[5];
							sprintf(dp1, "%d", y);
							strcpy(dependencias[linha][2], dp1);
							break;
						}
					}
					for(y=linha-1; y>=0; y--){
						if(strcmp(fetch_Register(src2), dependencias[y][0])==0){
							char dp2[5];
							sprintf(dp2, "%d", y);
							strcpy(dependencias[linha][2], dp2);
							break;
						}
					}
				}
				else if((memcmp(memoria[linha], SD, sizeof(int) * 5)==0) ) {
					int dest[5] = {-1};
					int src[5] = {-1};
					memcpy(dest, &memoria[linha][5], sizeof(int) * 22);	
					memcpy(src, &memoria[linha][27], sizeof(int) * 5);	
					char number[10];
					int number1;
					number1 = converterBintoDec(dest, 22);
					sprintf(number, "%d", number1);
	
					strcpy(dependencias[linha][0], number);
					int y;
					for(y=linha-1; y>=0; y--){
						if(strcmp(fetch_Register(src), dependencias[y][0])==0){
							char dp1[5];
							sprintf(dp1, "%d", y);
							strcpy(dependencias[linha][2], dp1);
							break;
						}
					}

				}

				memcpy(IF[free], memoria[linha], sizeof(int) *32);
				IF[free][33] = linha;
			}
			else{
				break;
			}
		}
	}
}





void converterDectoBin(int decimalNumber, int *binaryNumber,int size){

    int quotient;

    
	int i=size; 

    quotient = decimalNumber;

    while(1){

         binaryNumber[i]= quotient % 2;
         quotient = quotient / 2;
	if(i==0){
		break;
	}	
	i--;

    }

}

void *malloc_(size_t size){
	void *p;
	p = malloc(size);
	
	if(!p){
	
	perror("malloc");
	abort();	
	}
	return p;

}





void criarEstacoes(){
	ERM = malloc_(sizeof(int **) * multiplicador);
	ERA = malloc_(sizeof(int **) * somador);
	ERL = malloc_(sizeof(int **) * bufferLoad);
	ERS = malloc_(sizeof(int **) * bufferStore);
	janelaI = malloc_(sizeof(int *) * janela);

	
	FP_Adders = malloc_(sizeof(int **) * somador);
	FP_Multipliers = malloc_(sizeof(int **) * multiplicador);

	AddressUnit = malloc_(sizeof(int) * 34);
	MemoryUnit = malloc_(sizeof(int*) * 7);
	controle = malloc_(sizeof (char**) * qtdeInstrucoes);
	dependencias = malloc_(sizeof (char**) * qtdeInstrucoes);
	int t;
	int p;
	int q;
	for(t=0; t<qtdeInstrucoes; t++){
		dependencias[t] = malloc_(sizeof(char *) * 3);
		for(p=0; p<3; p++){
			dependencias[t][p] = malloc_(sizeof(char) * 25);
			for(q=0; q<24; q++){
				dependencias[t][p][q] = '_';
			}
			dependencias[t][p][24] = '\0';
			
		}
	}
	
	int a;
	int b;
	for(a=0; a<qtdeInstrucoes; a++){
		for(b=0; b<3; b++){
			printf("%s | ",dependencias[a][b]);
		}
		printf("\n");
	}
	IF = malloc_(sizeof(int) * busca);
	IW = malloc_(sizeof(int) * janela);
	WB = malloc_(sizeof(int) * (somador + multiplicador + 1));
	IS = malloc_(sizeof(int) * emissao);
	EX = malloc_(sizeof(int) * (somador + multiplicador + 1));

	int i;
	int j;
	int k;
	for(i=0; i<7; i++){
		if( (i==1) || (i==6) ){
			MemoryUnit[i] = malloc_(sizeof(int));
			MemoryUnit[i][0] = 0;
		}
		else{
			MemoryUnit[i] = malloc_(sizeof(int) * 8);
			memset(MemoryUnit[i], 0, sizeof(int) * 8);
		}
	}	
	for(i=0; i<33; i++){
		//MemoryUnit[i] = 0;
		AddressUnit[i] = 0;
	}
	//MemoryUnit[34] = 0;

	for(i=0; i<somador; i++){
		FP_Adders[i] = malloc_(sizeof(int*) * 7);
		for(j=0; j<7; j++){
			if( (j==1) || (j==6) ){
				FP_Adders[i][j] = malloc_(sizeof(int));
				FP_Adders[i][j][0] = 0;
			}
			else{
				FP_Adders[i][j] = malloc_(sizeof(int) * 8);
				memset(FP_Adders[i][j], 0, sizeof(int) * 8);
			}
		}
	}
	
	for(i=0; i<multiplicador; i++){
		FP_Multipliers[i] = malloc_(sizeof(int*) * 7);
		for(j=0; j<7; j++){
			if( (j==1) || (j==6) ){
				FP_Multipliers[i][j] = malloc_(sizeof(int));
				FP_Multipliers[i][j][0] = 0;
			}
			else{
				FP_Multipliers[i][j] = malloc_(sizeof(int) * 8);
				for(k=0; k<8; k++){
					FP_Multipliers[i][j][k] = 0;
				}
			}
		}
	}
	for(i=0; i<janela; i++){
		janelaI[i] = malloc_(sizeof(int) * 33);
		for(j=0; j<33; j++){
			janelaI[i][j] = 0;
		}
	}

	for(i=0; i<multiplicador; i++){
		ERM[i] = malloc_(sizeof(int*) * 8);
		for(j=0; j<7; j++){
			ERM[i][j] = malloc_(sizeof(int) * 8);
			for(k=0; k<8; k++){
				ERM[i][j][k] = 0;
			}
		}
		ERM[i][7] = malloc_(sizeof(int));
		int tag[8] = {0};
		converterDectoBin(i, tag, 7);
		memcpy(ERM[i][0], tag, sizeof(int) * 8);
		ERM[i][0][0] = 0;
		ERM[i][0][1] = 1;
		ERM[i][0][2] = 0;
	}
	
	for(i=0; i<somador; i++){
		ERA[i] = malloc_(sizeof(int*) * 7);
		for(j=0; j<7; j++){
			ERA[i][j] = malloc_(sizeof(int) * 8);
			for(k=0; k<8; k++){
				ERA[i][j][k] = 0;
				//printf("%d %d %d\n",i, j, k);
			}
		}
		ERA[i][7] = malloc_(sizeof(int));
		int tag[8]= {0};
		converterDectoBin(i, tag, 7);
		memcpy(ERA[i][0], tag, sizeof(int) * 8);
		ERA[i][0][0] = 0;
		ERA[i][0][1] = 0;
		ERA[i][0][2] = 1;
	}
	
	for(i=0; i<bufferLoad; i++){
		ERL[i] = malloc_(sizeof(int*) * 7);
		for(j=0; j<7; j++){
			ERL[i][j] = malloc_(sizeof(int) * 8);
			for(k=0; k<8; k++){
				ERL[i][j][k] = 0;
			}
		}
		ERL[i][7] = malloc_(sizeof(int));
		int tag[8]= {0};
		converterDectoBin(i, tag, 7);
		memcpy(ERL[i][0], tag, sizeof(int) * 8);
		ERL[i][0][0] = 0;
		ERL[i][0][1] = 1;
		ERL[i][0][2] = 1;
	}
	
	for(i=0; i<bufferStore; i++){
		ERS[i] = malloc_(sizeof(int*) * 7);
		for(j=0; j<7; j++){
			ERS[i][j] = malloc_(sizeof(int) * 8);
			for(k=0; k<8; k++){
				ERS[i][j][k] = 0;
			}
		}
		ERS[i][7] = malloc_(sizeof(int));
		int tag[8]= {0};
		converterDectoBin(i, tag, 7);
		memcpy(ERS[i][0], tag, sizeof(int) * 8);
		ERS[i][0][0] = 1;
		ERS[i][0][1] = 0;
		ERS[i][0][2] = 0;
	}

	//printf("XXXXXXXXXXXXXXXXXXXXXXXx%d\n", ERA[0][0][0]);
	for(i=0; i<busca; i++){
		IF[i] = malloc_(sizeof(int) * 33);
		memset(IF[i], 0, sizeof (int) * 33);
	}	
	for(i=0; i<janela; i++){
		IW[i] = malloc_(sizeof(int) * 32);
		memset(IW[i], 0, sizeof (int) * 32);
	}
	for(i=0; i<emissao; i++){
		IS[i] = malloc_(sizeof(int) * 32);
		memset(IS[i], 0, sizeof (int) * 32);
	}
		
	
	printf("Estacoes Criadas!\n");

}

void criarMemoria(int linhas){
/* CRIAR MEMÓRIA */
	
	


	memoria = malloc_(sizeof(int*) * linhas);
	
	int i;
	int j;
	for(i=0; i<linhas; i++){
		memoria[i] = malloc_(sizeof(int) * 32);
		for(j=0; j<32; j++){
			memoria[i][j] = 0;
		}

	}

	memoriaIM = malloc_(sizeof(int*) * 20);
	

	for(i=0; i<20; i++){
		memoriaIM[i] = malloc_(sizeof(int) * 32);
		for(j=0; j<32; j++){
			memoriaIM[i][j] = 0;
		}

	}
	printf("Memoria Criada!\n");
}


void criaBancoReg(){
	bancoreg = malloc_(sizeof(int *) * 32);
	ControleReg = malloc_(sizeof(int *) * 32);
	
	int i;
	for(i=0; i<32; i++){
		bancoreg[i] = malloc_(sizeof(int) * 32);
		memset(bancoreg[i], 0, sizeof (int) * 32);
		ControleReg[i] = bancoreg[i];
	}
	
	printf("Banco de Registradores Criado!\n");
}

void printInfo2(){
		
	int a;
	int b;
	int c;
	printf("\nTAGS\n");
	for(a=0; a<32; a++){
		for(b=0; b<8; b++){
			printf("%d ", TAGS[a][b]);
		}
		printf("\n");
	}
	printf("\nSoma\n");
	for(a=0; a<somador; a++){
		for(b=0; b<8; b++){
			printf("%d ", ERA[a][0][b]);
		}
		printf("\n");
	}
	printf("\nMultiplica\n");
	for(a=0; a<multiplicador; a++){
		for(b=0; b<8; b++){
			printf("%d ", ERM[a][0][b]);
		}
		printf("\n");
	}
	printf("\nBL\n");
	for(a=0; a<bufferLoad; a++){
		for(b=0; b<8; b++){
			printf("%d ", ERL[a][0][b]);
		}
		printf("\n");
	}
	printf("\nBS\n");
	for(a=0; a<bufferStore; a++){
		for(b=0; b<8; b++){
			printf("%d ", ERS[a][0][b]);
		}
		printf("\n");
	}

	printf("\n\nMEMORIA\n");
	for(a=0; a<memoriax; a++){
		for(b=0; b<32; b++){
			printf("%d ", memoria[a][b]);
		}
		printf("\n");
	}

	printf("\nREGISTRADORES\n");
	for(a=0; a<32; a++){
		for(b=0; b<32; b++){
			printf("%d ", bancoreg[a][b]);
		}
		printf("\n");
	}

	printf("\nINSTRUCTION FETCH\n");
	
	for(a=0; a<busca; a++){
		for(b=0; b<32; b++){
			printf("%d ", IF[a][b]);
		}
		printf("\n");
	}

	printf("\n\nJANELA INSTRUCOES\n");
	
	for(a=0; a<janela; a++){
		for(b=0; b<32; b++){
			printf("%d ", janelaI[a][b]);
		}
		printf("\n");
	}
	printf("\nADDER RESERVATION STATION\n");
	for(a=0; a<somador; a++){
		for(b=0; b<7; b++){

			for(c=0; c<8; c++){
				printf("%d ", ERA[a][b][c]);
			}
			printf(" | ");
		}
		printf("\n");
	}
	
	printf("\nFP ADDERS\n");
	for(a=0; a<somador; a++){
		for(b=0; b<6; b++){
			if(b!=1){
				for(c=0; c<8; c++){
					printf("%d ", FP_Adders[a][b][c]);
				}
			}
			else{
				printf("%d ", FP_Adders[a][b][0]);
			}
			printf(" | ");
		}
		printf("\n");
	}
	
	printf("\nMULTIPLIER RESERVATION STATION\n");
	for(a=0; a<multiplicador; a++){
		for(b=0; b<7; b++){
			for(c=0; c<8; c++){
				printf("%d ", ERM[a][b][c]);
			}
			printf(" | ");
		}
		printf("\n");
	}
	
	printf("\nFP MULTIPLIERS\n");
	for(a=0; a<multiplicador; a++){
		for(b=0; b<6; b++){
			if(b!=1){
				for(c=0; c<8; c++){
					printf("%d ", FP_Multipliers[a][b][c]);
				}
			}
			else{
				printf("%d ", FP_Multipliers[a][b][0]);
			}
			printf(" | ");
		}
		printf("\n");
	}

	printf("\nBUFFER LOAD\n");
	for(a=0; a<bufferLoad; a++){
		for(b=0; b<7; b++){
			for(c=0; c<8; c++){
				printf("%d ", ERL[a][b][c]);
			}
			printf(" | ");
		}
		printf("\n");
	}

	printf("\nBUFFER STORE\n");
	for(a=0; a<bufferStore; a++){
		for(b=0; b<7; b++){
			for(c=0; c<8; c++){
				printf("%d ", ERS[a][b][c]);
			}
			printf(" | ");
		}
		printf("\n");
	}
	
	printf("\nADDRESS UNIT\n");
	for(a=0; a<33; a++){
		printf("%d ", AddressUnit[a]);
	}
	printf("\n");

	printf("\nMEMORY UNIT\n");
	for(a=0; a<6; a++){
		if(a!=1){
			for(c=0; c<8; c++){
				printf("%d ", MemoryUnit[a][c]);
			}
		}
		else{
			printf("%d ", MemoryUnit[a][0]);
		}
		printf(" | ");
	}
	printf("\nDependencias\n");
	
	for(a=0; a<qtdeInstrucoes; a++){
		for(b=0; b<3; b++){
			printf("%25s | ",dependencias[a][b]);
		}
		printf("\n");
	}
	


}


int main(){
	
	ultimaLinha = 0;
	
	TAGS = malloc_(sizeof(int*) * 32);
	int a;
	for(a=0; a<32; a++){
		TAGS[a] = malloc_(sizeof(int) * 8);
		TAGS[a][0] = 0;
		TAGS[a][1] = 0;
		TAGS[a][2] = 0;
		int reg[5];
		converterDectoBin(a, reg, 4);
		memcpy(&TAGS[a][3], reg, sizeof(int) * 5);
	}
	
	int b;
	printf("TAGS\n");
	for(a=0; a<32; a++){
		for(b=0; b<8; b++){
			printf("%d ", TAGS[a][b]);
		}
		printf("\n");		
	}
	


	
	
	/*Buscando estrutura da Arquitetura 
	  no arquivo de origem*/
	
	estrutura_arquitetura(&somador, &multiplicador, &busca, &janela, &porta_registradores,
				 &bufferLoad, &iMemoria, &bufferStore, &memoriax, &emissao, &calc_endereco);

	estrutura_arquitetura2(&ldx, &sdx, &addx, &addix, &subx, &subix, &divx, &divix, &multx, &multix, &lix, &beqx, &bnex, &bgex, &bgx, &blex, &blx, &jumpx, &nopx, &exitx);
	
	/*
		Verificando a corretude do alg.
		Desnecessário para version futuras
	*/
	//estrutura();
	printf("Somador: %d\n", somador);
	printf("Multiplicador: %d\n", multiplicador);
	printf("Busca: %d\n", busca);
	printf("Janela: %d\n", janela);
	printf("Porta de Registradores: %d\n", porta_registradores);
	printf("Buffer Load: %d\n", bufferLoad);
	printf("iMemoria: %d\n", iMemoria);
	printf("Buffer Store %d\n", bufferStore);
	printf("memoria: %d\n", memoriax);
	printf("Emissao: %d\n", emissao);
	printf("Calculo endereço: %d\n", calc_endereco);
		printf("ld: %d\n", ldx);
		printf("li %d\n", lix);
		printf("sd: %d\n", sdx);
		printf("add: %d\n", addx);
	printf("addi: %d\n", addix);
	printf("sub: %d\n", subx);
	printf("subi: %d\n", subix);
	printf("div: %d\n", divx);
	printf("divi: %d\n", divix);
	printf("mult: %d\n", multx);
	printf("multi: %d\n", multix);
	printf("BEQ: %d\n", beqx);
	printf("BNE: %d\n", bnex);
	printf("BGE: %d\n", bgex);
	printf("BG: %d\n", bgx);
	printf("BLE: %d\n", blex);
	printf("BL: %d\n", blx);
	printf("JUMP: %d\n", jumpx);
	printf("NOP: %d\n", nopx);
	printf("EXIT: %d\n", exitx);
	criarMemoria(memoriax);
	criaBancoReg();

	


	//printf("%d %d\n", sizeof(memoria[0][0]), sizeof(sd[0]));
	carregar_programa(memoriax);
	criarEstacoes();
	//criarJanela();
	
	
	printf("\n\nPrograma Carregado para a Memoria!\n\n");
	


	//While -> clocks
	clk=1;
	while(1){
		printf("------------  CLOCK:  %d  ------------\n", clk); 

		
		processarMemoryUnit();
		

		carregarReservationStation();
		carregarAddressUnit();
		carregarWindow();
		
		
		carregar_janela();		
		buscaInstrucao();
		
		printInfo2();
		printf("\nContinuar?");
		
		char *teste = malloc_(256);
		printf("\n");
		if(clk>13){
			break;
		}
				scanf("%s", teste);
		clk++;
	}

	

	return 0;
}
