#include <stdio.h>
#include <mpi.h>
#include <string.h>
#include <time.h>

#define TOTAL 10 //criterio de parada

MPI_Status status;

int size, rank;

void Espera(float delay1) {
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

void Distribui_Cliente() {
	int i, chegados = 1;
	int caixa, menorFila, maisum;
	int tam_fila[size];

	//Incializa tam_fila[]
	memset(tam_fila, 0 ,size*sizeof(int));

	while(chegados <= TOTAL){
		menorFila = TOTAL;
		caixa = size;		
		//Buscar o caixa com a menor fila
		for(i=0; i<size; i++){
			MPI_Sendrecv( &tam_fila[rank], 1, MPI_INT, i, 0, 
					&tam_fila[i], 1, MPI_INT, i, MPI_ANY_TAG,
					MPI_COMM_WORLD, &status);
			if(i != rank && tam_fila[i] < menorFila){
				menorFila = tam_fila[i];
				caixa = i;
			}
		}

		//Esta enviando para o caixa que ele vai receber um cliente na fila
		//Envia para os n processo o valor do cliente_total
		for(i=1; i<size; i++){			
			MPI_Send( &chegados, 1, MPI_INT, i, 1, MPI_COMM_WORLD);

			if(i == caixa){
				printf("[%d] - inseriu um cliente\n",rank);
				maisum = 1;
				MPI_Send(&maisum, 1, MPI_INT, i, 0, MPI_COMM_WORLD);
			}
			else{
				maisum = 0;
				MPI_Send(&maisum, 1, MPI_INT, i, 0, MPI_COMM_WORLD);
			}
		}
		chegados++;
	}
}

void Atende_Cliente(int rank) {
	int i, maisum, menosum, total_atendidos = 0, chegados = 0, aux = 0;
	int cond_parada = 0, caixa, maiorFila, totfila = 0;
	int tam_fila[size];
	int num_atendidos[size];

	//Inicializa tam_fila[]
	for(i=1; i<size; i++){
		tam_fila[i] = 0;
		num_atendidos[i] = 0;
	}
	
	while(total_atendidos < TOTAL){
		if(chegados < TOTAL){		
			//Evia o tam_fila pra o Distribuidor
			for(i=0; i<size; i++){
				MPI_Sendrecv( &tam_fila[rank], 1, MPI_INT, i, 0, 
						&tam_fila[i], 1, MPI_INT, i, MPI_ANY_TAG,
						MPI_COMM_WORLD, &status);
			}	
			

			//Recebe o valor do CHEGADOS
			MPI_Recv(&chegados, 1, MPI_INT, 0, 1, MPI_COMM_WORLD, &status);
			
			if(chegados > 0){				
				//Recebe o valor do MAISUM	
				MPI_Recv(&maisum, 1, MPI_INT, 0, 0, MPI_COMM_WORLD, &status);
				if(maisum == 1){
					tam_fila[rank]++;
				}

				totfila = 0;
				for(i=0; i<size; i++){
					totfila = totfila + tam_fila[i];
				}
			}
		}
		else{
			//Comunicao entre os atendentes para saber o TAM_FILA
			totfila = 0;
			for(i=1; i<size; i++){
				MPI_Sendrecv( &tam_fila[rank], 1, MPI_INT, i, 0, 
						&tam_fila[i], 1, MPI_INT, i, MPI_ANY_TAG,
						MPI_COMM_WORLD, &status);
				totfila = totfila + tam_fila[i];
			}
		}
		
		//Atendimento dos clientes, mas para isso precisa ser cliente na fila
		if(totfila < 2 && chegados == 1){
			for(i=1; i<size; i++){
				menosum = 0;
				MPI_Send(&menosum, 1, MPI_INT, i, 3, MPI_COMM_WORLD);
				MPI_Send(&num_atendidos[rank], 1, MPI_INT, i, 2, MPI_COMM_WORLD);
			}
			Espera(2);			
		}
		else{
			if(tam_fila[rank] > 0){
				printf("[%d] atendeu um cliente da sua fila\n", rank);
				tam_fila[rank]--;
				num_atendidos[rank]++;
				for(i=1; i<size; i++){
					menosum = 0;
					MPI_Send(&menosum, 1, MPI_INT, i, 3, MPI_COMM_WORLD);
					MPI_Send(&num_atendidos[rank], 1, MPI_INT, i, 2, MPI_COMM_WORLD);
				}
				Espera(3);
			}
			else{
				maiorFila = 0;
				caixa = 0;				
				//Busca o caixa com a maior fila
				for(i=1; i<size; i++){
					if(tam_fila[i] > maiorFila){				
						maiorFila = tam_fila[i];
						caixa = i;
					}
				}	
				//Avisa o cliente CAIXA que atendeu um cliente dele
				for(i=1; i<size; i++){
					if(i == caixa){
						menosum = 1;
						MPI_Send(&menosum, 1, MPI_INT, i, 3, MPI_COMM_WORLD);
						printf("[%d] atendeu um cliente do caixa %d\n", rank, caixa);
					}
					else{
						menosum = 0;
						MPI_Send(&menosum, 1, MPI_INT, i, 3, MPI_COMM_WORLD);
					}
				}
				num_atendidos[rank]++;
				for(i=1; i<size; i++){
					MPI_Send(&num_atendidos[rank], 1, MPI_INT, i, 2, MPI_COMM_WORLD);
				}	
				Espera(5);		
			}
			

			//Recebe a informacao se algum atendente atendeu o seu cliente
			for(i=1; i<size; i++){
				MPI_Recv(&menosum, 1, MPI_INT, MPI_ANY_SOURCE, 3, MPI_COMM_WORLD, &status);
				if(menosum == 1){
					tam_fila[rank]--;
				}
			}			
			
			//Atualiza o valor do TOTAL_ATENDIDOS
			total_atendidos = 0;
			for(i=1; i<size; i++){
				MPI_Recv(&num_atendidos[i], 1, MPI_INT, i, 2, MPI_COMM_WORLD, &status);
				total_atendidos = total_atendidos + num_atendidos[i];
			}			
		}		
	}
}


int main(int argc, char *argv[]){
	MPI_Init(&argc, &argv);	

	MPI_Comm_size(MPI_COMM_WORLD, &size);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);

	if (rank == 0) {
		Distribui_Cliente();
	} else {
		Atende_Cliente(rank);
	}

	MPI_Finalize();
	return 0;
}
