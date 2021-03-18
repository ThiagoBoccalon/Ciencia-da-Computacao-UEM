#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void load_HD()
{
    FILE *programAssembly;

    if((programAssembly = fopen("AssemblyFile.dat","r")) == NULL)
    {
        printf("Erro ma abertura do arquivo Assembly\n");
        exit(0);
    }
}
