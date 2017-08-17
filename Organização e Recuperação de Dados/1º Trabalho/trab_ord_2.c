#include <stdio.h>
#include <string.h>
#define DELIM "|"
#define DELIM2 "#"



int idCaptura = 0;

int LED = -1;

int digitos(int valor){
    int cont = 0;
    while (valor > 0){
        cont=cont+1;
        valor = valor / 10;
    }
    return cont;
}
void importacao(){
    FILE* arquivo;
    FILE* arquivo2;
    char x = 0, y;
    int tamanhoReg = 0, byteoff = 0;
    char nomeArq[50], opcao;

    fflush(stdin);
    printf("\nDigite o nome do arquivo:");
    gets(nomeArq);
    strcat(nomeArq,".txt");

    if ((arquivo = fopen(nomeArq,"r")) == NULL) {
       printf("Nenhum registro encontrado!\n");
       getch();
       return;
    }

    printf("\nSelecione uma opcao:\n");
    printf("1 - Apagar dados existentes \n2 - Manter dados existentes \n3 - Voltar\n");


    do {
        opcao = getch();

        switch(opcao) {

            case '1':
                arquivo2 = fopen("especies.txt","w");
                LED = -1;
                break;

            case '2':
                arquivo2 = fopen("especies.txt","r+");
                 while ((y = fgetc(arquivo2)) != EOF){
                    byteoff=byteoff+1;
                 }
                break;

     case '3':

                return;
        }
    } while (opcao < '1' || opcao > '3');


    while (x != EOF) {
        while ((x = fgetc(arquivo)) != '#') {
            tamanhoReg=tamanhoReg+1;
        }
        tamanhoReg=tamanhoReg+1;
        fprintf(arquivo2, "%d", (tamanhoReg+digitos(idCaptura)+2));
        fputs(DELIM, arquivo2);
        byteoff += (tamanhoReg+2) + digitos(tamanhoReg+2);
        fseek(arquivo, (-(tamanhoReg+4)), SEEK_CUR);
        while ((x = fgetc(arquivo)) != '#') {
            if (x == '\n')
                fputs(DELIM, arquivo2);
            else
                fputc(x, arquivo2);
        }
        x = fgetc(arquivo);
        tamanhoReg = 0;

    }

    printf("\nDados Importados!");


    fclose(arquivo);
    fclose(arquivo2);
}

int inserir(){

char id[5];
char nomec[50];
char nomep[50];
char descricao[200];
char buffer[400];
short tam_reg;
FILE*arq;



  	arq = fopen("especies.txt","r");

  	 if(arq == NULL){

  	 	arq = fopen("especies.txt","w");
  	 }

        arq = fopen("especies.txt","a");

      fflush(stdin);
        printf("\nID\n>>>");
        gets(id);
        fflush(stdin);
        printf("\nNome cientifico\n>>>");
        gets(nomec);
        fflush(stdin);
        printf("\nNome popular\n>>>");
        gets(nomep);
        fflush(stdin);
        printf("\nDescricao da especie\n>>>");
        gets(descricao);
        fflush(stdin);

        buffer[0] = '\0';

        strcat(buffer, DELIM);
        strcat(buffer, id);
        strcat(buffer, DELIM);
        strcat(buffer, nomec);
        strcat(buffer, DELIM);
        strcat(buffer, nomep);
        strcat(buffer, DELIM);
        strcat(buffer, descricao);
        tam_reg = strlen(buffer);
        fwrite(buffer,1,tam_reg, arq);


   fclose(arq);

}

int main(){

int opcao=0;

    do {
printf("\n\nMENU\n\n");
printf("1 - Importar Dados\n");
printf("2 - Criar indice\n");
printf("3 - Listagem do indice\n");
printf("4 - Insercao de especies\n");
printf("5 - Busca por especies\n");
printf("6 - Remocao de especies\n");
printf("7 - Sair\n");
printf("Digite a opcao:\n");
        scanf("%d",&opcao);

        switch(opcao) {

            case 1:importacao();break;

            case 4: inserir();break;
        }
    } while (opcao!=7);


}
