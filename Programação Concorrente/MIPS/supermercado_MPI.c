
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <mpi.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>

#define NUM_FILA 5
#define NUM_CLIENTES 50
#define GERENTE NUM_FILA
#define ENVIO_RECEBIMENTO 23513

#define ON NUM_FILA*2
#define OFF ON*2

int clientes=NUM_CLIENTES;
int my_id, numprocs;

int um=1;
int zero=0;
int menos_um=-1;
int on=ON;
int off=OFF;
    

void gerenciar_clientes(){
	int y=0;
	//printf("clientes %d\n", clientes); 
	int ok=0;
	int aux=0;
	int x=0;
	int j,i;
	int filas[NUM_FILA];
	int ir_filas[NUM_FILA];
	int filas_vazias=0;

	while(1){
			for(j=0; j<NUM_FILA; j++){
				ir_filas[j]=0;
			}
			filas_vazias=0;
			usleep(rand() % 1000);
		
			//recebe as filas

			for(j=0; j<NUM_FILA; j++){
				
				if((filas[j]>0)){
					
					MPI_Recv(&filas[j], 1, MPI_INT,j, ENVIO_RECEBIMENTO, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
					 
				}
				if((clientes==0)&&(filas[j]<=0)){
					filas_vazias++;
					//printf("Passou %d \n", filas_vazias);
				}
				
				if((clientes==0)&&(ok!=2)){
					ok=1;
					if((filas[j]==0)){
						ok=2;
					}
				}
			}
			printf("Há %d filas vazias\n", filas_vazias);
			
			if(ok==1){
				
				for(j=0; j<NUM_FILA; j++){
					MPI_Send(&zero, 1, MPI_INT, j, ENVIO_RECEBIMENTO, MPI_COMM_WORLD);
				}
				continue;

			}else{
				if(ok==2){
					
					if(filas_vazias==NUM_FILA){
						
						for(j=0; j<NUM_FILA; j++){
							
							MPI_Send(&off, 1, MPI_INT, j, ENVIO_RECEBIMENTO, MPI_COMM_WORLD);
							
						}
						
						break;
					}else{
						for(j=0; j<NUM_FILA; j++){
							MPI_Send(&zero, 1, MPI_INT, j, ENVIO_RECEBIMENTO, MPI_COMM_WORLD);
						}
					}
					i=0;
					while(i<NUM_FILA){
						if(filas[i]==0){

							aux=0;
							y=NUM_FILA;
							for(j=0; j<NUM_FILA; j++){
								if((i!=j)&&(filas[j]>1)){
									if((filas[j]>=aux)){
										aux=filas[j];
										y=j;
									}
								}
							}
							if(y!=NUM_FILA){
								ir_filas[y]--;

								ir_filas[i]++;

								printf("CLiente da fila %d foi para a fila %d\n", y, i);
							}
						}

						i++;
					}

					ok=0;	
					
				}
			}

		
			
			if(clientes>0){
				x= rand() % ON;
				if(x>=clientes){
					printf("Finalizou clientes------------------------------------------------------------\n"); 
					x=clientes;
				}

				printf("Chegou %d clientes\n", x); 
				while(x!=0){
					aux=filas[0];
					y=0;
					for(j=1; j<NUM_FILA; j++){// defino a menor fila
						if((filas[j]+ir_filas[j])==0){
							y=j;
							break;
						}
						if((filas[j]+ir_filas[j])<=aux){
							aux=(filas[j]+ir_filas[j]);
							y=j;
						}
					}
					clientes--;
					ir_filas[y]++;
					//printf("Um cliente foi para a fila %d\n", y);
					x--;
				}	
			}
			//printf("Foram atendidos %d clientes\n", NUM_CLIENTES-clientes);
			//enviar o tanto de ir filas
			for(i=0; i<NUM_FILA; i++){			
				if((filas[i]==0)&&(ir_filas[i]>0)){
					//printf("Fila %d está vazia, foi enviado mensagem para acordar\n", i); 	
					MPI_Send(&on, 1, MPI_INT, i, ENVIO_RECEBIMENTO, MPI_COMM_WORLD);
				}
				if((filas[i]+ir_filas[i])>0){
					//printf("%d clientes foram para a Fila %d\n", ir_filas[i], i); 
					filas[i]+=ir_filas[i];
					MPI_Send(&ir_filas[i], 1, MPI_INT, i, ENVIO_RECEBIMENTO, MPI_COMM_WORLD);
					
				}
				
			}
			
	}


	
	

}





int atendimento_cliente(){
	int id=0;
	int j=0;
	int y=0;
	int fila=0;
	int chegou=0;
	int terminou=0;
	
	MPI_Send(&fila, 1, MPI_INT, GERENTE, ENVIO_RECEBIMENTO, MPI_COMM_WORLD);
	MPI_Comm_rank(MPI_COMM_WORLD,&id);
	while(!terminou){
		
		do{	
				//tempo de atender o cliente
				//recebe clintes chegando
				//printf("Esperando quantos clientes vão chegar na fila %d\n", id);
				MPI_Recv(&chegou, 1, MPI_INT, GERENTE, ENVIO_RECEBIMENTO, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

				if(chegou==OFF){
					terminou=1;
					break;
				}
				fila+=chegou;

				
				j=rand()%(NUM_FILA/2);
				while((j>0)&&(fila>0)){		
						printf("Foi atendido um cliente na fila %d, agora há %d clientes nesta fila\n", id, fila);
						srand( (unsigned)time(NULL) );
						y=rand() % 1000000;
						usleep(y);
						//printf("COmeçou o atendimento na fila %d, espera de %d milisegundos\n", id, y);
						//printf("Terminou o atendimento na fila %d\n", id);
						fila--;
					
					j--;
				}
				//envia clientes na fila

				MPI_Send(&fila, 1, MPI_INT, GERENTE, ENVIO_RECEBIMENTO, MPI_COMM_WORLD);
		}while(fila>0);	
		printf("Esperando saber se a fila %d continua ou para\n", id);
		while(chegou!=ON){
			
			if(chegou==OFF){
					terminou=1;
					break;
			}
			MPI_Recv(&chegou, 1, MPI_INT, GERENTE, ENVIO_RECEBIMENTO, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		}
		
	}	
	printf("FIla %d parou\n", id);
}


int main(int argc,char *argv[]){
	srand( (unsigned)time(NULL) );
	MPI_Init(&argc,&argv);
	MPI_Comm_size(MPI_COMM_WORLD,&numprocs);
	MPI_Comm_rank(MPI_COMM_WORLD,&my_id);
	 
	if (my_id == GERENTE) {// gerenciar cliente
		gerenciar_clientes();	 
	 
	}else{//atendentes
		atendimento_cliente();
			
	}
		
	MPI_Finalize();
}

