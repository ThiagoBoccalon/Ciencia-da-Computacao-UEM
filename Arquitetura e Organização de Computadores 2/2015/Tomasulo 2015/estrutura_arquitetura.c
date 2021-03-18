#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAX 50

int quantidade_ciclosInInstrucao(char *inst){
	char buffer_ciclo[MAX];		// buffer utilizado para encontrar a quantidade de instruções buscadas para a fila
	FILE *arquivo;
	int n_ciclos;	
	char *value_ciclo;
	
	if((arquivo = fopen("arquivo.dat", "r")) == NULL){
		printf("Erro na abertura do arquivo dentro da Funcao: quantidade_buscas_fila'\n ");
		exit(0);	
	}	
	fgets(buffer_ciclo, MAX, arquivo);
	value_ciclo = (strtok(buffer_ciclo, " "));
	
	while(*value_ciclo != *inst){
		fgets(buffer_ciclo, MAX, arquivo);
		value_ciclo = (strtok(buffer_ciclo, " "));		
	}
	
	n_ciclos = (atoi(strtok(NULL, " "))); 
	while(n_ciclos == 0){
		n_ciclos = (atoi(strtok(NULL, " "))); 		
	}
	fclose(arquivo);
	return n_ciclos;	
}


int defArquitetura(char *comp_arquitetura){
	int n_buscas;	
	char buffer_q[MAX];		// buffer utilizado para encontrar a quantidade de instruções buscadas para a fila
	FILE *arquivo;	

	if((arquivo = fopen("arquivo.dat", "r")) == NULL){
		printf("Erro na abertura do arquivo dentro da Funcao: quantidade_buscas_fila'\n ");
		exit(0);	
	}
	
	/* descobrir a quantidade de instruções a ser buscada */		
	
	fgets(buffer_q, MAX, arquivo);
	char *value_str = (strtok(buffer_q, " "));			
	
	while(*value_str != *comp_arquitetura){
		
		fgets(buffer_q, MAX, arquivo);
		value_str = (strtok(buffer_q, " "));
	}
	
	n_buscas = (atoi(strtok(NULL, " "))); 

	while(n_buscas == 0){
		n_buscas = (atoi(strtok(NULL, " "))); 		
	}
	fclose(arquivo);
	return n_buscas;
	
}

void estrutura_ciclo_instrucao(int *add, int *sub, int *div, int *mul){
	*add = quantidade_ciclosInInstrucao("add.i");
	*sub = quantidade_ciclosInInstrucao("sub");
	*div = quantidade_ciclosInInstrucao("div");
	*mul = quantidade_ciclosInInstrucao("mul.i");
}

int infoArquitetura(char *comp_arquitetura){
	char buffer[100];
	FILE *arquivo;	
	char* inst;
	if((arquivo = fopen("arquivo.dat", "r")) == NULL){
		printf("Erro na abertura do arquivo dentro da Funcao: quantidade_buscas_fila'\n ");
		exit(0);	
	}
	while (fgets(buffer, 100, arquivo) != NULL) {	
		buffer[strlen(buffer) - 1] = '\0';
		if(strcmp(buffer, "CICLOS:")==0){
			while (fgets(buffer, 100, arquivo) != NULL){
				if (strcmp(buffer, "TEXTO:") == 0){
					break;
				}
				inst = strtok(buffer, " ");
				
				if(strcmp(inst, comp_arquitetura)==0){
					inst = strtok(NULL, " ");
					int val = atoi(inst);
					return val;
				}	
			}
		}
		if (strcmp(buffer, "TEXTO:") == 0){
			break;
		}
	}
	return 0;
		
}

