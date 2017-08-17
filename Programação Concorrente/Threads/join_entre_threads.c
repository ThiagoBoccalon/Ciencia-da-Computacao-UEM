#include <pthread.h>
#include <stdlib.h>

#define NUM_THREADS 5

void *PrintHello(void *arg){
    int tid = (int)arg;
    printf("Ola! Sou a thread #%d!\n", tid);
    pthread_exit(NULL);
}

int main(int argc, char *argv[]) {
    pthread_t threads[NUM_THREADS];
    int rc, t;
    pthread_attr_t attr;
    pthread_attr_init(&attr);
    pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);
    // printf("\nNumero maximo de threads: %d\n", PTHREAD_THREADS_MAX);
    
    for(t = 0; t < NUM_THREADS; t++){
        printf("main: criando thread %d\n", t);
        rc = pthread_create(&threads[t], &attr, PrintHello, (void *)t);
        if (rc){
            printf("Erro %d na criação.\n", rc);
            exit(-1);
        }
    }
    for(t = 0; t < NUM_THREADS; t++){
        pthread_join(threads[t], NULL);
    }
}