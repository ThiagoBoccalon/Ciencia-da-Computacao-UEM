#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#define QTD_NUM 500
#define MAXKEYS 4

typedef struct{
    short KEYCOUNT;
    int Key[MAXKEYS];
    short filhas[MAXKEYS + 1];
} Page;



static int cmpfunc (const void * a, const void * b)
{
   return ( *(int*)a - *(int*)b );
}



void indice_primario(){
    struct X{
        int chave[QTD_NUM];
        int rrn[QTD_NUM];
    };

    struct X ind_p;

    FILE *copia, *origem, *indicep;
    char buffer[150];
    char caracter_chave[7], c[5], rrn[3];
    int i, k, t, j, aux_chave, aux_rrn;

    if((copia = fopen("bancodados.txt","r"))==NULL){
        printf("Erro na Abertura do Arquivo '1' Copia :( ");
        exit(1);
    }

    if((origem = fopen("dados.txt", "r"))==NULL){
        printf("Erro na Abertura do Arquivo Original :( ");
        exit(1);
    }

    if((indicep = fopen("indiceprimario.txt", "w+"))==NULL){
    	printf("Erro na Abertura do Arquivo Original :(");
    	exit(1);
    }

    ind_p.rrn[0] = 0;
    i = 1;

    while(!feof(copia)){
        fgets(buffer, 150, copia);
        ind_p.rrn[i] = ((ind_p.rrn[i-1])+(strlen(buffer)));
        i++;
    }
    k = 0;

    while(!feof(origem)){
            fgets(buffer, 150, origem);
            t = 0;
            while(t < 6){
            	caracter_chave[t] = buffer[t];

				t++;
            }
            caracter_chave[6] = '\0';
			ind_p.chave[k] = atoi(caracter_chave);
    //        printf("%i\n", ind_p.chave[k]);
			k++;
    }

 // ORDENAÇÃO DAS CHAVES
 qsort(ind_p.chave, k, sizeof(int), cmpfunc);


  i = 0;

	while(i < k){
		sprintf(c, "%i", ind_p.chave[i]);
		fputs(c, indicep);
		fputs(" : ", indicep);
		sprintf(rrn, "%i", ind_p.rrn[i]);
		fputs(rrn, indicep);
		fputs("\n", indicep);
		i++;
	}



    printf("ORDENACAO DAS CHAVES FEITA COM SUCESSO!!!\n\n");
	system("pause");
    system("cls");


    fclose(copia);
    fclose(origem);
}

void inserir(){

	FILE *copia;
	char numero_inscricao[5];
	char nome[150];
	char curso [60];
	char nota [4];
	char Linha[150];
	char caracter;
	char c[1];
	int numero_bytes;

//	printf("	ERRO");

	if ((copia = fopen("bancodados.txt", "a+")) == NULL){
		printf("ERRO NA ABERTURA DE BANCO DADOS");
		exit(1);
	}


	printf("Insira o numero da inscricao (6 digitos): ");
    gets(numero_inscricao);
    printf("\n");
    printf("Insira o nome do candidato: ");
    gets(nome);
    printf("\n");
    printf("Insira o curso do candidato: ");
    gets(curso);
    printf("\n");
    printf("Insira a nota do candidato: ");
    gets(nota);
    printf("\n");

	numero_bytes = (strlen(numero_inscricao) + strlen(nome) + strlen(curso) + strlen(nota));
	numero_bytes = (numero_bytes + 5);
	sprintf(c, "%i", numero_bytes);




	fputs("\n", copia);
	fputs(c, copia);
	fputs(numero_inscricao, copia);
    fputs("|", copia);
    fputs(nome, copia);
    fputs("|", copia);
    fputs(curso, copia);
    fputs("|", copia);
    fputs(nota, copia);
    fputs("\0", copia);


    printf("INSERCAO FEITA COM SUCESSO!!!\n");
    system("pause");
    system("cls");

    fclose(copia);
}

/*
void indice_secundario(){
    if((copia = fopen("dados.txt","r"))==NULL){

    }
}
*/

void importar()
{
    FILE *original1, *copia, *original2;
    char caracter, c[1], Linha[150];
    int vetor_bytes[QTD_NUM];

    int i,k;

    if((original1 = fopen("dados.txt", "r"))==NULL){
        printf("Erro na Abertura do Arquivo '1' Original :( ");
        exit(1);
    }

    if((copia = fopen("bancodados.txt", "w"))==NULL){
        printf("Erro na abertura do Arquivo Copia");
        exit(1);
    }

    if((original2 = fopen("dados.txt", "r"))==NULL){
        printf("Erro na abertura '2' do Arquivo Original :( ");
        exit(1);
    }

    i = 0;

    while(!feof(original2)){
       fgets(Linha, 150, original2);
       vetor_bytes[i] = strlen(Linha);
       i++;
       }
    fclose(original2);
    k = 1;
    sprintf(c, "%i", vetor_bytes[0]);
    fputs(c, copia);

    while(!feof(original1)){

        caracter = fgetc(original1);

        if (caracter == '\t'){
            fputs("|",copia);
        }


        if ((caracter != '\t') && (caracter != '\0')){
            fputc(caracter, copia);
        }

        if (caracter == '\n'){
            sprintf(c, "%i", vetor_bytes[k]);
            fputs(c, copia);
            k++;
        }

    	if (caracter == '\0'){
    		fputs(c, copia);
    	}
    }


    printf("O ARQUIVO IMPORTADO COM SUCESSO:\n\n");
    system("pause");
    system("cls");

    fclose(original1);
    fclose(copia);
}

void sair(){
    exit;
}


void chamamenu(){

   int opcao = 0;

while(opcao!=5){
    printf("============MENU==============\n\n");
    printf("1 - IMPORTAR ARQUIVOS\n");
    printf("2 -  CRIAR LISTA PRIMARIA\n");
    printf("3 -  INSERIR\n");
    printf("4 - REMOVER\n");
    printf("5 - INSERIR NA ARVORE B\n");
    printf("6 - SAIR\n");
    printf("DIGITE SUA OPCAO: ");
    scanf("%d", &opcao);
    printf("\n");
    fflush(stdin);

switch(opcao)
{
case 1:
        importar();
    	break;

case 2:
        indice_primario();
      break;

case 3:
	inserir();
	break;

case 4:
	//remover();
	break;

case 5:
	inserirnaarvoreB();
	break;

case 6:
    sair();
    break;

    }
}

}