int defArquitetura2(char *comp_arquitetura){
	FILE *arquivo;	

	if((arquivo = fopen("arquivo.dat", "r")) == NULL){
		printf("Erro na abertura do arquivo dentro da Funcao: quantidade_buscas_fila'\n ");
		exit(0);	
	}

	int ch = getc(arquivo);
	int CUR_MAX = 4096;
	char *buffer = (char*) malloc(sizeof(char) * CUR_MAX); // allocate buffer.
	int count = 0; 
	int length = 0;
	char *info;

	while ((ch != EOF) ) {	
		if(count ==CUR_MAX) { // time to expand ?
		  CUR_MAX *= 2; // expand to double the current size of anything similar.
		  count = 0;
		  buffer = realloc(buffer, CUR_MAX); // re allocate memory.
		}
		ch = getc(arquivo); // read from stream.
		buffer[length] = ch; // stuff in buffer.
		info = strstr(buffer, comp_arquitetura);
		if(info != NULL){
			//printf("teste %s\n", info);
			fgets (info , 100 , arquivo);
				fclose(arquivo);
			return atoi(info);
		}
		
					
			
		length++;
		count++;
	}

	fclose(arquivo);
	return 0;
}

int defArquitetura3(char *comp_arquitetura){
	FILE *arquivo;	

	if((arquivo = fopen("arquivo.dat", "r")) == NULL){
		printf("Erro na abertura do arquivo dentro da Funcao: quantidade_buscas_fila'\n ");
		exit(0);	
	}

	int ch = getc(arquivo);
	int CUR_MAX = 4096;
	char *buffer = (char*) malloc(sizeof(char) * CUR_MAX); // allocate buffer.
	int count = 0; 
	int length = 0;
	char *info;

	while ((ch != EOF) ) {	
		if(count ==CUR_MAX) { // time to expand ?
		  CUR_MAX *= 2; // expand to double the current size of anything similar.
		  count = 0;
		  buffer = realloc(buffer, CUR_MAX); // re allocate memory.
		}
		ch = getc(arquivo); // read from stream.
		buffer[length] = ch; // stuff in buffer.
		
		info = strstr(buffer, "TEXTO");
		if(info != NULL){

			return -1;
		}
		info = strstr(buffer, comp_arquitetura);
		if(info !=NULL){

			fgets(info, 100, arquivo);
				fclose(arquivo);
			return atoi(info);
		}
		length++;
		count++;
	}

	fclose(arquivo);
	return 0;
}

void estrutura_arquitetura2(int *ld, int *sd, int *add, int *addi, int *sub, int *subi, int *div, int *divi, int *mult, int *multi, int *li, int *beq, int *bne, int *bge, int *bg, int *ble, int *bl, int *jump, int *nop, int *exit){	
	*ld = infoArquitetura("ld");
	*li = infoArquitetura("li");
	*sd = infoArquitetura("sd");
	*add = infoArquitetura("add");
	*addi = infoArquitetura("add.i");
	*sub = infoArquitetura("sub");
	*subi = infoArquitetura("sub.i");
	*div = infoArquitetura("div");
	*divi = infoArquitetura("div.i"); 
	*mult = infoArquitetura("mult");
	*multi = infoArquitetura("mult.i");
	*beq = infoArquitetura("beq");
	*bne = infoArquitetura("bne");
	*bge = infoArquitetura("bge");
	*bg = infoArquitetura("bg");
	*ble = infoArquitetura("ble");
	*bl = infoArquitetura("bl");
	*jump = infoArquitetura("jump");
	*nop = infoArquitetura("nop");	
	*exit = infoArquitetura("exit");

}


	
void estrutura_arquitetura(int *somador, int *multiplicador, int *busca, int *janela, int *porta_registradores,
			      int *bufferLoad, int *iMemoria, int *bufferStore, int *memoria, 
			      int *emissao, int *calc_endereco){	
	*somador = defArquitetura2("Somador");
	*multiplicador = defArquitetura2("Multiplicador");
	*busca = defArquitetura2("Busca");
	*janela = defArquitetura2("Janela");
	*porta_registradores = defArquitetura2("Porta banco de registradores");
	*bufferLoad = defArquitetura2("Buffer load");
	*iMemoria = defArquitetura2("Imemora");
	*bufferStore = defArquitetura2("Buffer store"); 
	*memoria = defArquitetura2("Memoria");
	*emissao = defArquitetura2("Emissão");
	*calc_endereco = defArquitetura2("Cálculo de endereço");	
}
