#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// estrutura que contém vertice de origgem / destino / peso
struct Vertices_Aresta
{
    int org, dst, peso;	
};

// Estrutura do grafo não orientado
struct Grafo
{
    // V-> Numeros de vertices, E-> Numero de arestas
    int V, E;
    struct Vertices_Aresta* vertices_aresta;
};




// Criar estrutura do grafo com quantidade de vertices e arestas
struct Grafo* gerarGrafo(int V, int E)
{
    struct Grafo* grafo = (struct Grafo*) malloc( sizeof(struct Grafo) );
    grafo->V = V;
    grafo->E = E;

    grafo->vertices_aresta = (struct Vertices_Aresta*) malloc( grafo->E * sizeof( struct Vertices_Aresta) );

    return grafo;
}

// Estrutura para união de conjuntos
struct subconj
{
    int princ; // principal
    int clas;  // classificação
};

int find(struct subconj subconjs[], int i) // encontrando um conjunto de elementos
{
    // encontrar raiz e fazer raiz como pai de i
    if (subconjs[i].princ != i)
        subconjs[i].princ = find(subconjs, subconjs[i].princ);

    return subconjs[i].princ;
}

//Realizando união de conjuntos
void Union(struct subconj subconjs[], int x, int y)
{
    // xraiz e y raiz

    int xr = find(subconjs, x); 
    int yr = find(subconjs, y);

    // Escolher menor árvore de 
    // (Unindo conforme a classificação)
    if (subconjs[xr].clas < subconjs[yr].clas)
        subconjs[xr].princ = yr;
    else if (subconjs[xr].clas > subconjs[yr].clas)
        subconjs[yr].princ = xr;

    else
    {
        subconjs[yr].princ = xr;
        subconjs[xr].clas++;
    }
}

// Comparando arestas de conforme o peso
// usando qsort() para ordena

int Comparacao(const void* a, const void* b)
{
    struct Vertices_Aresta* a1 = (struct Vertices_Aresta*)a;
    struct Vertices_Aresta* b1 = (struct Vertices_Aresta*)b;
    return a1->peso > b1->peso;
}

// Algoritmo de Kruskal
int KruskalMST(struct Grafo* grafo)
{
    int V = grafo->V;
    struct Vertices_Aresta result[V];  // Armazenando o resultado da Arvore geradora
    int e = 0;  
    int i = 0;  
    int v;
    int pesoMST = 0; 
    // Step 1:  Sort all the edges in non-decreasing order of their weight
    // If we are not allowed to change the given graph, we can create a copy of
    // array of edges
    qsort(grafo->vertices_aresta, grafo->E, sizeof(grafo->vertices_aresta[0]), Comparacao);

    // alocar memoria para criar subconjuntos dos vertices
    struct subconj *subconjs = 
(struct subconj*) malloc( V * sizeof(struct subconj) );

    // Criar subconjuntos dos vertices elemento a elemento
    for (v = 0; v < V; ++v)	
    {
        subconjs[v].princ = v;
        subconjs[v].clas = 0;
    }

    // numeros de arestas igual a e < V - 1
    while (e < V - 1)
    {
        // Escolhendo a menor aresta
       
        struct Vertices_Aresta next_vertices_aresta = grafo->vertices_aresta[i++];

        int x = find(subconjs, next_vertices_aresta.org);
        int y = find(subconjs, next_vertices_aresta.dst);

        // Incluir aresta se não formar ciclo
        // caso contrário descartar a aresta
        if (x != y)
        {
            result[e++] = next_vertices_aresta;
            Union(subconjs, x, y);
        }        
    }

    for (i = 0; i < e; ++i){
    	pesoMST = pesoMST + result[i].peso;
    }
    free(subconjs);
    return pesoMST;
}


int main()
{
      int E;
      int V;	  
      int i, X, Y, Z;
      int cont;         // contador de iterações
      int tPeso;
      int total; 	
    
    // entrada de quantidade de vertices e arestas        
    scanf("%d %d", &V , &E);
    // teste 1: m>= 1 e n <= 200000

    if(((V < 1) ||  (E < V-1) || (V > 200000))){
        printf("Teste 1: Não satisfaz as conndicoes para os valores de vertices e arestas ==> V:%d  E:%d\n", V, E);
        return 0;           
    }
    cont = 0;
    while (V != 0 && E != 0) {
        tPeso = 0;
	    struct Grafo* grafo = gerarGrafo(V, E);
	    
	    for(i=0; i<E; i++){	
		scanf("%d %d %d", &X, &Y, &Z);

        if(((X < 0) || (Y >= V) || (X == Y))){
            printf("Teste 2: Não satisfaz a entrada padrao para as N triplas ==> X:%d  Y:%d  V:%d\n", X, Y, V);
            return 0;
        }

	    	grafo->vertices_aresta[i].org = X;
	    	grafo->vertices_aresta[i].dst = Y;
	    	grafo->vertices_aresta[i].peso = Z ;
		    tPeso = tPeso + Z;	             
	    }		    
	    total = tPeso - KruskalMST(grafo) ;
	    printf("%d\n", total);

        if((V != 0) && (E !=0) && (i < E)){
             printf("Teste 3: O programa terminou antes de realizar as 'n' interações ou com valores de entradas dif de zero\n");
             return 0;
        }
        scanf("%d %d", &V , &E);        
        free(grafo->vertices_aresta); 
        free(grafo);

        
    }
    return 0;
}
