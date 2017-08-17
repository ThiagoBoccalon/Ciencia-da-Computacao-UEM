#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <time.h>
#include <semaphore.h>

#define NUM_FILA 5
#define NUM_CLIENTES 50


pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex2 = PTHREAD_MUTEX_INITIALIZER;

pthread_t chCliente[NUM_FILA];
pthread_t caixas[NUM_FILA];

int filas_vazia = NUM_FILA;
int cliente_fila = 0;
int conf = 0;

sem_t filas[NUM_FILA];
sem_t clientes;

void NoCaixa(float delay1) {
	float inst1=0;
	float inst2=0;

	if(delay1<0.001){
		return; // pode ser ajustado e/ou evita-se valores negativos.
	}

	inst1 = (float)clock()/(float)CLOCKS_PER_SEC;

   	while(inst2-inst1<delay1){
		inst2 = (float)clock()/(float)CLOCKS_PER_SEC;
	}
   	return;
}

void *ChegadaCliente(void *thread_id){	
	int j, i;
	int caixa, value = 0, qnt, menorFila;
	int aux = 0;
	
	while(conf == 0){
		menorFila = NUM_CLIENTES; //Inicializa variaveis para encontrar a menos fila
		caixa = NUM_FILA + 1;

		pthread_mutex_lock(&mutex);			
		for(i=0; i<NUM_FILA; i++){ //Busca o caixa com a menor fila
			sem_getvalue(&filas[i], &value);			
			if(value == 0){
				menorFila = value;
				caixa=i;
				break;	
			}
			else if(value < menorFila){
				menorFila = value;
				caixa = i;
			}						
		}
		pthread_mutex_unlock(&mutex);

		pthread_mutex_lock(&mutex); //insere o cliente no caixa
		cliente_fila++;
		sem_wait(&clientes);
		sem_post(&filas[caixa]);

		sem_getvalue(&clientes, &aux);
		if(aux == 0) {
			conf = 1;
		}
			
		printf("INSERIRU CLIENTE NO CAIXA: %d. FALTAM %d CLIENTES PARA CHEGAR.\n\n", caixa, aux);
		pthread_mutex_unlock(&mutex);				
		NoCaixa(2);		
	}	
}


void *AtendeCliente(void *thread_id){	
	int maiorFila, transfere, caixa;
	int i, value, qnt;
	int aux = 0;
	caixa = (int)thread_id;

	sem_getvalue(&clientes, &aux);
	while(cliente_fila > 0 || aux > 0){
		NoCaixa(3);

		maiorFila = 0;
		
                sem_getvalue(&filas[caixa], &value);
		if(value == 0){ //Fila do caixa esta vazia
			pthread_mutex_lock(&mutex2);
			for(i = 0; i<NUM_FILA;i++){ //Busca o caixa com a maior fila
                        	sem_getvalue(&filas[i], &qnt);
				if(qnt > maiorFila){
					maiorFila = qnt;
					transfere = i;
				}
			}	
			if(maiorFila != 0){
				cliente_fila--;
				sem_wait(&filas[transfere]);
				printf("O Caixa %d atendeu o cliente da fila %d. Falta %d clientes\n\n", caixa, transfere, aux);
			}
			else{
				printf("Todos os caixas estao vazios!!\n");
			}
			pthread_mutex_unlock(&mutex2);
		}      
                else{ //Mais de um cliente na fila
			pthread_mutex_lock(&mutex2);
			if(value == 1){ //Apenas um cliente na fila do caixa
				filas_vazia++;
			}	
			cliente_fila--;
			sem_wait(&filas[caixa]);
			printf("O Caixa %d atendeu e sobrou %d clientes em sua fila. Falta %d clientes.\n\n",caixa, value-1, aux);
			pthread_mutex_unlock(&mutex2);						
		}	
		sem_getvalue(&clientes, &aux);		
	}
}

int main(int argc, char *argv[]){
	int i,t;

	srand( (unsigned)time(NULL) );	
	for(t=0; t<NUM_FILA; t++){		
		sem_init(&filas[t], 0, 0);	
	}

	sem_init(&clientes, 0, NUM_CLIENTES);

	for(i=0; i<NUM_FILA; i++){		
		if(pthread_create(&chCliente[i], NULL, ChegadaCliente, (void*)i)){
			printf("Erro na criação da Thread da Fila: %d\n", t);
		}
	}	

	for(t=0; t<NUM_FILA; t++){		
		if(pthread_create(&caixas[t], NULL, AtendeCliente, (void*)t)){
			printf("Erro na criacao da Thread da Fila: %d\n", t);
		}
	}
	
	pthread_exit(NULL);	
	return 0;
}
