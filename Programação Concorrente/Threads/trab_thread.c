#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <time.h>
#include <semaphore.h>

#define NUM_FILA 5
#define NUM_CLIENTES 20

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex2 = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex3 = PTHREAD_MUTEX_INITIALIZER;

pthread_t chCliente;
pthread_t caixas [NUM_FILA];
int filas_vazia = NUM_FILA;
int clientes=NUM_CLIENTES;
sem_t filas [NUM_FILA];
int cliente_fila = 0;

sem_t empty;
sem_t full;

void PrintFila(){
	int k;
    for(k=0;k<NUM_FILA;k++)
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

void *ChegadaCliente(void *thread_id){	
	int j;
	int caixa;
	int menorFila;
	int i;
	while(clientes>0){
		menorFila = NUM_CLIENTES;  // 
		NoCaixa(1);

		// 
		pthread_mutex_lock(&mutex);			
		for(i=0;i<NUM_FILA; i++){			
			if(filas[i]==0){
				caixa=i;
				break;	
			}
			else if(filas[i]<menorFila){
				menorFila = filas[i];
				caixa = i;
			}						
		}
		
		if(filas[caixa]==0){
			// uso de semaforo ***
			filas_vazia--;
			// 
		}

		cliente_fila++;
		clientes--;
		pthread_mutex_unlock(&mutex);

		sem_post(&filas[caixa]++);
		

		printf("INSERIRU CLIENTE NA FILA DO CAIXA: %d \n", caixa);
		printf("FALTAM %d CLIENTES P/ CHEGAR.\n", clientes);
		PrintFila();
	
		
	}
}


void *AtendeCliente(void *thread_id){
	printf("funcao atende..\n");
	int maiorFila;
	int transfere;
	int i;

	while(clientes>0){
		NoCaixa(3);
		maiorFila = 0;

		pthread_mutex_lock(&mutex2);
		if(filas[(int)thread_id]==0){
			for(i = 0; i<NUM_FILA;i++){
				if(filas[i]>maiorFila){
					maiorFila = filas[i];
					transfere = i;
				}
			}			 
			pthread_mutex_unlock(&mutex2);	
			sem_wait(&filas[transfere]--);

			printf("O Caixa %d atendeu, o cliente da Fila %d e sobrou %d clientes na fila.\n",  (int)thread_id, transfere, filas[(int)thread_id]);
			printf("Falta ser atendido %d clientes.\n\n", clientes);
		}


		else if(filas[(int)thread_id]==1){
				pthread_mutex_lock(&mutex2);				
				filas_vazia++;				
				cliente_fila--;				
				pthread_mutex_unlock(&mutex2);
				sem_wait(&filas[(int)thread_id]--);

				printf("O Caixa %d atendeu, e sobrou %d clientes na fila.", (int)thread_id, filas[(int)thread_id]);
				printf("Falta ser atendido %d clientes.\n\n", clientes);
			}

			else{ // caso em que clientes > 1
				pthread_mutex_lock(&mutex2);
				cliente_fila--;
				pthread_mutex_unlock(&mutex2);
				sem_wait(&filas[(int)thread_id]--);

				printf("O Caixa %d atendeu, e sobrou %d clientes na fila.", (int)thread_id, filas[(int)thread_id]);
				printf("Falta ser atendido %d clientes.\n\n", clientes);
			}
	}
}

int main(int argc, char *argv[]){
	// PONTO DE PARA SERÁ QUANDO CLIENTES == 0 && CLIENTES_FILA == 0;

	int i,t;
	for(i=0; i<NUM_FILA;i++){
		filas[i] = 0;	
	}

	srand( (unsigned)time(NULL) );

	sem_init(&filas, 0, NUM_FILA);	

	pthread_create(&chCliente, NULL, ChegadaCliente, (void*)NUM_CLIENTES);
	
	
	for(t=0; t<NUM_FILA; t++){
		filas[t] = 0; // inicializando a fila 't'.
		if (pthread_create(&caixas[t], NULL, AtendeCliente, (void*)t))
			printf("Erro na criação da Thread da Fila: %d\n", t);;
	}
	
	pthread_exit(NULL);	
	printf("Acabou threads\n");

	// pthread_exit(NULL);
	return 0;
}