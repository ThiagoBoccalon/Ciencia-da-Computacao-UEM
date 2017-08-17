#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>


#define NUM_CAIXA 3
#define TOTAL_CLI 10
#define CAP_CAIXA 1

int totcli;
int i;
int ncli = 0;
int acao;
int tem_cliente = 0;
int tamfila[NUM_CAIXA];
int fila_espera = 0;

void NoCaixa (float delay1) {

	if (delay1<0.001) return; // pode ser ajustado e/ou evita-se valores negativos.

	float inst1=0;
	float inst2=0;

	inst1 = (float)clock()/(float)CLOCKS_PER_SEC;

   	while (inst2-inst1<delay1) inst2 = (float)clock()/(float)CLOCKS_PER_SEC;

   	return;
}
void Chama_ListaEspera(int *tamfila){
	int menorfila;
	int caixa;

	//colocar o cliente na menor fila
	menorfila = TOTAL_CLI;
	caixa = NUM_CAIXA + 1;

	for(i=0; i<NUM_CAIXA; i++){
		if(tamfila[i] < menorfila){
			menorfila = tamfila[i];
			caixa = i;
		}
	}

	if(tamfila[caixa] < CAP_CAIXA){
		tamfila[caixa]++;
		fila_espera--;
		printf("INSERIRU CLIENTE NA FILA DO CAIXA: %d -> Lista_Espera %d \n", caixa, fila_espera);
		tem_cliente++;
		
	}
	else{
		printf("Todos os caixas estao cheios! fila_espera=%d\n", fila_espera);
	}

}


void Cliente(int *tamfila){
	int menorfila;
	int caixa;

	//colocar o cliente na menor fila
	menorfila = TOTAL_CLI;
	caixa = NUM_CAIXA + 1;

	for(i=0; i<NUM_CAIXA; i++){
		if(tamfila[i] < menorfila){
			menorfila = tamfila[i];
			caixa = i;
		}
	}	

	if(tamfila[caixa] == CAP_CAIXA){
		printf("CAIXA %d esta com a capacidade maxima \n", caixa);
		fila_espera++;
	}
	else{
		tamfila[caixa]++;
		printf("INSERIRU CLIENTE NA FILA DO CAIXA: %d \n", caixa);
		tem_cliente++;		
	}
}

void Atendente(int *tamfila){
	int caixa;
	int maiorfila;
	int caixa_maiorfila;

	caixa = (rand() % NUM_CAIXA);

	maiorfila = tamfila[0];
	caixa_maiorfila = 0;

	if(tamfila[caixa] == 0){
		//Deve buscar algum cliente que esteja na maior fila
		for(i=0; i<NUM_CAIXA; i++){
			if(tamfila[i] > maiorfila){
				maiorfila = tamfila[i];
				caixa_maiorfila = i;
			}
		}
		printf("O CAIXA %d ATENDEU CLIENTE DO CAIXA %d \n", caixa, caixa_maiorfila);			
		NoCaixa (2);
		tamfila[caixa_maiorfila] = tamfila[caixa_maiorfila] - 1;		
		tem_cliente--;
	}
	else{
		printf("O CAIXA %d ATENDEU\n", caixa);	
		NoCaixa (2.5);
		tamfila[caixa] = tamfila[caixa] - 1;
		tem_cliente--;		
	}
}



int main(){
	srand(time(NULL));
	for(i=0; i<NUM_CAIXA; i++){
		tamfila[i] = 0;	
	}

	printf("\nTAMANHO DA FILA INICIAL: ");

	for(i=0; i<NUM_CAIXA; i++){
		printf("%d ", tamfila[i]); 	
	}
	printf("\n\n");

	while(ncli < TOTAL_CLI || tem_cliente != 0){
		acao = (rand() % 2);

		if(acao == 0 && ncli < TOTAL_CLI){
			if(fila_espera == 0){
				ncli++;
				Cliente(tamfila);
				printf("Clinte tem_cliente =  %d \n\n", tem_cliente);
			}
			else{
				Chama_ListaEspera(tamfila);
			}
		}
		else if(tem_cliente > 0){
			Atendente(tamfila);
			printf("Atendete tem_cliente =  %d \n\n", tem_cliente);
		}
	}

	printf("\nnumero de cliente atendidos = %d \nclientes para serem atendidos = %d \n", ncli, tem_cliente);
	return 0;
}
