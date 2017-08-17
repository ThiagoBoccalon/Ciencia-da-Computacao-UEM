#include <pthread.h> 
#include <stdlib.h> 
#include <stdio.h> 
#include <time.h> 
#include <semaphore.h> 

#define NUM_CAIXA 3
#define TOTAL_CLI 9

pthread_t atendentes [NUM_CAIXA]; //inicializados em 0
pthread_t gclientes;

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex3 = PTHREAD_MUTEX_INITIALIZER;

int filas_vazias = NUM_CAIXA;
int clientes = TOTAL_CLI;
int i;
int ncli = 0;
int tem_cliente = 0;
int tamfila[NUM_CAIXA];

sem_t empty;
sem_t full;

void NoCaixa (float delay1) {

	if (delay1<0.001) return; // pode ser ajustado e/ou evita-se valores negativos.

	float inst1=0;
	float inst2=0;

	inst1 = (float)clock()/(float)CLOCKS_PER_SEC;

   	while (inst2-inst1<delay1) inst2 = (float)clock()/(float)CLOCKS_PER_SEC;

   	return;
}


void *Clientes(void *thread_id){
	int menorfila;
	int caixa;

	while(ncli < TOTAL_CLI){		
		menorfila = TOTAL_CLI;
		caixa = NUM_CAIXA + 1;

		//Busca a menor fila
		pthread_mutex_lock(&mutex);
		for(i=0; i<NUM_CAIXA; i++){
			if(tamfila[i] < menorfila){
				menorfila = tamfila[i];
				caixa = i;
			}
		}
		pthread_mutex_unlock(&mutex);

		pthread_mutex_lock(&mutex);
		//NoCaixa (1.1);
		tamfila[caixa]++;
		tem_cliente++;
		ncli++; 
		printf("INSERIRU CLIENTE NA FILA DO CAIXA: %d \n", caixa);
		pthread_mutex_unlock(&mutex);
	}
}



int *Atende(void *thread_id){
	int caixa;
	int maiorfila;
	int caixa_maiorfila;

	while (clientes > 0){
		if(tem_cliente > 0){
			caixa = (int)thread_id;

			maiorfila = tamfila[0];
			caixa_maiorfila = 0;

			if(tamfila[caixa] == 0){
				//Deve buscar algum cliente que esteja na maior fila
				pthread_mutex_lock(&mutex);
				for(i=0; i<NUM_CAIXA; i++){
					if(tamfila[i] > maiorfila && tamfila[i] > 0 ){
						maiorfila = tamfila[i];
						caixa_maiorfila = i;
					}
				}
				pthread_mutex_unlock(&mutex);

				NoCaixa (2); //Tempo de Atendimento

				pthread_mutex_lock(&mutex3);
				printf("O CAIXA %d ATENDEU CLIENTE DO CAIXA %d\n\n", caixa, caixa_maiorfila);			
				tamfila[caixa_maiorfila]--;		
				tem_cliente--;
				clientes--;
				pthread_mutex_unlock(&mutex3);
			}
			else{
				NoCaixa (2);
				pthread_mutex_lock(&mutex);
				printf("O CAIXA %d ATENDEU - %d\n\n", caixa);	
				tamfila[caixa]--;
				tem_cliente--;
				clientes--;
				pthread_mutex_unlock(&mutex);		
			}
		}
	}
	printf("Acabou o processamento da thread %d\n", (int)thread_id);
	pthread_exit(NULL);	
}



int main(int argc, char *argv[]) { 
	int t; 
	srand( (unsigned)time(NULL) );

	sem_init(&empty, 0, NUM_CAIXA);
	sem_init(&full, 0, 0); 

	for(i=0; i<NUM_CAIXA; i++){
		tamfila[i] = 0;	
	}

	pthread_create(&gclientes, NULL, Clientes, (void*)TOTAL_CLI);
	for (t = 0; t<NUM_CAIXA; t++){ 
		if (pthread_create(&atendentes[t], NULL, Atende, (void*)t)) { 
			printf("Erro criação fila %d\n", t); 
		}
	}
	printf("Acabou a thread\n");
	pthread_exit(NULL);		

	return 0;
}
