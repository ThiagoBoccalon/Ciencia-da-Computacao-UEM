#include <stdio.h>
#include <stdlib.h>

int main()
{
    //exercicio_09();
    //exercicio_10();
    //exercicio_074();
    return 0;
}


void exercicio_09(){
    double valor = 0;

    printf("Escreva um valor: ");
    scanf("%d", &valor);

    if(valor == 0){
        printf("O valor digitado eh igual a Zero.");
    }
    else{
        printf("O valor digitado eh diferente de Zero.");
    }
}


void exercicio_10(){

    double VALOR_MACAS_ATE_UMA_DUZIA = 1.3;
    double VALOR_MACAS_ACIMA_DE_UMA_DUZIA  = 1;

    int quantidade_macas_compradas = 0;
    double valor_total_das_macas = 0;


    printf("Informe a quantidade de macas compradas: ");
    scanf("%d", &quantidade_macas_compradas);



    if(quantidade_macas_compradas > 0){
        if(quantidade_macas_compradas < 12){
            valor_total_das_macas = quantidade_macas_compradas * VALOR_MACAS_ATE_UMA_DUZIA;
        }
        else{
            valor_total_das_macas = quantidade_macas_compradas * VALOR_MACAS_ACIMA_DE_UMA_DUZIA;
        }

        printf("Valor total: %.2f", valor_total_das_macas);
    }
    else
    {
        printf("Error... valor invalido.");
    }


}



