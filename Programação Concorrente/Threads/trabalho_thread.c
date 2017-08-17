#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <time.h>
#include <semaphore.h>

#define NUM_FILA 5
#define NUM_CLIENTES 75

pthread_t caixas [NUM_FILA];
int filas_vazia = NUM_FILA;
int clientes=NUM_CLIENTES;
int clientes_atendidos = 0;
int filas [NUM_FILA];




void NoCaixa(void *thread_n) {
	while(1){
		while(filas[(int)thread_n]>0){
			usleep(rand() % 1000000);


		}
	}
	
}



int main(int argc, char *argv[]){	
	int t;

	

	/*
	criando as threads das filas
	 */	
	for(t=0; t<NUM_FILA; t++){
		filas[t] = 0; // inicializando a fila 't'.
		if (pthread_create(&caixas[t], NULL, NoCaixa, (void*)t))
			printf("Erro na criação da Thread da Fila: %d\n", t);;
	}

	pthread_exit(NULL);

}