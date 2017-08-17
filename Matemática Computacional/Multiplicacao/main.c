#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    int resto[12];
    int vector[30];
    int pos[20];
    int num;
    int i, k, p;

    printf("Informe o valor de X: ");
    scanf("%d", &num);

    i = 0;
    int a;
    printf("VT: \n");
    while(num>0){
        resto[i] = num%2; // É guardado no vetor na posição i = 0 o bit menos significativo
        num = num/2;
        printf("%d", resto[i]);
        i++;
    }

    printf("Valor do 'i': %d\n", i);
    p = 0;

    for(k=0; k++; k<= i){
        if (resto[k] == 0)
           a = k;
           //pos[p] = pow(2,k);
    }

    printf("\n\n RESULTADO: \n");
    printf("A: %d\n", a);
    printf("%d", pos[0]);
    printf("%d", pos[1]);
    /*
    for(i=0; i++; i<=2){
        printf("%d", pos[0]);
    }
*/
    getchar();


}
