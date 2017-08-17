#include <pthread.h> 
#include <stdlib.h> 
#include <stdio.h> 
#include <time.h> 
#include <semaphore.h> 


#define NUM_CAIXA 3
#define TOTAL_CLI 10
#define CAP_CAIXA 10

int filas_vazias = NUM_CAIXA;
int totcli;
int i, t;
int ncli = 0;
int tem_cliente = 0;
int tamfila[NUM_CAIXA];
int fila_espera = 0;
int clientes = TOTAL_CLI;



pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex3 = PTHREAD_MUTEX_INITIALIZER;

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


void *Clientes(void *thread_id){
	int menorfila;
	int caixa;

	while(ncli < TOTAL_CLI){
		menorfila = TOTAL_CLI;
		caixa = NUM_CAIXA + 1;

		if(fila_espera == 0){
			//colocar o cliente na menor fila
			pthread_mutex_lock(&mutex);
			for(i=0; i<NUM_CAIXA; i++){
				if(tamfila[i] < menorfila){
					menorfila = tamfila[i];
					caixa = i;
				}
			}	
			pthread_mutex_unlock(&mutex);

			//sem_wait(&empty);
			pthread_mutex_lock(&mutex);
			if(tamfila[caixa] == CAP_CAIXA){
				printf("CAIXA %d esta com a capacidade maxima \n", caixa);
				fila_espera++;
			}
			else{
				tamfila[caixa]++;
				printf("INSERIRU CLIENTE NA FILA DO CAIXA: %d - %d\n", caixa, ncli);
				tem_cliente++;		
				ncli++;
			}
			pthread_mutex_unlock(&mutex);
			//sem_post(&full);
		}
		else{
			//colocar o cliente na menor fila
			pthread_mutex_lock(&mutex);
			for(i=0; i<NUM_CAIXA; i++){
				if(tamfila[i] < menorfila){
					menorfila = tamfila[i];
					caixa = i;
				}
			}
			pthread_mutex_unlock(&mutex);

			if(tamfila[caixa] < CAP_CAIXA){
				pthread_mutex_lock(&mutex);
				tamfila[caixa]++;
				fila_espera--;
				printf("INSERIRU CLIENTE NA FILA DO CAIXA: %d -> Lista_Espera %d %d\n", caixa, fila_espera, ncli);
				tem_cliente++;
				ncli++;
				pthread_mutex_unlock(&mutex);
		
			}
			else{
				printf("Todos os caixas estao cheios! fila_espera=%d\n", fila_espera);
				//ncli = TOTAL_CLI;
			}
		}
	}
}

int *Atende(void *thread_id){
	int caixa;
	int maiorfila;
	int caixa_maiorfila;

	while (clientes > 0){
		if(tem_cliente > 0){
			caixa = (int)thread_id;

			printf("\nclientes = %d tem_cliente=%d caixa=%d\n", clientes, tem_cliente, caixa);
			
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

				//sem_wait(&full);
				pthread_mutex_lock(&mutex3);
				printf("O CAIXA %d ATENDEU CLIENTE DO CAIXA %d \n", caixa, caixa_maiorfila);			
				NoCaixa (2);
				tamfila[caixa_maiorfila] = tamfila[caixa_maiorfila] - 1;		
				tem_cliente--;
				pthread_mutex_unlock(&mutex3);
				//sem_post(&empty);
			}
			else{
				//sem_wait(&full);
				pthread_mutex_lock(&mutex3);
				printf("O CAIXA %d ATENDEU\n", caixa);	
				NoCaixa (2.5);
				tamfila[caixa] = tamfila[caixa] - 1;
				tem_cliente--;		
				pthread_mutex_unlock(&mutex3);
				//sem_post(&empty);
			}
		}
	}
}



int main(){
	pthread_t atendentes [NUM_CAIXA]; //inicializados em 0
	pthread_t gclientes;

	srand(time(NULL));
	for(i=0; i<NUM_CAIXA; i++){
		tamfila[i] = 0;	
	}

	printf("\nTAMANHO DA FILA INICIAL: ");

	for(i=0; i<NUM_CAIXA; i++){
		printf("%d ", tamfila[i]); 	
	}
	printf("\n\n");

	/*while(ncli < TOTAL_CLI || tem_cliente != 0){
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
	}*/

	sem_init(&empty, 0, NUM_CAIXA);
	sem_init(&full, 0, 0);

	pthread_create(&gclientes, NULL, Clientes, (void*)TOTAL_CLI);

	for (t = 0; t<NUM_CAIXA; t++){ 
		if (pthread_create(&atendentes[t], NULL, Atende, (void*)t)) { 
			printf("Erro criação fila %d\n", t); 
		}
	}
	printf("Acabou a thread\n");
	
	pthread_join(gclientes, NULL);
	printf("join gclientes\n");

	for (t = 0; t < NUM_CAIXA; t++){
		pthread_join(atendentes[t], NULL);
	}
	printf("join atendentes\n");
    	

	printf("\nnumero de cliente atendidos = %d \nclientes para serem atendidos = %d \n", ncli, tem_cliente);
	return 0;
}
