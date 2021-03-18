#ifndef Estrutura_
#define Estrutura_

int quantidade_ciclosInInstrucao(char *inst);
int defArquitetura(char *comp_arquitetura);
void estrutura_ciclo_instrucao(int *add, int *sub, int *div, int *mul);
int defArquitetura2(char *comp_arquitetura);
int defArquitetura3(char *comp_arquitetura);
void estrutura_arquitetura2(int *ld, int *sd, int *add, int *addi, int *sub, int *subi, int *div, int *divi, int *mult, int *multi, int *li, int *beq, int *bne, int *bge, int *bg, int *ble, int *bl, int *jump, int *nop, int *exit);
void estrutura_arquitetura(int *somador, int *multiplicador, int *busca, int *janela, int *porta_registradores,
			      int *bufferLoad, int *iMemoria, int *bufferStore, int *memoria, 
			      int *emissao, int *calc_endereco);



#endif
