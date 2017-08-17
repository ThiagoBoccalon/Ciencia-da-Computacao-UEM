#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <time.h>
#include <semaphore.h>

#define NUM_FILA 5
#define NUM_CLIENTES 10

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex2 = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex3 = PTHREAD_MUTEX_INITIALIZER;

pthread_t chCliente;
pthread_t caixas [NUM_FILA];
int filas_vazia = NUM_FILA;
int clientes=NUM_CLIENTES;
int filas [NUM_FILA];
int cliente_fila = 0;

sem_t empty;
sem_t full;

void PrintFila(){
	for(int k=0;k<NUM_FILA;k++)
		printf("Caixa %d -> %d\n",k, filas[k]);
}

void NoCaixa(float delay1) {
	if(delay1<0.001) 
		return; // pode ser ajustado e/ou evita-se valores negativos.

	float inst1=0;
	float inst2=0;

	inst1 = (float)clock()/(float)CLOCKS_PER_SEC;

   	while(inst2-inst1<delay1) 
   		inst2 = (float)clock()/(float)CLOCKS_PER_SEC;

   	return;
}

void ChegadaCliente(void *thread_id){	
	int j = 0;
	int caixa;
	int menorFila;

	while(clientes>0){
		menorFila = NUM_CLIENTES;
		NoCaixa(1.5);

		pthread_mutex_lock(&mutex);			
		for(int i=0;i<NUM_FILA; i++){			
			if(filas[i]==0){
				caixa=i;
				break;	
			}
			else if(filas[i]<menorFila){
				menorFila = filas[i];
				caixa = i;
			}						
		}

		pthread_mutex_unlock(&mutex);

		pthread_mutex_lock(&mutex);
		if(filas[caixa]==0){
			// uso de semaforo ***
			filas_vazia--;
			// 
		}
		pthread_mutex_unlock(&mutex);

		
		pthread_mutex_lock(&mutex);
		filas[caixa]++;		
		cliente_fila++;
		clientes--;
		printf("INSERIRU CLIENTE NA FILA DO CAIXA: %d \n", caixa);
		printf("FALTAM %d CLIENTES P/ CHEGAR.\n", clientes);
		PrintFila();
		pthread_mutex_unlock(&mutex);
	}
}


void AtendeCliente(){
	int maiorFila;
	int transfere;

	while(clientes>0){
		NoCaixa(8);
		maiorFila = 0;

		if(filas[(int)thread_id]==0){
			for(int i = 0; i<NUM_FILA;i++){
				if(filas[i]>maiorFila){
					maiorFila = filas[i];
					transfere = i;
				}
			}
						
			filas[transfere]--;
			printf("O Caixa %d atendeu, o cliente da Fila %d e sobrou %d clientes na fila.\n"  (int)thread_id), transfere, filas[(int)thread_id]);
			printf("Falta ser atendido %d clientes.\n\n", clientes);
		}

		else if(filas[(int)thread_id]==1){
				filas_vazia++;
				filas[(int)thread_id]--;
				cliente_fila--;
				printf("O Caixa %d atendeu, e sobrou %d clientes na fila.", (int)thread_id), filas[(int)thread_id]);
				printf("Falta ser atendido %d clientes.\n\n", clientes);
			}

			else{ // caso em que clientes > 1
				filas[(int)thread_id]--;
				cliente_fila--;
				printf("O Caixa %d atendeu, e sobrou %d clientes na fila.", (int)thread_id), filas[(int)thread_id]);
				printf("Falta ser atendido %d clientes.\n\n", clientes);
			}
	}
}

int main(int argc, char *argv[]){
	// PONTO DE PARA SERÁ QUANDO CLIENTES == 0 && CLIENTES_FILA == 0;


	for(int i=0; i<NUM_FILA;i++){
		filas[i] = 0;	
	}

	srand( (unsigned)time(NULL) );

	sem_init(&empty, 0, NUM_FILA);
	sem_init(&full, 0, 0);

	pthread_create(&chCliente, NULL, ChegadaCliente, (void*)NUM_CLIENTES);
	/*
	criando as threads das filas
	 */	
	
	/*
	for(int t=0; t<NUM_FILA; t++){
		filas[t] = 0; // inicializando a fila 't'.
		if (pthread_create(&caixas[t], NULL, NoCaixa, (void*)t))
			printf("Erro na criação da Thread da Fila: %d\n", t);;
	}
	*/
	pthread_exit(NULL);	
	printf("Acabou threads\n");

	// pthread_exit(NULL);
	return 0;
}