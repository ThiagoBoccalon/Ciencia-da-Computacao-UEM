#include <stdio.h>
#include <string.h>
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>

pthread_t tid[2];
int ret1, ret2;

void* doSomeThing(void *arg) {
    int thread_id = (int) arg;
    int i = 0;
    for (i = 0; i < (0xFFFFFFFF); i++);

    if (thread_id == 0) {
        printf("\nProcessamento da primeira thread terminado.");
		ret1 = 100;
        pthread_exit(&ret1);
    } else {
        printf("\nProcessamento da segunda thread terminado.");
		ret2 = 200;
        pthread_exit(&ret2);
    }
}

int main() {
    int i, rc, *ptr[2];
    for (i = 0; i < 2; i++) {
        rc = pthread_create(&tid[i], NULL, doSomeThing, (void*)i);
        if (rc != 0) {
            printf("\nErro %s na cria��o da thread.", strerror(rc));
        } else {
            printf("\nThread %d criada com sucesso!", i);
        }
    }
    pthread_join(tid[0], (void**)&(ptr[0]));
    pthread_join(tid[1], (void**)&(ptr[1]));

    printf("\nO valor retornado pela primeira thread eh [%d].", *ptr[0]);
    printf("\nO valor retornado pela segundo thread eh [%d].", *ptr[1]);

    return 0;
}