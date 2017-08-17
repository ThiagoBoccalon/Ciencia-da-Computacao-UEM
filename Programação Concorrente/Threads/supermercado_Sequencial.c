#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>


#define NUM_FILA 1
#define NUM_CLIENTES 100

int numfila = NUM_FILA;
int totcli = NUM_CLIENTES;
int filas [NUM_FILA];

int cliespera;
int cliente_fila = 0;

void PrintFilaCaixa(){
	for(int i=0;i<numfila;i++){
		printf("%d \n", filas[i]);
	}
}

void NoCaixa (float delay1) {
	if (delay1<0.001) return; // pode ser ajustado e/ou evita-se valores negativos.

	float inst1=0;
	float inst2=0;

	inst1 = (float)clock()/(float)CLOCKS_PER_SEC;

   	while (inst2-inst1<delay1) inst2 = (float)clock()/(float)CLOCKS_PER_SEC;

   	return;
}

void ChegadaCliente(){
	int menorfila;
	int caixaMenor;

	menorfila = 100;
	if(totcli > 0){ //se tiver cliente em espera para entrar na fila
		for(int i=0; i<numfila; i++){
			if(filas[i] <= menorfila){
				menorfila = filas[i];
				caixaMenor = i;
			}
		}
		
		filas[caixaMenor]++;
		printf("INSERIRU CLIENTE NA FILA DO CAIXA: %d \n", caixaMenor);			
		cliente_fila++;
	}	
}


void AtendenteCliente(){
	int caixa;
	int maiorfila;
	int caixa_maiorfila;

	caixa = (rand() % numfila);
	maiorfila = filas[0];
	caixa_maiorfila = 0;

	if(filas[caixa] == 0){		
		//Deve buscar algum cliente que esteja na maior fila
		for(int i=0; i<numfila; i++){
			if(filas[i] > maiorfila){
				maiorfila = filas[i];
				caixa_maiorfila = i;
			}
		}
		
		filas[caixa_maiorfila]--;
		NoCaixa (5.5);
		printf("O CAIXA %d ATENDEU CLIENTE DO CAIXA %d \n", caixa, caixa_maiorfila);			
		cliente_fila--;
	}
	else{
		printf("O CAIXA %d ATENDEU\n", caixa);	
		NoCaixa (5.5);
		filas[caixa]--;
		cliente_fila--;		
	}
}



int main(){
	int acao;
	int vez;
	/* INICIALIZAÇÃO DAS FILAS */
	for(int i=0; i<numfila; i++){
		filas[i] = 0;	
	}

	for(int i=0; i<numfila; i++){
		printf("** %d\n", filas[i]);	
	}

	while(totcli>0){
		acao = (rand() % 2);
		printf("acao: %d\n", acao);
		/* 	PRODUTOR */
		if(acao == 0){			
			totcli--;	
			ChegadaCliente(); // chamado do produtor
			printf("Total de Clinte p/ chegar =  %d \n\n", totcli);
			PrintFilaCaixa();
			getchar();
		}

		/*CONSUMIDOR*/
		else if(cliente_fila > 0){
			AtendenteCliente(); // chamada do consumidor
			printf("Total de Cliente p/ Atender =  %d \n\n", cliente_fila);
			PrintFilaCaixa();
			getchar();
		}
	}

	return 0;
}
