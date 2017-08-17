#include <pthread.h> 
#include <stdlib.h> 
#include <stdio.h> 
#include <time.h> 
#include <semaphore.h> 



#define NUM_FILA 5
#define NUM_CLIENTES 50

pthread_t atendentes [NUM_FILA]; //inicializados em 0
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex2 = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex3 = PTHREAD_MUTEX_INITIALIZER;
int filas_vazias=NUM_FILA;
pthread_t gclientes;
int clientes=NUM_CLIENTES;
int clientes_atendidos=0;
int filas [NUM_FILA]; //inicializados em 0
sem_t empty;
sem_t full;




void *gerenciar_clientes(void *thread_id){
	int y=0;
	//printf("clientes %d\n", clientes); 
	int aux=0;
	int x=0;
	int j;
	while((clientes_atendidos!=NUM_CLIENTES)){	
		if(clientes>0){
			usleep(rand() % 100);

			x= rand() % 2;
			if(x>=clientes){
				//printf("Finalizou clientes\n"); 
				x=clientes;
			}

			while(x!=0){
				pthread_mutex_lock(&mutex);
				aux=filas[0];
				y=0;
				for(j=1; j<NUM_FILA; j++){
					if(filas[j]==0){
						y=j;
						break;
					}
					if(filas[j]<=aux){
						aux=filas[j];
						y=j;
					}
				}
				pthread_mutex_unlock(&mutex);
		//printf("Menor fila %d\n", y); 

				
				pthread_mutex_lock(&mutex);
				if(filas[y]==0){
					sem_wait(&empty);
					filas_vazias--;
					sem_post(&full);
					//printf("PAssou por aqui %d vezes\n", aux);
				}
				pthread_mutex_unlock(&mutex);
				

				pthread_mutex_lock(&mutex);
				filas[y]++;
				pthread_mutex_unlock(&mutex);
				//pthread_mutex_lock(&mutex2);
				clientes--;
				//pthread_mutex_lock(&mutex2);
				x--;
			}
		}
			//printf("Gerenciador: Cliente a serem atendidos %d!\n", clientes); 
	}

}





int *atendimento_cliente(void *thread_id){
	int aux=0;
	int j=0;
	int y=0;
	while(1){	
		while((clientes>0) ||(filas[(int)thread_id]>0)){	
			
				usleep(rand() % 1000000);
				
				//tempo de atender o cliente
				
				pthread_mutex_lock(&mutex);
				if(filas[(int)thread_id]==1){
					sem_wait(&full);
					filas_vazias++;
					sem_post(&empty);
					
				}
				pthread_mutex_unlock(&mutex);
				

				pthread_mutex_lock(&mutex);
				filas[(int)thread_id]--;
				pthread_mutex_unlock(&mutex);
				pthread_mutex_lock(&mutex3);
				clientes_atendidos++;
				pthread_mutex_unlock(&mutex3);
				printf("Fila %d, %d cliente na fila-%d clientes atendidos, e tem %d filas vazias\n", (int)thread_id, filas[(int)thread_id], clientes_atendidos, filas_vazias); 
			
			
		}	
		if(clientes_atendidos==NUM_CLIENTES){
			break;
		}

		aux=0;
		y=NUM_FILA;
		pthread_mutex_lock(&mutex);
		for(j=0; j<NUM_FILA; j++){
			if((((int)thread_id)!=j)&&(filas[j]>1)){
				if((filas[j]>=aux)){
					aux=filas[j];
					y=j;
					//printf("Passei por aqui e o y tem valor de %d \n",  y);
				}
			}
		}
		pthread_mutex_unlock(&mutex);

		if(y!=NUM_FILA){
			pthread_mutex_lock(&mutex);
			filas[y]--;
			filas[(int)thread_id]=1;
			//printf("CLiente da fila %d foi para a fila %d\n", y, (int)thread_id);
			sem_wait(&empty);
			filas_vazias--;
			sem_post(&full);
			pthread_mutex_unlock(&mutex);
		}else{
			break;
		}
		
		//////////////////////////



	}
	//printf("Acabou o processamento da thread %d\n", (int)thread_id);
	pthread_exit(NULL);
}



/////////////////////////////////////////////////////////////////////////////////////////////////////////////

int main(int argc, char *argv[]) { 
	int t; 
	srand( (unsigned)time(NULL) );
	sem_init(&empty, 0, NUM_FILA);
	sem_init(&full, 0, 0); 
	pthread_create(&gclientes, NULL, gerenciar_clientes, (void*)NUM_CLIENTES);
	for (t = 0; t<NUM_FILA; t++){ 
		filas[t]=0;
		if (pthread_create(&atendentes[t], NULL, atendimento_cliente, (void*)t)) { 
			printf("Erro criação fila %d\n", t); 
		}
	} 


	pthread_exit(NULL);
}
