#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define SIZE_MEMORY 256
#define MAX 200

int memoria[SIZE_MEMORY];
int PC = 0;

void load_Memory(){
    InicializaMemoria(&memoria, SIZE_MEMORY);
    getchar();
    PrintMemoria(&memoria, SIZE_MEMORY, PC);
    getchar();
    loadAssembly(&memoria);
    PrintMemoria();
    getchar();

}

void InicializaMemoria(int *m, int t){
	int i = 0;
	for(i; i<t; i++){
		m[i] = 0;
	}
}

void PrintMemoria(int *memoria, int TAM_M, int PC){
	printf("=================MEMÓRIA==================\n");
	int i;
	for (i = PC; i < TAM_M; i++)
	{
		printf("%d|", memoria[i]);
	}
	printf("\n\n");
}


void loadAssembly(int *memoria){

    FILE *assemblyFile;
    char buffer[MAX];
    char token[7], ra[2], rb[2], rc[2];
    int i = 0;

    if((assemblyFile = fopen("Assembly2.txt", "r")) == NULL){
		printf("Erro na abertura do arquivo dentro Assembly\n ");
		exit(0);
	}else{
        printf("Passou aki 1\n");
	}

	int opcao;
	while(!feof(assemblyFile)){
		fgets(buffer, MAX, assemblyFile);
		printf("BUFFER ", buffer);
		getchar();

		sscanf(buffer, "%s %s %s %s", token, ra, rb, rc);
		printf("%s %s %s %s\n\n", token, ra, rb, rc);
		getchar();
		/*
			opcao = Opcodes(&token);
			opcao = ComparaTypeOpcpde(opcao);
			printf("Opcode--> ", opcao);
			if(opcao==1){
				//Opcode R R
				memoria[i] = (Opcodes(token) << 26);
			 	memoria[i] = (memoria[i] | (Resgistradores(ra) << 21));
			 	memoria[i] = (memoria[i] | (Resgistradores(ra) << 16));
			}

			else if(opcao==2)
			{
				//Opcode R R R
				memory[i] = (Opcodes(token) << 26);
			 	memory[i] = (memory[i] | (Resgistradores(ra) << 21));
			 	memory[i] = (memory[i] | (Resgistradores(rb) << 16));
			 	memory[i] = (memory[i] | (Resgistradores(rc) << 11));
			}
			else if(opcao==3)
			{
				//Opcode R I ou L
				memory[i] = (Opcodes(token) << 26);
			 	memory[i] = (memory[i] | (Resgistradores(ra) << 21));
			 	memory[i] = (memory[i] | (Resgistradores(rb) << 11));
			}
			else if(opcao==4)
			{
				//Opcode R R I ou L
				memory[i] = (Opcodes(token) << 26);
			 	memory[i] = (memory[i] | (Resgistradores(ra) << 21));
			 	memory[i] = (memory[i] | (Resgistradores(rb) << 16));
			 	memory[i] = (memory[i] | (Resgistradores(rc) << 16));
			}
			else if(opcao==5)
			{
				//Opcode L
				memory[i] = (Opcodes(token) << 26);
				memory[i] = (memory[i] | (Resgistradores(ra) << 6));
			}
			i++;
			*/
	}

	fclose(assemblyFile);

    }

