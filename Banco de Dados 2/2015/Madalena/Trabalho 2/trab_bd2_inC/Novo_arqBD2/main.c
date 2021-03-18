#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX 300

int main()
{
    FILE *arqOriginal;
    FILE *arqCopia;
    char LinhaAtual[MAX];
    int tamLinhaAtual;
    int i;
    int qtdVirgula = 0;
    int cmp = 59;
    char *pverif1;
    char *pverif2 = "000";



    if((arqOriginal = fopen("COPIARESULTADOEXAME.txt","r")) == NULL){
        printf("Erro na abertura de arquivo Original");
        exit(0);
    }
    if((arqCopia = fopen("COPIARESULTADOEXAME2.txt","w")) == NULL){
        printf("Erro Abertura arquivo Copia");
        exit(0);
    }

    fgets(LinhaAtual,MAX,arqOriginal);
    fputs(LinhaAtual, arqCopia);



while(!feof(arqOriginal)){
    fgets(LinhaAtual,MAX,arqOriginal);
    pverif1 = strtok(LinhaAtual,";");
    if(*pverif1 != *pverif2){
        fputs(LinhaAtual,arqCopia);
    }

    pverif2 = pverif1;





}
    return 0;
}
